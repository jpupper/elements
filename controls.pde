void mousePressed(){
  Ps.add(new ParticleSystem(new PVector(mouseX,mouseY)));
}

void keyPressed(){
  
 if (key == 'a'){
   PSytemtype =1;   
 }
 if (key == 's'){
   PSytemtype =2;
 }
 if (key == 'd'){
   PSytemtype =3;
   
 }
 if (key == 'f'){
   PSytemtype =4; 
 } 
}