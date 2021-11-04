class Manija {
  float px, py;
  int tam;
  PImage Manija;

  Manija() { //valores iniciales
    px=random(width/40, width/1.23);
    py=random(height/12, height/1.33);
    tam=width/8;

    Manija = loadImage("Manija1.png");
  }

  void dibujar() {
    image(Manija, px, py, tam, tam);
  }
}
