//URL DEL VIDEO: https://youtu.be/-Kx0ei4iNlo
int cant = 3; //divide la cantidad 
int cantM; // defino cantM para trabajar sobre cant sin modficiarla evitando errores , como por ejemplo dividir entre 0
int tam; // se define para ajustar el tamaño de las elipses
void setup() {
  size(600, 600);
  tam = width/cant; //se divide para ajustar el tamaño en función de la cantidad y el ancho de la pantalla
  colorMode(HSB, width, 100, 100); //gama de colores HSB para generar gama
  surface.setResizable(true);
}
void draw() {
  background(0);
  cant = 1 ;
  cant = cantM;
  for (int i=0; i<cant; i++) { //for, conteo con indice para dibujar las figuras en pantalla  
    for (int j=0; j<cant; j++) {
      int cantCir = 20; //cantidad de circulos
      for (int c=0; c<cantCir; c++) { //for para comenzar a dibujar
        float ancho = map(c, 0, cantCir-1, tam, 2); //da el ancho
        float posx = map(c, 0, cantCir-1, i*tam+tam/2, constrain(mouseX, i*tam+tam/8, (i+1)*tam-tam/8  ) );
        float posy = map(c, 0, cantCir-1, j*tam+tam/2, constrain(mouseY, j*tam+tam/8, (j+1)*tam-tam/8 ) ); //controlan los limites
        float tono = map(c, 0, cantCir-1, 0, width  ); // controla los tonos HSB
        stroke(tono,100,100); //stroke de colores
        strokeWeight(5); //tamaño del stroke
        noFill(); //sin relleno
        ellipse(posx, posy, ancho, ancho); 
      }
    }
  }
}

void keyPressed() {
  if (keyCode==UP) {
    cantM ++;
  }
  if (keyCode==DOWN) {
    cantM --;
  } // con las felchas aumenta o disminuye el valor de cantM para aumentar la cantidad de figuras
   if (keyCode==' ') { // restaura valor de uno para iniciar ilusión
    cantM = 1;
  }
}
