/**
 *  
 */
 var timer2=null;
 function startmove(){
		
		var oDiv=document.getElementById('middle_b');
		var d1=document.getElementById('d1');
		var d2=document.getElementById('d2');
		var aImg=oDiv.getElementsByTagName('img');
		var in_d=document.getElementById('in_middle_b'); 

					
				d2.innerHTML=d1.innerHTML;
				oDiv.scrollLeft=oDiv.scrollWidth;															
			clearInterval(timer2);
			
	timer2=setInterval(
		function(){       
				//document.title=oDiv.background;
						if(oDiv.scrollLeft<=0)
						{/* scrollLeft:可滚动的左边值  */
							oDiv.scrollLeft+=d2.offsetWidth;
						
						}else
						{
							oDiv.scrollLeft--;
						}	
				},30);
 }
 
 function activityapply(){
	  location.href ='activityapply.jsp';

	}
 window.onload=function (){
		
		startmove();
	
};