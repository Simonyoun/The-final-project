window.onload =function (){
	   var you1 = document.getElementById("you1");
	   var you2 = document.getElementById("you2");
	   var you3 = document.getElementById("you3");
	   var a =0;
	   function you(){
	   	    
            a=++a;
            if(a>=3){
            	a=0
            }
	   	     	 if(a==0){
	   	     	 	 you1.style.display="block";
	   	     	 	 you2.style.display="none";
	   	     	 	 you3.style.display="none";
	   	     	 }
	   	     	 if(a==1){
	   	     	 	 you1.style.display="none";
	   	     	 	 you2.style.display="block";
	   	     	 	 you3.style.display="none";
	   	     	 }
	   	     	 if(a==2){
	   	     	 	 you1.style.display="none";
	   	     	 	 you2.style.display="none";
	   	     	 	 you3.style.display="block";
	   	     	 }
	   }
	   window.setInterval(you,3000);
}
