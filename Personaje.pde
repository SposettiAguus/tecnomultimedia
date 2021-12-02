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
      void limites() { //Limites de la mano en la ventana
    if (px <= tam/2) { //izquierda
      px = tam/2;
    }
    if (px >= width-tam/2) {//derecha
      px = width-tam/2;
    }
    if (py <= tam-height/50) { //arriba
      py = tam-height/50;
    }
    if (py >= height-tam) { //abajo
      py = height-tam;
    }
  }
}
