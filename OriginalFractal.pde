
public void setup() {
  size(300,300,P3D);
	background(19, 179, 214);
	

}



void draw() 
{

fractal(150,150,150,100,100,100);
	
}


public void fractal(int x,int y,int z,int wid,int len, int r)
{  color c = color(225, 225, 225);
   //noStroke();
   noFill();
   stroke(c);
   if(len<=70)
   {
   	   
   	    translate(x,y,z);
		// rotateX(0.3);
		// rotateY(0.3);
    rotate(0.3); 
		sphere(r);
		// rotateY(-0.3);
		// rotateX(-0.3);
    rotate(-0.3);
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