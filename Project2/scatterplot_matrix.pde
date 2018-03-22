Table table;
int top;
int bottom;
int left;
int right;
int d;
int d1;

//variables used for markings
float y1=0;
int x1=0;
int ybottom;
int xbottom;
int tleft;
int tyleft;
int[] satm;
int[] satv;
float[] gpa;
int[] act;




void setup() {
size(600,600);
background(255);

  //cacluating the size for the axes using the size of the canvas 
right=width-50;
left=width-right;
bottom=height-50;
ybottom=height-50;
xbottom=height-50;
top=height-bottom;
tleft=width-right;
tyleft=width-right;
d=((right+left)/2)/2-(left/2);
d1=(top+(bottom+top)/2)/2-(top);
selectInput("Select a file to process:", "fileSelected");
  
}

//Loading table using loadtable and selectInput

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    table = loadTable(selection.getAbsolutePath(), "header");}
}

//drawing axes
void axes()
{
line(left,bottom,left,top);
line(left,bottom,right,bottom);
line(right,bottom,right,top);
line(left,top,right,top);
line(left,(bottom+top)/2,right,(bottom+top)/2);
line((right+left)/2,top,(right+left)/2,bottom);
line((left+(right+left)/2)/2,top,(left+(right+left)/2)/2,bottom);
line(left,(top+(bottom+top)/2)/2,right,(top+(bottom+top)/2)/2);
line(d+(right+left)/2,top,d+(right+left)/2,bottom);
line(left,d1+(top+bottom)/2,right,d1+(top+bottom)/2);
}
void markings()
{
  text("SATM",left*2,top-10);
  text("SATV",(left+right)/2-left-30,top-10);
  text("ACT",d+(right+left)/2-left-30,top-10);
  text("GPA",right-left-30,top-10);
  text("SATM",left-40,top+70);
  text("SATV",left-40,(bottom+top)/2-70);
  text("ACT",left-30,(bottom+top)/2+70);
  text("GPA",left-30,bottom-top);
}
void ellipse1()

{
  satm=new int[table.getRowCount()];
  satv=new int[table.getRowCount()];
  act=new int[table.getRowCount()];
  gpa= new float[table.getRowCount()]; 
  for(int i=0;i<table.getRowCount();i++)
{
  
  satm[i]=table.getInt(i,"SATM");
  satv[i]=table.getInt(i,"SATV");
  act[i]=table.getInt(i,"ACT");
  gpa[i]=table.getFloat(i,"GPA");
  fill(0);
  //satm vs gpa
  ellipse(satm[i]*.125+left,gpa[i]*12.5+450,2,2);
  ellipse(gpa[i]*12.5+450,satm[i]*.125+top,2,2);
  
  //satm vs satv
  ellipse(satv[i]*.125+175,satm[i]*.125+top,2,2);
  ellipse(satm[i]*.125+left,satv[i]*.125+top+125,2,2);
  
  //satm vs act
  ellipse(satm[i]*.125+left,act[i]+300,2,2);
  ellipse(act[i]+300,satm[i]*.125+top,2,2);
  
  //satv vs act
  ellipse(satv[i]*.125+175,act[i]+300,2,2);
  ellipse(act[i]+300,satv[i]*.125+top+125,2,2);
  
  //satv vs gpa
  ellipse(satv[i]*.125+175,gpa[i]*12.5+450,2,2);
  ellipse(gpa[i]*12.5+450,satv[i]*.125+top+125,2,2);
   
   //gpa vs act
  ellipse(gpa[i]*12.5+450,act[i]+300,2,2);  
  ellipse(act[i]+300,gpa[i]*12.5+450,2,2);
  
 
} 
}
void draw()
{if(table == null){
return;
}
else{
  axes();
  markings();
  ellipse1();
}
}
