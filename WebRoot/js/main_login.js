// JavaScript Document

window.onload = function(){

	mv.app.toTip();
};
var mv={};

mv.tools ={};




mv.ui = {};

mv.ui.textChange= function(obj,str,obj_text) {

	obj.onfocus = function(){		
		if(obj_text.innerHTML == str){
			obj_text.innerHTML  = '';
			atler(str);

		}
	};
	
	obj.onblur = function(){
		if(obj_text.innerHTML==''&&obj.value==''){
			
			obj_text.innerHTML  = str;
					
		}
	};
	
	};
	
	mv.ui.textClear= function(obj,str,obj_text) {
			if(obj.value!=''){
				obj_text.innerHTML = '';	
			}
		
		};


mv.app ={};

mv.app.toTip = function() {
	var password =document.getElementById('password');
	var  email = document.getElementById('email');
	
	var field = document.getElementById('text_user');
	var field2 = document.getElementById('text_password');
	

	mv.ui.textClear(email,'用户名',field);	
	mv.ui.textClear(password,'密码',field2);	
	
	mv.ui.textChange(email,'用户名',field);	
	mv.ui.textChange(password,'密码',field2);	
	


	};
	
	
  function validateLogin(){	
    var userName = document.getElementById("email").value ;
    var passWord = document.getElementById("password").value;

    if (userName ==""){
     alert("用户名不能为空");
     return false ;
    }
    
    if (passWord ==""){
     alert("密码不能为空");
     return false ;
    }
   }	
  
	

	
