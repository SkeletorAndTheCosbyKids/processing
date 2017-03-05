size(500,500);

background(0);
int gray = 0;

int i =500;
while(  i> 475 ){
//fill(i,i,i);

fill(gray);
noStroke();
//rect(0,i,400,30);
ellipse(250,250, i, i);
gray = (gray + 10)%255;
i = i -1;
println(gray);
println(i);

};


fill(255);
ellipse(250,250, i, i);

save("planet_mask.png");
clear();

gray = 0;

i =500;
while(  gray<= 255 ){
//fill(i,i,i);

fill(gray);
//rect(0,i,400,30);
ellipse(250,250, i, i);
gray = (gray + 1);
i = i -1;
println(gray);
println(i);

};


//fill(255);
//ellipse(250,250, i, i);