const express = require('express');
const cors = require("cors");
const app = express();

app.use(express.json());
app.use(cors());


app.get('/', function(req, res){res.send('Teste server')});

/*
  Servidor propriamente dito
*/
 
const pedido = [
    {id:0, nome_completo:"João Victor Corsi", email:"jvccorsi@hotmail.com",
    telefone: 19994753282, id_minion:02, quantidade:20 },
    {id:1, nome_completo:"João Victor Corsi", email:"jvccorsi@hotmail.com",
    telefone: 19994753282, id_minion:02, quantidade:20 }
];
 
const endpoint = "/pedido";

app.get(endpoint, function(req, res){
    res.send(pedido.filter(Boolean));
});

//GET
app.get(`${endpoint}/:id`, function(req, res){
    const id = req.params.id;
    const pedidos = pedido[id];

    if (!pedidos){
        res.send("{}");
    } else {
        res.send(pedidos);
    }   
});
//INSERT
app.post(endpoint, (req, res) => {
   // console.log('insert concluído')
    const pedidos = {
        id : pedido.length,
        nome_completo: req.body['nome_completo'],
        email: req.body['email'],
        telefone: req.body['telefone'],
        id_minion : req.body["id_minion"],
        quantidade : req.body["quantidade"]
    };      
    pedido.push(pedidos);
    res.send("1");
   notify();
});

app.put(`${endpoint}/:id`, (req, res) =>{
    const id = parseInt(req.params.id);
    const pedidos = {
        id : id,
        nome_completo: req.body['nome_completo'],
        email: req.body['email'],
        telefone: req.body['telefone'],
        id_minion : req.body["id_minion"],
        quantidade : req.body["quantidade"]
    };

    pedido[id] = pedidos;
    res.send("1");
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



