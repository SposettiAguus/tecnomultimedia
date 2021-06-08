int segundos;
int diez=10;
float ten=10;
int modulo = 10;
int py,py2,py3,py4,py5;
PImage rivendel, pantalla2,pantalla3,pantalla4,tolkien;
void setup() {
  size(800, 800);
  textSize(30);
  py = 150;
  py2 = 250;
  py3 = 250;
  py4 = 250;
  py5 = 150;
  rivendel = loadImage ("Rivendel.jpg");
  pantalla2 = loadImage ("pantalla2.jpg");
  pantalla3 = loadImage ("Pantalla3.jpg");
  pantalla4 = loadImage ("pantalla4.jpg");
  tolkien = loadImage ("tolkien.jpg"); //carga de imagenes y variables de posición
}
void draw() {
  background(0);
  fill(255);
  image ( rivendel, 0 , 0, 800, 800); //carga de la primer imagen de fondo
  if (frameCount%60 == 0) { // revisa si los frames son multiplos de 60
    segundos++; //suma segundos cada 60 frames
  }
  textAlign(TOP,CENTER);
  float opaco = map(frameCount, 0, 600, 0, 255); // map para la opaciodad
  fill(230,0,38, opaco);
  text("El señor de los anillos: La comunidad del anillo", 50 , py-30);
  if (segundos>10) { // condicionales cada 10 segundos de cambio de pantalla
    background(0);
  image ( rivendel, 0 , 0, 800, 800);
    py++; // comienza a moverse
    text("Dirección: Peter Jackson\nProcución:\nPeter Jackson\nBarrie M. Osborne\nTim Sanders\nFran Walsh",50,py);
  }
  if (segundos>20){
    fill(239,148,16);
    image ( pantalla2, 0 , 0, 800, 800);
    py2++;
    text("Guión:\nPeter Jackson\nFran Walsh\nPhilippa Boyens\nEfectos especiales:\nJim Rygiel\nRichard Taylor\nRandall William Cook\nMark Stetson",50,py2);
  }
  if (segundos>30){
        image ( pantalla3, 0 , 0, 800, 800);
        py3++;
     text("Protagonistas:\nElijah Wood\nIan McKellen\nLiv Tyler\nViggo Mortensen\nSean Astin\nCate Blanchett\nJohn Rhys-Davies\nBilly Boyd\nDominic Monaghan\nOrlando Bloom\nSean Bean\nIan Holm",50,py3);
  }
  if (segundos>40){
    fill(230,0,38);
    image ( pantalla4, 0 , 0, 800, 800);
    py4++;
    text("Musica:\nHoward Shore\nSonido:\nChristopher Boyes\nMichael Semanick\nGethin Creagh\nHammond Peek\nMaquillaje:\nPeter Owen\nRichard Taylor",50,py4);
  }
   if (segundos>50){
    fill(239,148,16);
    image ( tolkien, 0 , 0, 800, 800);
    text("Basado en la obra de J.R.R Tolkien",50,py5);
  }
}
