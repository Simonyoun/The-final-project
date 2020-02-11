window.onload =function(){
	   var imgList = document.getElementById("luobotu");
	   var imgarr =imgList.getElementsByTagName("img");
	   imgList.style.width=1120*imgarr.length+"px";
	   var nevdiv=document.getElementById("navdiv");
	   var nevA=nevdiv.getElementsByTagName("a");
	   nevdiv.style.left=(1100-25*nevA.length)/2+"px";
	   var index=0;
	   autoChange();
	   nevA[index].style.background="url(img/jian.png) no-repeat";
	   for (var i=0; i<nevA.length ; i++) {
	   	      nevA[i].num = i;
	   	    nevA[i].onclick =function(){
	   	    	clearInterval(timer);
	   	    	index = this.num;
	   	        //imgList.style.left=(-1120*index)+"px";
	   	        move(imgList,"left",-1120*index,200,function(){
	   	        	autoChange();
	   	        });
	   	    	 setA();
	   	    	
	   	    };
	   	    
	   }
	    function setA(){
	    	if(index >= imgarr.length-1){
	    		 index=0;
	    		 imgList.style.left=0;
	    	}
	   	    for(var i=0; i<nevA.length;i++){
	   	   	    nevA[i].style.background="";
	   	   	   
	   	    }
	   	     nevA[index].style.background="url(img/jian.png) no-repeat";
	   }
	  var timer;
      function autoChange(){
      	   timer = setInterval(function(){
      	     	  index++;
      	     	  index %=imgarr.length;
      	     	  move(imgList,"left",-1120*index,150,function(){
      	     	  	 setA();
      	     	  });
      	     	  
      	     },3000);
      }
      denglu();
}

