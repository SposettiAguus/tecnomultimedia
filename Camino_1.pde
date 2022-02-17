void llamado() {
  if (estado.equals("llamado")) { //CAMINO 1
    image(fotos[3], 0, 0, width, height);
    fill(0, 170);
    rect(0, 524, 200, 50);//botón de "Adentrarse en la oscuridad"
    rect(600, 524, 200, 50);//botón de "volver a la habitación"
    fill(0, 100);
    rect(200, 250, 400, 100);
    fill(220);
    textSize(15);
    text("<Leonora> susurran en la oscuridad \n <Leonora> repites asustado de los peligros nocturnos \n pero intrigado a la vez", width/2, height/2-15);
    text("Adentrarse en la oscuridad", 100, height-45);
    text("volver a la habitación", width-100, height-45);
  } else if (estado.equals("adentrarse")) {//CAMINO 1 "adentrarse"
    image(fotos[4], 0, 0, width, height);
    fill(200); 
    textSize(15);
    fill(0, 170);
    rect(245, 264, 310, 70);
    fill(255);
    text("solo la oscuridad te rodea \n algo se mueve en ella \n algo respira en tu alrededor ", width/2, height/2);
    fill(220);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  } else if (estado.equals("habitación")) {//CAMINO 1 "habitación"
    image(fotos[5], 0, 0, width, height);
    fill(0, 170);
    rect(245, 264, 310, 70);
    fill(255);
    textSize(15);
    text("La habitación iluminada por la chimenea,\n parece vacia a simple vista", width/2, height/2-5);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  } else if (estado.equals("continuar")) {//Pantalla en común
    image(fotos[7], 0, 0, width, height);
    fill(0, 150);
    rect(210, 264, 380, 115);
    fill(200);
    textSize(15);
    text("Entonces en la ventana \n un repiqueteo atrae tu atención\n tragas saliva y te volves \n tomando valor para abrirla", width/2, height/2-5);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  } else if (estado.equals("continuar2")) {//Pantalla en común.
    background(0);
    image(fotos[6], 0, 0, width, height);
    fill(0, 150);
    rect(210, 264, 380, 115);
    fill(255);
    textSize(15);
    text("era un cuervo negro como la invernal noche \n que estaba del otro lado de la ventana\n volando se poso en el umbral de la puerta", width/2, height/2-5);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  } else if (estado.equals("continuar3")) {//Pantalla en común.
     background(0);
    image(fotos[8], 0, 0, width, height);
    fill(0, 100);
    rect(0, 524, 200, 50);//botón de atacar al ave
    rect(600, 524, 200, 50);//botón de recostarse en la silla
    rect(280, 470, 240, 50);//botón de texto de pregunta
    fill(200);
    textSize(15);
    text("Atacar al cuervo", 100, height-45);
    text("recostarse en la silla", width-100, height-45);
    fill(0, 150);
    rect(105, 164, 590, 200);
    fill(255);
    textSize(15);
    text("posado desde aquel busto en tu puerta \n la voz de leonora emana de su pico <jámas!>, sera acaso ese el nombre del ave? \n <vete pues solo me traes pesar!!> le ordenas pero el ave te ignora", width/2, height-350);
    text("¿Qué hacer?", width/2, height-100);
  }
}   
