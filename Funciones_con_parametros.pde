void boton(int px, int py, int tamx,int tamy,String estoy,String voy){
  if (mouseX>=px&&mouseX<=px+tamx&&mouseY>=py&&mouseY<=py+tamy&&estado==estoy){
  estado=voy;
  }
}
void botonBarra(String estoy,String voy){
  if(key==' ' &&estado==estoy) {
    estado=voy;
}
}
void botonEnter(String estoy,String voy){
  if(keyCode==ENTER &&estado==estoy) {
    estado=voy;
}
}
void botonLeft(String estoy,String voy){
  if(keyCode==LEFT &&estado==estoy) {
    estado=voy;
  }
}
void botonRight(String estoy,String voy){
  if(keyCode==RIGHT &&estado==estoy) { //PARA PASAR AL JUEGO
    estado=voy;
}
}
void botonC (String estoy, String voy){
  if(keyCode== 'C' &&estado==estoy) {
    estado=voy;
}

}
