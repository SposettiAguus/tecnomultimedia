Juego juuego;
//https://youtu.be/C8R_J4hHeew

String estado;
PImage[] fotos = new PImage[13];
int y; //si no se usar SACAR
void setup() {
  size(800, 600);
  juuego = new Juego();
  for (int i=0; i<fotos.length; i++) {
    fotos[i]= loadImage( "foto " + i + ".jpg");
  }
  estado="portada";
}
void draw() {
  inicio();
  llamado();
  Espera();
  FinalMuerte1();
  finalizado();
  FinalMuerte2();
  println("estado es:" + estado );
  if (estado.equals("juego")) { //dibuja lo del juego
    juuego.dibujarTodo();
  }
}

void keyPressed() {

  botonEnter("portada", "comienzo");//cambio de estado:portada --> comienzo de la historia
  botonC("portada", "creditos");
  botonBarra("comienzo", "voz");  //cambio de estado:comienzo --> voz
  botonLeft("creditos", "portada");
  botonBarra("continuar2", "continuar3");
  botonBarra("Finalizado", "portada");
  botonBarra("P1", "portada");
  if (key== ' '&&estado=="adentrarse") { //Caso excepcional para que no saltee una pantalla
    estado="continuar";
    //cambio de estado: adentrarse a continuar
  } else if (key==' '&&estado=="continuar") {
    estado="continuar2"; //continuar a continuar2
  } else if (key==' '&&estado=="habitación") {
    estado="continuar";
  }
  botonLeft("atacar", "continuar3");
  botonLeft("", "continuar3"); //PASA A LA PORTADA PERO PODRIA SER : SEGUIR CAMINO
  botonRight("atacar", "juego");// PASA AL JUEGO
  botonLeft("recostarse", "portada");
  if (key== ' '&&estado=="ignorarlo") { //Caso excepcional para que no saltee una pantalla
    estado="continuarC2";
    //cambio de estado: adentrarse a continuar
  } else if (key==' '&&estado=="continuarC2") {
    estado="continuarC2/2"; //continuar a continuar2
  } else if (key==' '&&estado=="ver") {
    estado="continuarC2";
  }
  botonBarra("continuarC2/2", "continuarC2/3");
  botonLeft("accidente", "portada");
}
void mousePressed() {
  boton(300, 425, 200, 50, "voz", "llamado"); //cuando hago click sobre la zona del botón de "esperar" cambio de estado: voz --> oscuridad
  boton(300, 485, 200, 50, "voz", "espera"); 
  boton(0, 524, 200, 50, "llamado", "adentrarse");//cambio de estado: llamado ----> adentrarse
  boton(600, 524, 200, 50, "llamado", "habitación");//cambio de estado: llamado ---> habitación
  boton(0, 524, 200, 50, "continuar3", "atacar"); //cuando hago click en el botón de la "atacar al cuervo" cambio de estado: --> atacar
  boton(600, 524, 200, 50, "continuar3", "recostarse"); //cuando hago click en el botón del "recostarse" cambio de estado:--> recostarse
  boton(0, 524, 200, 50, "espera", "ignorarlo");//cambio de estado: esperar ----> ignorar
  boton(600, 524, 200, 50, "espera", "ver");//cambio de estado: esperar ---> ver
  boton(0, 524, 200, 50, "continuarC2/3", "atacar"); //cuando hago click en el botón de la "atacar al cuervo" cambio de estado: --> atacar
  boton(600, 524, 200, 50, "continuarC2/3", "accidente"); //cuando hago click en el botón del "caminar hacia atras" cambio de estado: --> recostarse
}
