class Aventura {
  String estado;
  Botones boton; //declarar
  Imagenes secuencia;
  Juego juego;
  String[] textos= {"Presione ENTER para empezar",  "precione C para ver los creditos","Autor: Agustin Sposetti\n Comisión: 1 Legajo: 88117/0\n Profesor: Bugiolachi \n Basado en el poema <The Raven> de Edgar Alan Poe",
"Presione LEFT para volver","Esa noche dormitabas en  en el estudio \n pensabas en tu perdido amor la dulce Leonora\n pero un ruido te volvio a la realidad","Presione la BARRA ESPACIADORA para continuar",
"<<algún viajero perido que toca la puerta>>\n Es lo que se te ocurre, decides acercarte y \n abrir la puerta para pedirle algo de paz\n pero en el umbral solo tinieblas","Esperar","Cerrar la puerta","<Leonora> susurran en la oscuridad \n <Leonora> repites asustado de los peligros nocturnos \n pero intrigado a la vez",
"Adentrarse en la oscuridad","volver a la habitación","solo la oscuridad te rodea \n algo se mueve en ella \n algo respira en tu alrededor ","La habitación iluminada por la chimenea,\n parece vacia a simple vista","Entonces en la ventana \n un repiqueteo atrae tu atención\n tragas saliva y te volves \n tomando valor para abrirla","Presione la BARRA ESPACIADORA para continuar",
"era un cuervo negro como la invernal noche \n que estaba del otro lado de la ventana\n volando se poso en el umbral de la puerta",
"Atacar al cuervo","recostarse en la silla","posado desde aquel busto en tu puerta \n la voz de leonora emana de su pico <jámas!>, sera acaso ese el nombre del ave? \n <vete pues solo me traes pesar!!> le ordenas pero el ave te ignora",
"¿Qué hacer?","Cierras la puerta\n te volteas y recuestas nuevamente en tu silla \n pero el ruido no tarda en volver","Ignorarlo","ver la ventana",
"recostado frente a la chimenea el ruido es imposible de ignorar \n entonces un estallido de cristal un aleteo y la chimenea se apaga \n un graznido atrae tu atención",
"aquel sonido parece provenir de la ventana \n la abres y un cuervo negro como la misma noche ingresa",
"tras recobrarte un poco del susto incial te volteas a contemplar el ave \n <Cual es tu nombre?> le preguntas, <JAMAS, NUNCA JAMAS> es tu respuesta",
"sobre el busto del marco de la puerta se poso aquel visitante \n <JAMAS> repite nuevamente \n <JAMAS QUE?> preguntas cansado",
"Atacar al cuervo","Retroceder","la voz que salia de aquella ave ahora era diferente \n era la de Leonora <JAMAS VOLVERAS A VERME!!>",
"¿Qué hacer?","te recostaste, temiste y preguntaste \n <la volvere a ver>...<JAMAS!> fue tu respuesta  \n hoy en día esa maldita ave sigue ahí ","intentando bajar al maldito cuervo \n el busto sobra la puerta se tambalea  \n cayendo sobre tu cabeza matandote al instante ",
"un desliz, un tropiezo, un miedo  \n la ventana seguía abiera \n ahora caes al vacio y la nada te espera... <Leonora> son tus ultimas palabras "}; 

  Aventura() { //constructor
    boton=new Botones();
    secuencia=new Imagenes();
    juego = new Juego();
  }
void dibujar() {
    println("estado es:" + estado );
    println("X es:" + mouseX ); 
    println("Y es:"+ mouseY ); 
    secuencia.imagen("presentacion", 0); //pantalla inicial
}
}
