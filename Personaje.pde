class Personaje {

  float px, py,tam;
  PImage mano;
  Personaje() {

    px= width/2;
    py= height/2+200;
    tam=250;
    mano=loadImage("mano.png");
  }
void dibujarMano(){
    image(mano, px, py, tam/2, tam/3);
  
}
  void moverMano(int apretarTecla) {
  
    if (apretarTecla==LEFT) {
      px -= 8;
    }
    if (apretarTecla==RIGHT) {
      px += 8;
    }
      if (apretarTecla==UP) {
      py -= 8;
    }
    if (apretarTecla==DOWN) {
      py +=8;
    }
  }
}
