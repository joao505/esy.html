let xBolinha = 300;
let yBolinha = 200;
let dianetro = 30;
let velocidade = 1;


function setup() {
    createCanvas(600, 400);
  }
  
  function draw() {
    
    
    background(0);
    criarBolinha();
   

 function criarBolinha(){

     circle(xBolinha,200,30);
 




}

xBolinha += velocidade;
if(xBolinha > width){
    velocidade *= -1
}








}
