color azul = color(43, 59, 120);
color negroCasi = color(30, 28, 34);
color grisAzul = #34323B;
color naranja = #D86C0B;
color nudePiel = #B3A48D;
color nudeCafe = #AD9C77;
color aguaM= #8A9B7B;
color verdeNude= #AEAF8F;
color rojoRos=#B31338;
color rosado = color(176,114,135,127); //el 127 es de opacidad, representa 55% de opacidad
//la opacidad se representa de 0 a 255
//255 es un 100% de opacidad

int xArco=167;
int yArco=140;
int diamArco=40; //ancho y alto de los arcos consecutivos diagonales superiores
int aleatorioArco=0;

//metodos q obligatoriamente se deben usar: setup y draw, el primero q se lee es el setUp 

void setup (){
  
  //establecer tamaño del canvas
  //en el canvas el pto 0,0 es la esquina sup izq 
  size(430,600); //ancho,alto
   

}//cierra setup



void draw(){
   background(216,193,147);
  
    
  //Triangulo Gigante
  noStroke();
  fill(negroCasi);
  triangle(300,81,396,574,206,495);
  
  //Linea diagonal superior
  stroke(negroCasi); //color de linea
  strokeWeight(3); //grosor de linea
  line(99,158,392,212); // (x1,y1,x2,y2)
  
  //Linea diagonal INF
  stroke(negroCasi); //color de linea
  strokeWeight(3); //grosor de linea
  line(55,360,145,418); // (x1,y1,x2,y2)
  
  //circulo superior derecho
  ellipse(342,84,44,44);
   
  //Cuadrado superior izquierdo
  noStroke();
  fill(azul);//color de relleno
  rect(44,47,55,55);//(x,y,ancho,alto)
  
  //FIGURA CURVA AZUL
    stroke(negroCasi); //color de linea
    strokeWeight(1); //grosor de linea
    fill(azul);
    beginShape();
    vertex(368, 154);//esquina sup derecha
    quadraticVertex(224, 184, 201, 33);// XY manejador y XY pto de la punta curva superior
    vertex(201, 33);//punta 
    quadraticVertex(198, 188, 370, 166);// XY manejador, XY pto inferior curva inf
    endShape(CLOSE); //close para cerrar la figura, si no no se dibuja la linea recta de la izquierda
  
  
  //Medio Circulo diagonal Gigante
  fill(aguaM);
  beginShape();
  vertex(189,256);
  quadraticVertex(75,262,100,388);
  endShape(CLOSE);
  
  /**
  *** rotate siempre va a rotar desde el punto 0,0 de la pantalla (pto de origen)
  *** si quiero que un objeto rote desde otro lugar, hay q usar
  *** translate para mover ese punto de origen al lugar deseado y ahi si mover
  **/
  
  rotate (radians(10.2));// radians() convierte de grados a radianes
  //CIRCULOS CONSECUTIVOS BAJO LINEA
  for(int i=0; i<240 ; i=i+40){
    //aleatorioArco=int(random(40,60));
    //si en alto y ancho del arco coloco aleatorioArco se mueven como gelatinaa!!!
    ellipseMode(CENTER);
    fill(nudePiel);
    strokeWeight(1);
    arc(xArco+i,yArco,diamArco,diamArco,0,PI);//xy centro, ancho,alto,start,end  
  }//cierra for
  
  rotate (radians(-10.2)); //volver a la normalidad
  //translate(-137,-165);//el pto de origen vuelve a ser la esquina izq-sup
  strokeWeight(5);
  fill(255,255,255);
  ellipse(0,0,80,80);
  
  //Circulo Gigante
  fill(rosado);
  strokeWeight(1);
  ellipse(214,293,160,160);
  
  rotate (radians(79));// radians() convierte de grados a radianes
  //CIRCULOS y TRIANGULOS CONSECUTIVOS INFERIOR DERE
  for(int i=0; i<120 ; i=i+55){//se desplazan cada 55
    ellipseMode(CENTER);
    fill(nudePiel);
    strokeWeight(1);
    arc(430+i,-279,diamArco,diamArco,0,PI);//xy centro, ancho,alto,start,end 
    noStroke();
    fill(grisAzul);
    triangle(430+i,-279,430+i,-300,480+i,-279);
  //scale(-1,0); NO DEJA ESCALAR, SALE ERROR
  //strokeWeight(3);
  //fill(255,255,255);
  //ellipse(430,-279,20,20);
  }//cierra for
  
  rotate (radians(-79));
  //POLIGONO INFERIOR
    stroke(negroCasi); //color de linea
    strokeWeight(1); //grosor de linea
    fill(verdeNude);
    beginShape();
    vertex(132, 465);
    vertex(103, 499);
    vertex(405, 587);
    vertex(409, 579);
    endShape(CLOSE);
    
    rotate (radians(33));
    //ARCO INFERIOR IZQ GRANDE DIAGONAL
    fill(rojoRos);
    ellipseMode(CENTER);
    arc(295,273,90,90,0,PI);//xy centro, ancho,alto,start,end 
    
    rotate (radians(-33));
    
    //circulo inf izq
    fill(negroCasi);
    ellipse(54,456,35,35);
    
    //Linea diagonal inf izq
  stroke(negroCasi); //color de linea
  strokeWeight(3); //grosor de linea
  line(61,446,100,388); // (x1,y1,x2,y2)
    
 //FIGURAS CURVAS DE ARRIBA   
  for(int i = 0; i < 2; i++){
    //FIGURA CURVA
    stroke(negroCasi); //color de linea
    strokeWeight(1); //grosor de linea
    fill(naranja);
    beginShape();
    vertex(353, 111);//esquina sup derecha
    quadraticVertex(284, 125, 248, 65);// XY manejador y XY pto de la punta curva superior
    vertex(248, 65);//punta 
    quadraticVertex(280, 133, 355, 118);// XY manejador, XY pto inferior curva inf
    endShape(CLOSE); //close para cerrar la figura, si no no se dibuja la linea recta de la izquierda
    scale(1.3); //escalar
    translate(-75, -10);  //mover X Y
  }//cierra for de figuras curvas de arriba
  
  
        
  
}//cierra draw
