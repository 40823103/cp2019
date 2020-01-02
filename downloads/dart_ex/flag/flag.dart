import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
int flag_w1 = 300;
int flag_h1 = 150;
num circle_x = flag_w / 2;
num circle_y = flag_h / 2;
num circle_a = flag_w / 4;
num circle_b = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawFR(ctx);
  querySelector("#fr").onClick.listen((e) => drawFR(ctx));
  querySelector("#jp").onClick.listen((e) => drawJP(ctx));
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#ru").onClick.listen((e) => drawRU(ctx));
  querySelector("#ne").onClick.listen((e) => drawNE(ctx));
  querySelector("#ge").onClick.listen((e) => drawGE(ctx));
  querySelector("#uk").onClick.listen((e) => drawUK(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}
void drawFR(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#EF4135';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w*63/100, flag_h);
  ctx.fillStyle = '#0055A4';
  ctx.fillRect(0, 0, flag_w*30/100, flag_h);
}
void drawJP(ctx){
  
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#bc002d';
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, 60, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = '#bc002d';
  ctx.fill();
}
void drawROC(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_a + Math.cos(angle) * star_radius;
    num toY = circle_b + Math.sin(angle) * star_radius;
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.beginPath();
  ctx.arc(circle_a, circle_b, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  ctx.beginPath();
  ctx.arc(circle_a, circle_b, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = '#fff';
  ctx.fill();
}
void drawRU(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#d52b1e';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#0039a6';
  ctx.fillRect(0, 0, flag_w, flag_h*2/3);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h/3);
}
void drawNE(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#21468b';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#ffffff';
  ctx.fillRect(0, 0, flag_w, flag_h*2/3);
  ctx.fillStyle = '#ae1c28';
  ctx.fillRect(0, 0, flag_w, flag_h/3);
}
void drawGE(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#ffce00';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#dd0000';
  ctx.fillRect(0, 0, flag_w, flag_h*2/3);
  ctx.fillStyle = '#000000';
  ctx.fillRect(0, 0, flag_w, flag_h/3);
}
void drawUK(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#001b69';
  ctx.fillRect(0, 0, flag_w1, flag_h1);
    ctx.strokeStyle="#fff";
  ctx.lineWidth = 30;
    ctx.beginPath();
    ctx.moveTo(0,0);
    ctx.lineTo(300,150);
    ctx.moveTo(0,150);
    ctx.lineTo(300,0);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(0,155);
  ctx.lineTo(150,80);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,70);
  ctx.lineTo(295,-5);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,70);
  ctx.lineTo(305,145);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,80);
  ctx.lineTo(-5,5);
  ctx.stroke();
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 50;
    ctx.beginPath();
    ctx.moveTo(0,75);
    ctx.lineTo(300,75);
    ctx.moveTo(150,0);
    ctx.lineTo(150,150);
    ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 30;
    ctx.beginPath();
    ctx.moveTo(0,75);
    ctx.lineTo(300,75);
    ctx.moveTo(150,0);
    ctx.lineTo(150,150);
    ctx.stroke();
    ctx.fillStyle = '#fff';
  ctx.fillRect(0, 150, flag_w, flag_h/4);
  
}
void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}