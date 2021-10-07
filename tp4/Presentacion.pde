void inicio() {
  if (estado.equals ("portada"));
  {//.................................
    image(fotos[0], 0, 0, width, height);
    textAlign(CENTER);
    fill(255,0,0);
    textSize(35);
    text("EL CUERVO", width/2, height/2+20);
    fill(255);
    textSize(15);
    text("Presione ENTER para empezar  precione C para ver los creditos", width/2, height-20);
  }
  if (estado.equals("creditos")) {//.................................
    image(fotos[9], 0, 0, width, height);
    fill(0, 190);
    rect(170, 250, 460, 150);//boton texto
    fill(255);
    textSize(15);
    text("Autor: Agustin Sposetti\n Comisión: 1 Legajo: 88117/0\n Profesor: Bugiolachi \n Basado en el poema <The Raven> de Edgar Alan Poe", width/2, height/2+8);
    fill(255);
    text("Presione LEFT para volver", width/7, height-20);
  }
  if (estado.equals("comienzo")) {//.................................
    image(fotos[1], 0, 0, width, height);
    fill(0, 190);
    rect(170, 275, 460, 100);//boton texto
    rect(210, 535, 375, 50);
    fill(255);
    textSize(15);
    text("Esa noche dormitabas en  en el estudio \n pensabas en tu perdido amor la dulce Leonora\n pero un ruido te volvio a la realidad", width/2, height/2+8);
    text("Presione la BARRA ESPACIADORA para continuar", width/2, height-35);
  } else if (estado.equals("voz")) {//.................................
    image(fotos[2], 0, 0, width, height);
    fill(0, 150);
    rect(200, 285, 400, 100);//botón del texto
    fill(255);
    textSize(15);
    text(" <<algún viajero perido que toca la puerta>>\n Es lo que se te ocurre, decides acercarte y \n abrir la puerta para pedirle algo de paz\n pero en el umbral solo tinieblas", width/2, height/2+8);
    fill(0, 150);
    rect(300, 425, 200, 50);//botón de esperar
    rect(300, 485, 200, 50);//botón de cerrar la puerta
    fill(255);
    text("Esperar", width/2, height-145);//CAMINO 1
    text("Cerrar la puerta", width/2, height-85);//CAMINO 2
  }
}
