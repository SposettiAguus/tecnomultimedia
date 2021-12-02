class Enemigo {
  float px, py, tam,cvel;
  PImage cuervo;

  Enemigo() {
    cuervo=loadImage("cuervo.png");
    px= random(width/40, width-tam);
    py= random(height/15, height-tam);
    tam= 75;
    cvel = random(2, 4);
  }
  void dibujarCuervo() {

    println("X es:" + mouseX ); 
    println("Y es:"+ mouseY ); 
    image(cuervo, px, py, tam*2, tam);
  }
  void moverCuervo() {
if (px>width+tam ) { // reiniciamos
      px =random(-width/2, -tam);
      py =random(tam/2, height/2);
      cvel = random(2, 4);
    }
    px+=cvel; // con esto se mueve
  }
}
