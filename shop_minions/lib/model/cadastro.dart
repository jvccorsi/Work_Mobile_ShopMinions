class Cadastro {
  String username;
  String password;
  bool confirmed = false;
  var radioValue = 1;
  double sliderValue = .1;

  doSomething() {
    print("Username: $username");
    print("Password: $password");
    print("radioValue: $radioValue");
    print("Slider: $sliderValue");
  }
}
