PImage inicio;
PImage cerditos1;
PImage cerditos2;
PImage cerditos3;
PImage reiniciar;
int pantallaActual = 0; // Variable para controlar la pantalla actual
int tiempoPantalla = 5000; // Tiempo entre cada pantalla
int tiempoUltimaPantalla; // Variable para almacenar el tiempo de la última pantalla
boolean iniciado = false; // Variable para controlar si la presentación ha sido iniciada
PFont fuente;

void setup() {
  size(640, 480);
  inicio = loadImage("inicio.jpg"); // Cargar imagen de inicio
  cerditos1 = loadImage("cerditos1.jpg"); // Cargar imagen del primer cuento
  cerditos2 = loadImage("cerditos2.jpg"); // Cargar imagen del segundo cuento
  cerditos3 = loadImage("cerditos3.jpg"); // Cargar imagen del tercer cuento
  reiniciar = loadImage("reiniciar.jpg"); // Cargar imagen para el botón de reinicio
  tiempoUltimaPantalla = millis(); // Inicializar el tiempo de la última pantalla
  fuente = loadFont("Arial-Bold-32.vlw"); // Cargar una fuente personalizada
  textFont(fuente); // Establecer la fuente personalizada
}

void draw() {
  background(255);
  
  if (iniciado) { // Verificar si la presentación ha sido iniciada
    // Mostrar la imagen correspondiente a la pantalla actual
    switch (pantallaActual) {
      case 0:
        image(inicio, 0, 0, width, height);
        break;
      case 1:
        image(cerditos1, 0,   0, width, height);
        break;
      case 2:
        image(cerditos2, 0, 0, width, height);
        break;
      case 3:
        image(cerditos3, 0, 0, width, height);
        break;
      case 4:
        image(reiniciar, 0, 0, width, height);
        break;
    }
    
    // Animación de texto
    textSize(32);
    fill(0);
    text("Texto de la pantalla " + (pantallaActual + 1), 100, 50);
    
    // Verificar si es hora de cambiar de pantalla
    if (millis() - tiempoUltimaPantalla > tiempoPantalla) {
      pantallaActual = (pantallaActual + 1) % 5; // Cambiar a la siguiente pantalla
      tiempoUltimaPantalla = millis(); // Actualizar el tiempo de la última pantalla
    }
  } else {
    // Pantalla de inicio
    textSize(32);
    fill(0);
    text("Haz clic para iniciar la presentación", 100, 50);
    image(inicio, 0, 0, width, height);
  }
  
  // Botón de reinicio al finalizar la presentación
  if (pantallaActual == 4) {
    if (mouseX > 250 && mouseX < 390 && mouseY > 400 && mouseY < 440) {
      fill(150);
    } else {
      fill(255);
    }
    rect(250, 400, 140, 40);
    fill(0);
    textSize(20);
    text("Reiniciar", 280, 428);
  }
}

void mousePressed() {
  if (!iniciado) {
    iniciado = true; // Iniciar la presentación al hacer clic
  } else if (pantallaActual == 4 && mouseX > 250 && mouseX < 390 && mouseY > 400 && mouseY < 440) {
    // Reiniciar la presentación al hacer clic en el botón
    pantallaActual = 0;
    tiempoUltimaPantalla = millis();
  }
}
