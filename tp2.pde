//Agostina Palacios
// comision 3
// legajo 85066/3


PImage looney;
PFont fuente;
float texto;
float velocidad;
float tex1;
float tex2;
float tex3;
float tex4;
float tex5;
int posx;
PFont sub;
PFont fin;


  void setup(){
   size(900,800);
   looney= loadImage("looney.jpg");
   image(looney,50,50);
   looney.resize(900,800);
  
   fuente= loadFont("90titulo.vlw");
   sub= loadFont("subtitulos.vlw");
   fin= loadFont("fin-110.vlw");

   velocidad= 2.3;
   texto= height;
   tex1= 1500;
   tex2= 2500;
   tex3= 3500;
   tex4=4500;
   posx=330;
}

  void draw() {
   background(looney);

  // Titulo
    pushStyle();
   textFont(fuente);
   fill(map (texto,800,0,255,0), 255, 0);
   text("Looney \n Tunes",280, texto);
   texto= texto-velocidad;
   popStyle();
   
   //Pantalla 1 de protagonistas
   pushStyle();
   textFont(sub);
   frameRate(90);
   fill(255);
   text("VOICES BY\n Tress Macneille\n Seth Macfarlone\n Mel Blane\n Jim Cummings\n Bill Farmer", posx, tex1);
   tex1= tex1-velocidad; 
   
   //Pantalla 2 de protagonistas
   text (" Julie Bennett\n Billy West \n June Faray\n Eric Bauza\n Stephani Coortney", posx, tex2);
   tex2= tex2-velocidad;
   
   //Pantalla 1 musica y dirección
   text(" FILM EDITOR\n David L. Bertman\n SOUND DESINGERS\n Timothy J. Barquez\n Mpse Tom Syslo\n MUSIC EDITOR\n Tommy Lockett \n DIALOGE EDITOR\n Matt Brown", 330, tex3);
   tex3= tex3-velocidad;
  
   
   //Pantalla 2 música y dirección
   
   text(" ANIMATIONS\n David Feiss\n Orlando Gumatay\n Frank Molieri\n Pam Cookie\n Backgrounds\n Chris Holt\n Ed Haney\n Marina Levikova\n PRODUCTION MANAGER\n Silvia Edwards", 300, tex4);
   tex4= tex4-velocidad;
   popStyle();
   
  // 
  pushStyle();
  textFont(fin);
  fill(255);
  text("That's all folks!",220,400);
  popStyle();
   
  }
 
   
   
   
 
 







  
