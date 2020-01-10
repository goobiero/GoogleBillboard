public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public int CUT = 0;
public void setup()  
{
	size(250,100);
	background(0); 
	String digits;
	for(int i = 10; i < e.length(); i++){       
		digits = e.substring(i -10, i);
		double dNum = Double.parseDouble(digits);
		//System.out.println(dNum + " " +isPrime(dNum));
		if(isPrime(dNum) == true){
			//System.out.println(dNum);
			draw("this is your prime:  " + digits);
			//break;
		}
	}
		
    //your code here 
}  

public void draw(String dNum)  
{   
	CUT = CUT + 25; 
	fill(255);
	text(dNum,20,CUT);
	//not needed for this assignment

}  
public boolean isPrime(double dNum)  
{   
    //your code here 
    for(int i = 2; i < Math.sqrt(dNum); i++){
    	if(dNum % i == 0){
    		return false;
    	}
    }  
    return true;  
} 
