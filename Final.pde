void finalizado() {
  if (estado.equals("recostarse")) { //FINAl
    image(fotos[11], 0, 0, width, height);
    fill(0, 170);
    rect(200, 250, 400, 100);
    fill(220);
    textSize(15);
    text("te recostaste, temiste y preguntaste \n <la volvere a ver>...<JAMAS!> fue tu respuesta  \n hoy en día esa maldita ave sigue ahí ", width/2, height/2-15);
    fill(255);
    text("Presione LEFT para volver", width/7, height-20);
  }
}
void  FinalMuerte1() {
  if (estado.equals("atacar")) { //FINAL MUERTE
    image(fotos[10], 0, 0, width, height);
    fill(0, 170);
    rect(200, 250, 400, 100);
    fill(220);
    textSize(15);
    text("intentando bajar al maldito cuervo \n sientes que más intentan entrar por la ventana  \n debes cerrar antes que más de ellos entren, ¡cierra la ventana! ", width/2, height/2-15);

    fill(255);
    text("LEFT retirarse",  120, height-45 );
    text("RIGHT para cerrar la ventana", width-120, height-45); //ENTRA AL JUEGO
  }
   if (estado.equals("Finalizado")) { //FINAL MUERTE
    image(fotos[10], 0, 0, width, height);
    fill(0, 170);
    rect(200, 250, 400, 100);
    fill(220);
    textSize(15);
    text("Presione BARRA ESPACIADORA para volver a empezar", width/2, height-20);
    text("la ventana se cierra pero el maldito seguía allí \n corriste a bajarlo pero volo \n el busto calló sobre tu cabeza dandote muerte", width/2, height/2-15);
   }
    if (estado.equals("P1")) {
   image(fotos[1], 0, 0, width, height);
      textAlign(CENTER);
      textSize(35);
      fill(255, 0, 0);
      text("inténtalo de nuevo\n Presiona BARRA para reiniciar ", width/2, height/2);
    }
}
void  FinalMuerte2() {
  if (estado.equals("accidente")) { //FINAL MUERTE
    image(fotos[13], 0, 0, width, height);
    fill(0, 170);
    rect(100, 250, 500, 100);
    fill(220);
    textSize(15);
    text("un desliz, un tropiezo, un miedo  \n la ventana seguía abierta \n ahora caes al vacio y la nada te espera... <Leonora> son tus ultimas palabras ", width/2, height/2-15);
    fill(255);
    text("Presione LEFT para volver", width/7, height-20);
  }
}
