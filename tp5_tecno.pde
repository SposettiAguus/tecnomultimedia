Juego juego;
AventuraGrafica AventuraGrafica;
PImage[] fotos = new PImage[3];
String estado;
void setup() {
  size(800, 600);
 for (int i=0; i<fotos.length; i++) {
    fotos[i]= loadImage( "foto " + i + ".jpg");
  }
  estado="portada";
  juego = new Juego();
  AventuraGrafica = new AventuraGrafica();
}
void draw() {
  println("estado es:" + estado );
  if (estado.equals ("portada"));
  {//.................................
    image(fotos[0], 0, 0, width, height);
    textAlign(CENTER);
    fill(255,0,0);
    textSize(35);
    text("EL CUERVO", width/2, height/2+20);
    fill(255);
    textSize(15);
    text("Presione ENTER para empezar", width/2, height-20);
  }
  if (estado.equals("comienzo")) {//.................................
  juego.dibujarTodo();
  juego.moverLaMano();
  juego.Heridas();
  juego.ganar();
  juego.perder();
  AventuraGrafica.dibujarAventura();
  }
}
void keyPressed() {
  botonEnter("portada", "comienzo");
}
