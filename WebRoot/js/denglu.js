function  denglu(){
	   var denglu = document.getElementById("denglu");
	   var dengludiv =document.getElementById("dengludiv");
	   var ludeangA =document.getElementById("ludeangA");
	   var ludeangB =document.getElementById("ludeangB");
	   var ludeangC =document.getElementById("ludeangC");
	   var ludeangD =document.getElementById("ludeangD");
	   
//	   denglu.onclick =function() {
//          dengludiv.style.display="block";
//	   }
//	   ludeangC.onclick =function(){
//	   	    dengludiv.style.display="none";
//	   }
	   function Dian(obj,shijian,hanshu){
	   	   obj[shijian] = function (){
	   	   	     hanshu();
	   	   }
	   }
	   Dian(denglu,"onclick",function (){
	   	   dengludiv.style.display="block";
	   });
	   Dian(ludeangC,"onclick",function (){
	   	   dengludiv.style.display="none";
	   });
	   Dian(ludeangB,"onclick",function (){
	   	      ludeangA.style.zIndex="1";
	   	      ludeangB.style.zIndex="2";
	   	      ludeangD.innerHTML="点我用户登录";
	   });
	   	   Dian(ludeangD,"onclick",function (){
	   	     ludeangA.style.zIndex="2";
	   	     ludeangB.style.zIndex="1";
	   	     ludeangD.innerHTML ="点这管理登录";
	   });
}