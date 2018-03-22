void setup()
{size(600,600);
background(255);
}

void draw()
{
  
line(50,550,550,550);
  line(50,50,50,550);
  int a=1992;
  int x=50;
  int x1=75;
  int y=575;
  int j=0;
  int z=550;
  fill(0);
  text("X-axix: YEARS-> 70units=4years",400,77);
  text("Y-axis: Value1-> 55units=10",400,97);
  fill(255,2,2);
  rect(575,25,6,6);
  text("REP",560,25);
  fill(2,16,255);
  rect(575,50,6,6);
  text("DEM",560,50);
  for(int i=0;i<8;i++)
  {
    fill(0);
text(a, x1 , y);//x axis
line(x+70,550,x+70,y);//marking on x
    a=a+4;
    x=x+70;
    x1=x1+70;
    fill(0);
  text(j,25,z);//y axis
line(25,z-55,50,z-55);  //marking on y
  j=j+10;
  z=z-55;
}
text(80,25,z);
z=z-55;
text(90,25,z);
line(25,z,50,z);
stroke(2,16,255);
line(50,550,120,66);
fill(2,16,255);
text("(88)",120,61);
line(120,66,190,313.5);
fill(2,16,255);
text("(43)",190,318.5);
stroke(255,2,2);
line(190,313.5,260,132);
fill(255,2,2);
text("(76)",260,137);
line(260,132,330,55);
fill(255,2,2);
text("(90)",330,50);
stroke(2,16,255);
line(330,55,400,484);
fill(2,16,255);
text("(12)",400,479);
line(400,484,470,473);
fill(2,16,255);
text("(!4)",473,470);
stroke(255,2,2);
line(470,473,540,275);
fill(255,2,2);
text("(50)",540,270);
stroke(0);
}
