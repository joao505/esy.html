const usernameInput = document.getElementById('name');
const loginBtn = document.getElementById('login-btn');
const cpfInput = document.getElementById('cpf');

let cpf = '12345678909'; // Inicialize cpf com um valor vazio
let userName = ''; // Inicialize userName com um valor vazio

// Agora você pode usar cpf e userName
const userData = {
  name: userName,
  cpf: cpf,
  level: 1
};
localStorage.setItem(cpf, JSON.stringify(userData));

// Add user to users array
const users = JSON.parse(localStorage.getItem('users')) || [];
users.push(userData);
localStorage.setItem('users', JSON.stringify(users));

usernameInput.addEventListener('keypress', function(event) {
  if (event.key === 'Enter') {
    event.preventDefault();
    loginBtn.click();
  }
});

usernameInput.addEventListener('input', function() {
  if (usernameInput.value.length >= 4) {
    loginBtn.disabled = false; // Habilita o botão quando há 4 ou mais caracteres
  } else {
    loginBtn.disabled = true; // Desabilita o botão quando há menos de 4 caracteres
  }
});

cpfInput.addEventListener('input', function() {
  this.value = this.value.replace(/\D+/g, ''); // Remove non-digit characters
  if (this.value.length > 11) {
    this.value = this.value.substring(0, 11); // Limit to 11 characters
  }
});

document.getElementById('login-btn').addEventListener('click', function() {
  var nameInput = document.getElementById('name');
  var cpfInput = document.getElementById('cpf');
  if (nameInput.value.length >= 4 && cpfInput.value.length === 11) {
    var userName = nameInput.value;
    var cpf = cpfInput.value;
    alert('Bom jogo, ' + userName + '!');
    // Check if CPF already exists in localStorage
    if (localStorage.getItem(cpf)) {
      alert('Você já jogou anteriormente!');
      return;
    }
    // Store user data in localStorage
    localStorage.setItem(cpf, userName);
    location.href = 'index.html';
  } else {
    alert('Por favor, entre com 4 caracteres no nome e 11 caracteres no CPF!');
  }
});