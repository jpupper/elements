class Fire extends Particle{
  
  float hue = 0;
  float chispi;
  float angle;
  
  PVector origin;
  Fire(PVector _pos){
     super(new PVector(random(_pos.x-10,_pos.x+10),_pos.y),
           new PVector(0,random(-0.4,0)),
           new PVector(0,random(-0.03,0)),
           0,0.01,
           0,
                            random(10,25),
                            0,random(255,255),random(200,255),
                            2);
     origin = _pos;             
   }
   
   void design(){
         
         hueSpread();
         
         strokeWeight(2);
         noStroke();
         fill(hue,sat,bri,lifespan);
         for(int i=0; i<2; i++){
           ellipse(0 ,0 + 20 * sin(angle *i),size-chispi,size-chispi);
         }
         //star(0,0,size*2,size-size/4,20);        
   }
   
   void hueSpread(){
     hue+=0.3;
     angle+=0.1;
     if (hue > 41){
       
      hue = 39; 
     }
   }
}

class Rain extends Particle{
  Rain(PVector _pos){
     super(new PVector(random(width),0),
           new PVector(0,random(0,0.5)),
           new PVector(0,0.1),
           0,0,
           0,
                            random(5,10),
                            random(174,200),random(200,255),random(150,255),
                            1.5); 
   }
    void design(){
         
         strokeWeight(2);
         noStroke();
         fill(hue,sat,bri,lifespan);
         for(int i=0; i<2; i++){
           //rect(0,0,size*2,size);
           star(0,0,size-size/4,size*2,2);      
         }
         //star(0,0,size*2,size-size/4,20);        
   }
}

class Grass extends Particle{  
  Grass(PVector _pos){
     super(new PVector(_pos.x,_pos.y),
           new PVector(random(-1,1),random(-1,1)),
           new PVector(0,0),
           0,0,
           0,
                            random(3,5),
                            random(86,146),random(225,255),random(0,255),
                            1.5); 
   }
   
   void design(){
        /*triangle( 0,-size,
               size,0,
               0,size
             );*/
     stroke(1,lifespan);
     strokeWeight(2);
     noStroke();
     fill(hue,sat,bri,lifespan);
     star(0,0,size*2,size-size/4,2);        
  }
}

class Remolino extends Particle{
 
  float hue = 0;
  float chispi;
  float angle;
  PVector origin;
  Remolino(PVector _pos){
     super(new PVector(_pos.x,_pos.y),
           new PVector(random(-1,1),random(-1,1)),
           new PVector(0,0),
           0.5,0,
           0,
                            3,
                            random(86,146),random(225,255),random(0,255),
                            1.5); 
   }
  
   void design(){
         
         hueSpread();
         strokeWeight(2);
         noStroke();
         fill(hue,sat,bri,lifespan);
         for(int i=0; i<2; i++){
           ellipse(0 ,0 + 50 * sin(angle *i*2),size-chispi,size-chispi);
         }
   }
   void hueSpread(){
     hue+=0.5;
     angle+=0.1;
     if (hue > 41){
       
      hue = 39; 
     }
   }
}

class Cosmos extends Particle{
   Cosmos(PVector _pos){
     super(new PVector(_pos.x,_pos.y),
           new PVector(random(0,0),random(0,0)),
           new PVector(random(-0.001,0.001),random(-0.001,0.001)),
           0.5,0,
           100,
                            2,
                            random(160,316),random(150,255),random(170,255),
                            0.2); 
   }
}
class Cosmos_yellow extends Particle{
   Cosmos_yellow(PVector _pos){
     super(new PVector(_pos.x,_pos.y),
           new PVector(random(0,0),random(0,0)),
           new PVector(random(-0.001,0.002),random(-0.001,0.001)),
           0.5,0,
           100,
                            2,
                            40,255,255,
                            0.2); 
   }
}