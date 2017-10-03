// Is this the Simplest? 

color jiggyvjcolour;
color openingcolour = #EEAFF5; 
color excitingcolour = #1C39EA;
color inversioncolour = #EA1C5E; 
color closingcolour = #F5A523; 


color[] mycolours = {openingcolour, closingcolour, inversioncolour, excitingcolour}; 

void setup() { //Function definition, declaring type and name of function in {arguments} 
  //size(640,480);  // Function, determind the size of frame. You much call size at beginning of sketch 
  fullScreen(); 
  noCursor(); 
  
  jiggyvjcolour = openingcolour; 
} 

void draw () {
  noStroke();
  // Beware of interger divison!!!
  // Map() might be a better idea 
  // float myopacity = ((float)mouseX / (float) width); 
  float myopacity = map(mouseX, 0,width, 0,255); 
  float colourindex = map(mouseY,0,height,0,4);
  jiggyvjcolour = mycolours [(int)colourindex];

  if (mousePressed == true) { // Boolean assignment 
    fill(#1CEA28, myopacity);    
  }else{
    fill(jiggyvjcolour,myopacity);
  }
  rect(0,0,width,height);
  fill(#FDA7FF);
  if(frameCount % 2 == 0){
   rect(mouseX,mouseY,100,100);
  }else{
   ellipse(mouseX,mouseY,100,100); 
  }
  stroke(00000);
  
  //line(mouseY,0,mouseY,height); // map y to x
  //line(0,mouseX,width,mouseY); // map origin and y 
  
  //line(0,mouseY,width,mouseY); // x intercept 
  //line(mouseX,0,mouseX,height); // y intercept
  
  //Cross axises
  line(0,0,mouseX,mouseY); 
  line(0,height,mouseX,mouseY);
  line(width,height,mouseX,mouseY); 
  line(width,0,mouseX,mouseY);
  
}

// Method - is the method of the object 
// object oridented programming - actions are called programming 
// change the lines of correct code and see the error and fix it to keep going 
// If statements - control structure 
// DON'T COPY CODE 
// The Code should tell you what your doing