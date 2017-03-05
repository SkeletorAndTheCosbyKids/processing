PGraphics planet_mask;
PImage planet_blur;
PImage photo;
PImage hemi_planet;
PImage hemi_planet_blur;
PImage bg;

int counter; // Automatically initialized at 0
int hemi;
int hemi_blur;
int planet_height;
int xy_center = 1280 /2;
int y =0;

void setup() {
  size(1280, 1280);
  bg = loadImage("../assets/nasa_imgs/PIA12835_medium.jpg");
  //background(0);
  background(bg);
  photo = loadImage("../assets/jupiter/jupiter2_1k.jpg");
  planet_blur = loadImage("./planet_mask.png");
  //planet_blur = loadImage("./planet_mask2.png");
  //photo_blur = photo;
  hemi = photo.width/2; 
  hemi_blur = hemi;
  planet_height = photo.height; 

/*
  planet_mask = createGraphics(hemi, planet_height); 
  planet_mask.beginDraw();
  planet_mask.noStroke();
  //planet_mask.stroke(0, 0);
  planet_mask.strokeWeight(10);
  planet_mask.background(0);
  planet_mask.fill(255);
  planet_mask.ellipse(250, 250, 500, 500);
  planet_mask.endDraw();
 */

 
}



void draw() {
  frameRate(10);
  imageMode(CENTER);


  
  println(counter);
  
  //hemi_planet_blur = photo.get(counter,y ,hemi ,planet_height);
//  hemi_planet_blur.mask(planet_blur);
 // hemi_planet_blur.filter(BLUR,5);

  hemi_planet = photo.get(counter,y ,hemi ,planet_height);
  hemi_planet.mask(planet_blur);

 // image(planet_mask, xy_center ,xy_center);  
  image(hemi_planet, xy_center ,xy_center);  
  counter = ++counter % hemi;
    
}  

    
    
    
   

  