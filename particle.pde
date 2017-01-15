class Particle{
   
  PVector pos;
  PVector speed;
  PVector accel;
  
  float rdmx,rdmy;   
     
  float stm;
  
  float vibr;
    
  float amp;
  float angle;
  float Aspeed;
  
  float size;
  float lifespan;
  float lifespanspeed;
  float mass;
  
  color colorfig ;
  float hue,sat,bri;
  
  Particle(PVector _pos,
           PVector _speed,
           PVector _accel,
           float _rdmx,float _rdmy,
           float _amp,
           float _size,
           float _hue,float _sat, float _bri,
           float _lifespanspeed){
   
    mass = 1;
    
      
    pos = _pos;
    speed = _speed;
    accel = _accel;
    rdmx = _rdmx; rdmy =_rdmy;
    size = _size;
    
    amp = _amp;
    Aspeed = 0.001;
    
    hue = _hue;
    sat = _sat;
    bri = _bri;
    
    lifespanspeed = _lifespanspeed;
    lifespan = 255;
    stm = 8;
    
  }
  void run(){
    
   display();
   update();
  }
  
  void applyForce(PVector _f){
    
    _f.div(mass);
     accel.add(_f);
  }
  
  
  void display(){
     pushMatrix();
     translate(pos.x,pos.y);
     rotate(speed.heading());
     design();                 
     popMatrix();
  }
  
  
  void update(){
   
    //applyForce(new PVector(map(mouseX,0,width,-0.5,0.5),map(mouseY,0,height,-0.5,0.5)));
    //atractTomouse();
    
    addRandom(rdmx,rdmy);
   
    speed.add(accel);
    speed.limit(5);
     
     
    pos.add(speed);
    lifespan -=lifespanspeed;
    
  }
  void angular(){
    
    angle+=0.05;
    PVector oscilator = new PVector(10 * sin(angle),10 * cos(angle));
    oscilator.normalize();
    pos.add(oscilator);
    
    
  }
  void atractTomouse(){
    if(mousePressed){
    PVector mouse = new PVector (mouseX,mouseY);
    PVector dir = PVector.sub(mouse,pos);
    
    dir.normalize();
    dir.mult(stm);
    speed.add(dir);
    }
  }
  
  boolean isDead(){
   if (lifespan < 0){
    return true; 
   }
   else {
    return false; 
   }
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
     star(0,0,size*2,size-size/4,5);        
  }
  
  
  
  void star(float x, float y, float radius1, float radius2, int npoints) {
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius2;
      float sy = y + sin(a) * radius2;
      vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  } 
  
 
  void addRandom(float _rdmx,float _rdmy){
      PVector rdm = PVector.random2D();
      rdm.x = rdm.x * _rdmx; 
      rdm.y = rdm.y * _rdmy;
      
      //rdm.normalize();
      
      speed.add(rdm);    
  }
}