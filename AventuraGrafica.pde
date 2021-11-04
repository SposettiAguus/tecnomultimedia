class AventuraGrafica {
  Juego juego;
  AventuraGrafica(){
    juego = new Juego();   
  }
  void dibujarAventura(){
    if (keyPressed) {
        juego.moverLaMano();
      }
  }  
}
