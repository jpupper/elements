
int cant = 15;
int PSytemtype = 1;

//ParticleSystem Ps;
float rot;
ArrayList<ParticleSystem> Ps ;
   
void setup(){
  
  colorMode(HSB);
 // size(1200,600);
  fullScreen();
  Ps = new ArrayList<ParticleSystem>(); 
  //Ps = new ParticleSystem(new PVector(width/2,height/2));
  background(0);
}

void draw(){
  
    background(0);
    for (int i =Ps.size()-1; i>=0 ; i--){
      ParticleSystem ps  = Ps.get(i); 
        
        ps.run();     
        
    }
    
    
    //buscacolor
    /*
    
    
    fill(map(mouseX,0,width,0,255),255,255);
    
    println("TONO : ",map(mouseX,0,width,0,255));
    ellipse(width/2,height/2,100,100);*/
    
    saveFrame("img/#####-elements.jpg");
}