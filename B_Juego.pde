class Juego {
  int contadorVidas, contadorHeridas;
  PImage[] fotos = new PImage[3];
  Enemigo[] aves=new Enemigo[4];
  Fondo fondo;
  Personaje personajePrincipal;
  Manija manija;
  Juego() {

    fondo=new Fondo(); 
    for (int i=0; i<fotos.length; i++) {
      fotos[i]= loadImage( "foto " + i + ".jpg");
    }
    for (int i=0; i<aves.length; i++) {
      aves[i]= new Enemigo() ;
    }
    personajePrincipal=new Personaje();
    manija=new Manija();
  }
  void dibujarTodo() {
   
    //.................................
      image(fotos[0], 0, 0, width, height);
      textAlign(CENTER);
      fill(255, 0, 0);
      textSize(35);
      text("EL CUERVO", width/2, height/2+20);
      fill(255);
      textSize(15);
      text("Presione ENTER para empezar", width/2, height-20);
    
    if (estado.equals("juego")) {
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
      moverLaMano();
      Heridas();
      ganar();
      perder();
    }
  }
  void moverLaMano() {
    personajePrincipal.moverMano(keyCode);
  }
  void Heridas() { //heridas
    for (int i=0; i<aves.length; i++) {
      stroke (0, 255, 0);
      line(personajePrincipal.px, personajePrincipal.py, aves[i].px, aves[i].py);  
      float contacto = dist(personajePrincipal.px, personajePrincipal.py, aves[i].px, aves[i].py);
      if (contacto<=aves[i].tam == true) { 
        contadorHeridas+=1;
        aves[i].px=random(width/40, width/1.33);
        aves[i].py=random(height/12, height/1.33);
      }
    }
  }
  void perder() {
    if ( contadorHeridas>=5&&estado.equals("juego")) {
      estado="P1";
      contadorHeridas=0;  //se pone en 0 las heridas y las vidas
      contadorVidas=0;
    }
  }
  void ganar() {
    line(manija.px, manija.py, personajePrincipal.px, personajePrincipal.py);
    float contacto = dist(manija.px, manija.py, personajePrincipal.px, personajePrincipal.py);
    if (contacto<=25) { 
      contadorVidas+=1;
    }
    if (contadorVidas>=1&&estado.equals("juego")) {
      estado="Finalizado";
      contadorHeridas=0;  //se pone en 0 las heridas y las vidas
      contadorVidas=0;
    }
  }
  void reiniciarJuego() { //reiniciar juego al perder y ganar
    if (estado.equals("Finalizado")&&key==' ') {
      estado="portada"; //vuelve a la portada
      contadorHeridas=0;  //se pone en 0 las heridas y las vidas
      contadorVidas=0;
    }
    if (estado.equals("P1")&&key==' '){
     estado="portada";
     contadorHeridas=0;  //se pone en 0 las heridas y las vidas
      contadorVidas=0;
    }
  }
}
