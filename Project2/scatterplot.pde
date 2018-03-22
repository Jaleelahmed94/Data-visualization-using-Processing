Table table;
int top;
int bottom;
int left;
int right;


//variables used for markings
int y1=250;
int x1=350;
int ybottom;
int xbottom;
int tleft;
int tyleft;


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
}
void markings()
{
  for(int i=0; i<table.getRowCount();i++)
  {  //yAxis
    fill(0);
    text(y1,tyleft-25,ybottom);
    line(tyleft-25,ybottom,tyleft,ybottom);
  
    //xAxis
    text(x1,tleft,xbottom+25);
    line(tleft,xbottom,tleft,xbottom+25);
    
    //scale
     y1=y1+50;    
     x1=x1+50;
     ybottom=ybottom-50;
     tleft=tleft+50;
     
  }
} 
 void ellipse1()
 {
   for(int i=1;i<table.getRowCount();i++)
   {
     
     fill(0);
     ellipse((table.getInt(i,"SATM"))- 350 + 50 ,550 - table.getInt(i,"SATV")+250  ,2,2);
     
   }
 }
 
 void legends()
 {
   fill(255);
   rect(right-100,bottom-150,100,70);
   fill(0);
   text("X-axis-SATM",right-85,bottom-125);
   text("Y-axis-SATV",right-85,bottom-100);
   text("Final Limit",right-79,bottom-85);
   fill(255,0,0);
   rect(right-85,bottom-95,4,4);
   
 }

void draw()
{ 
  if(table == null){
return;
}
else{
  legends();
axes();
markings();
ellipse1();
line(50,0,50,50);
fill(255,0,0);
text(800,25,10);


  
}
}
