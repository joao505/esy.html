//declarando o x
let x = 200;
//declarando o y
let y = 200;
let tamanhodabolinha = 20;
let v = 5;
let raio = tamanhodabolinha/2
let a = 5;


function setup() {
createCanvas(600, 500);
  }
  function draw() {
    background(0);
    circle (x,y,tamanhodabolinha)

    x += v;
    y -= a;

    if(x + raio > width||x - raio < 0){

        v *= -1;
  }

  if(y > height||y < 10){

    a *= -1;

  }
}
