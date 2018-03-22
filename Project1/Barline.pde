Table table;

void setup() {
  size(600,600);
  background(255);
  selectInput("Select a file to process:", "fileSelected");
  
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    table = loadTable(selection.getAbsolutePath(), "header");}
}
void draw()
{if(table == null){
return;
}
else{
  line(50,550,550,550);
  line(50,50,50,550);
int x1=75;
  int y=575;
  int d1=50;
  int x=50;
  int j=0;
  int z=550;
  int k=120;
  //labels
   fill(0);
  text("X-axix: YEARS-> 70units=4years",400,77);
  text("Y-axis: Value1-> 55units=10value1",400,97);
  fill(255,2,2);
  rect(575,25,6,6);
  text("REP",560,25);
  fill(2,16,255);
  rect(575,50,6,6);
  text("DEM",560,50);
  
   
   for(int i=0;i<table.getRowCount();i++)
   
   { 
     fill(0);
     text(table.getInt(i,"YEAR"),x1,y);//Xaxis
     line(x+70,550,x+70,y);//marking on Xaxis
     x1=x1+70;
     x=x+70;
      text(j,25,z);//y axis
line(25,z-55,50,z-55);  //marking on y
  j=j+10;
  z=z-55;
  
  
  int recty=(table.getInt(i,"VALUE1")*55/10);//calculating height of the rect
  text(table.getInt(i,"VALUE1"),k,(540-recty));//marking
  k=k+70;
  
 
  if(d1==50 || d1==120 || d1==400|| d1==330)
  
 {
   fill(2,16,255);
 }
 if(d1==190 || d1==260 ||d1==470)
 {fill(255,2,2);
 }
 
  if(table.getString(i,"PARTY") == "DEM")//color blue for DEM
  {fill(2,16,255);
  }
  if(table.getString(i,"PARTY") == "REP")// color red for REP
  {
    fill(255,2,2);
  }
 
  rect(d1,(550-recty),70,recty);
  d1=d1+70;
 
}for(int i=0;i<3;i++)//for remaining values on yaxis
{
   fill(0);
text(j,25,z);
z=z-55;
j=j+10;
line(25,z,50,z);
}
stroke(0);
line(50,550,120,66);
line(120,66,190,313.5);
line(190,313.5,260,132);
line(260,132,330,55);
line(330,55,400,484);
line(400,484,470,473);
line(470,473,540,275);
stroke(0);

}}
