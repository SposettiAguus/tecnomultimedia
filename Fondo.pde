class Fondo {
  int px, py;
  PImage fondo, cuervo;
  Fondo() { //valores iniciales
    fondo=loadImage("fondo.jpeg");
  }
  void dibujarFondo() {
    imageMode(CORNER);
    image(fondo, px, py, width, height); //FONDO
  }
}
