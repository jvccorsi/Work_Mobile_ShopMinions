const express = require('express');
const cors = require("cors");
const app = express();

app.use(express.json());
app.use(cors());


app.get('/', function(req, res){res.send('Teste server')});

/*
  Servidor propriamente dito
*/
 
const login = [];

const endpoint = "/pedido";

app.get(endpoint, function(req, res){
    res.send(login.filter(Boolean));
});

app.get(`${endpoint}/:id`, function(req, res){
    const id = req.params.id;
    const note = login[id];

    if (!note){
        res.send("{}");
    } else {
        res.send(note);
    }   
});
//INSERT
app.post(endpoint, (req, res) => {
    const note = {
        id : login.length,
        email : req.body["email"],
        senha : req.body["senha"]
    };      
    login.push(note);
    res.send("1");
    
    notify();
});
//UPDATE
app.put(`${endpoint}/:id`, (req, res) =>{
    const id = parseInt(req.params.id);
    const note = {
        id : id,
        email : req.body["email"],
        senha : req.body["senha"]
    };

    login[id] = note;
    res.send("1");

    notify();
});
//DELETE:
app.delete(`${endpoint}/:id`, (req, res) => {
    const id = req.params.id;
    delete login[id];
    res.send("1");

    // Notificar todos
    notify();
});
/*
  Criar um socket para notificar usuários das mudanças.
*/

const server = require('http').createServer(app);
const io = require('socket.io')(server);

// Comunicação
const INVALIDATE = 'invalidate';

function notify(){
    io.sockets.emit(INVALIDATE, 1);
}

server.listen(process.env.PORT || 3000);



