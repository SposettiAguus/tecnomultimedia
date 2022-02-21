Juego juego;
void setup() {
  size(800, 600);
  juego = new Juego();;
}
void draw() {
 juego.dibujarTodo();
}
void keyPressed() {
  juego.presionar();
}
