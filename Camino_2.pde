void Espera() {
  if (estado.equals("espera")) { //CAMINO 2
    image(fotos[5], 0, 0, width, height);
    fill(0, 170);
    rect(0, 524, 200, 50);//botón de "ignrarlo"
    rect(600, 524, 200, 50);//botón de "ver la ventana"
    fill(0, 100);
    rect(200, 250, 400, 100);
    fill(220);
    textSize(15);
    text("Cierras la puerta\n te volteas y recuestas nuevamente en tu silla \n pero el ruido no tarda en volver", width/2, height/2-15);
    text("Ignorarlo", 100, height-45);
    text("ver la ventana", width-100, height-45);
  } else if (estado.equals("ignorarlo")) {//CAMINO 2 "ignoarlo"
    image(fotos[12], 0, 0, width, height);
    fill(0, 170);
    rect(145, 264, 510, 170);
    fill(255);
    textSize(15);
    text("recostado frente a la chimenea el ruido es imposible de ignorar \n entonces un estallido de cristal un aleteo y la chimenea se apaga \n un graznido atrae tu atención", width/2, height/2);
    fill(220);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  }else if (estado.equals("ver")) {//CAMINO 2 "ver"
    image(fotos[5], 0, 0, width, height);
    fill(0, 170);
    rect(145, 264, 510, 70);
    fill(255);
    textSize(15);
    text("aquel sonido parece provenir de la ventana \n la abres y un cuervo negro como la misma noche ingresa", width/2, height/2-5);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  }else if (estado.equals("continuarC2")) {//Pantalla en común
    image(fotos[6], 0, 0, width, height);
    fill(0, 150);
    rect(110, 264, 580, 115);
    fill(200);
    textSize(15);
    text("tras recobrarte un poco del susto incial te volteas a contemplar el ave \n <Cual es tu nombre?> le preguntas, <JAMAS, NUNCA JAMAS> es tu respuesta", width/2, height/2-5);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  }
  else if (estado.equals("continuarC2/2")) {//Pantalla en común
    image(fotos[8], 0, 0, width, height);
    fill(0, 150);
    rect(110, 264, 580, 115);
    fill(200);
    textSize(15);
    text("sobre el busto del marco de la puerta se poso aquel visitante \n <JAMAS> repite nuevamente \n <JAMAS QUE?> preguntas cansado", width/2, height/2-5);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  }else if (estado.equals("continuarC2/3")) {//Pantalla en común.
    background(0);
    image(fotos[8], 0, 0, width, height);
    fill(0, 100);
    rect(0, 524, 200, 50);//botón de atacar al ave
    rect(600, 524, 200, 50);//botón de recostarse en la silla
    rect(280, 470, 240, 50);//botón de texto de pregunta
    fill(200);
    textSize(15);
    text("Atacar al cuervo", 100, height-45);
    text("Retroceder", width-100, height-45);
    fill(0, 150);
    rect(105, 164, 590, 200);
    fill(255);
    textSize(15);
    text("la voz que salia de aquella ave ahora era diferente \n era la de Leonora <JAMAS VOLVERAS A VERME!!>", width/2, height-350);
    text("¿Qué hacer?", width/2, height-100);
  }
} 
