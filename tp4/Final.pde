void finalizado(){
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
void  FinalMuerte1(){
    if (estado.equals("atacar")) { //FINAL MUERTE
    image(fotos[10], 0, 0, width, height);
    fill(0, 170);
    rect(200, 250, 400, 100);
    fill(220);
    textSize(15);
    text("intentando bajar al maldito cuervo \n el busto sobra la puerta se tambalea  \n cayendo sobre tu cabeza matandote al instante ", width/2, height/2-15);
    fill(255);
    text("Presione LEFT para volver", width/7, height-20);
  }
}
void  FinalMuerte2(){
    if (estado.equals("accidente")) { //FINAL MUERTE
    image(fotos[13], 0, 0, width, height);
    fill(0, 170);
    rect(100, 250, 500, 100);
    fill(220);
    textSize(15);
    text("un desliz, un tropiezo, un miedo  \n la ventana seguía abiera \n ahora caes al vacio y la nada te espera... <Leonora> son tus ultimas palabras ", width/2, height/2-15);
    fill(255);
    text("Presione LEFT para volver", width/7, height-20);
  }
}
