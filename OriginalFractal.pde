
public void setup() {
	background(19, 179, 214);
	size(300,300,P3D);

}



void draw() 
{

fractal(150,150,150,90,90,30);
	
}


public void fractal(int x,int y,int z,int wid,int len, int r)
{  color c = color(245, 84, 63);
   //noStroke();
   stroke(c);
   if(len<=70)
   {
   	   
   	    translate(x,y,z);
		rotateX(mouseX*0.3);
		rotateY(mouseY*0.3); 
		sphere(r);
		rotateY(mouseX*-0.3);
		rotateX(mouseY*-0.3);
		translate(-x,-y,-z);

   }
   else 
   {
   	  
	 fractal(x+wid/2,y,z,wid/2,len/2,r/2);
     fractal(x,y+len/2,z,wid/2,len/2,r/2);
     fractal(x-wid/2,y,z,wid/2,len/2,r/2);
     fractal(x,y-len/2,z,wid/2,len/2,r/2);

	 
   } 
}