class Juego {
  int contadorVidas, contadorHeridas;
  Enemigo[] aves=new Enemigo[4];
  Fondo fondo;
  Personaje personajePrincipal;
  Manija manija;

  Juego() {
    fondo=new Fondo();
    for (int i=0; i<4; i++) {
      aves[i]= new Enemigo();//cargamos los enemigos
    }
    personajePrincipal=new Personaje();
    manija=new Manija();
  }
  void dibujarTodo() {
    fondo.dibujarFondo(); //DIBUJAR FONDO
    personajePrincipal.dibujarMano(); //DIBUJAR MANO
    for (int i=0; i<4; i++) { //dibujamos y duplicamos
      aves[i].dibujarCuervo();
      aves[i].moverCuervo();
    }
    manija.dibujar();
    textAlign(CENTER);
    textSize(25);
    fill(28, 170, 40);
    text("Ventana Cerrada:"+ contadorVidas+ "/1", width/2, 80);
    fill(255, 0, 0);
    text("Heridas: " + contadorHeridas+ "/5", width/2, 120);
  }

  void moverLaMano() {
    personajePrincipal.moverMano(keyCode);
  }
  void Heridas() { //heridas
    for (int i=0; i<2; i++) {
      float contacto = dist(personajePrincipal.px, personajePrincipal.py, aves[i].px, aves[i].py);
      if (contacto<=aves[i].tam == true) { 
        contadorHeridas+=1;
        aves[i].px=random(width/40, width/1.33);
        aves[i].py=random(height/12, height/1.33);
      }
    }
  }
  void perder() {
    if ( contadorHeridas==5&&estado.equals("juego")) {
      image(fotos[1], 0, 0, width, height);
      textAlign(CENTER);
      textSize(35);
      fill(255, 0, 0);
      text("inténtalo de nuevo\n Presiona BARRA para continuar ", width/2, height/2);
    }
  }
  void ganar() {
    float contacto = dist(manija.px, manija.py, personajePrincipal.px, personajePrincipal.py);
    if (contacto<=20) { 
      contadorVidas+=1;
    }
    if (contadorVidas>=1&&estado.equals("juego")) {
      image(fotos[1], 0, 0, width, height);
      textAlign(CENTER);
      textSize(35);
      fill(0, 255, 0);
      text("LOGRASTE CERRAR LA VENTANA\n Presiona BARRA para continuar ", width/2, height/2);
    }
  }
  void reiniciarJuego() { //reiniciar juego al perder y ganar
    if (estado.equals("juego")&&contadorHeridas==5||contadorVidas>=1&&keyCode==' ') {
      estado="portada"; //vuelve a la portada
      contadorHeridas=0;  //se pone en 0 las heridas y las vidas
      contadorVidas=0;
    }
  }
}
