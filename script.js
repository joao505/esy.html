const turnOn = document.getElementById('ligar');
const turnOnff = document.getElementById('desligar');
const lamp = document.getElementById('lamp');

function ligar (){
    lamp.src = 'download.jpeg'
}

function desligar (){
    lamp.src = 'desliga.jpg'
}

turnOn.addEventListener('click', ligar);
turnOnff.addEventListener('click', desligar)
