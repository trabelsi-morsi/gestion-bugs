 function redirectpage(val)
{    
	 	//alert(window.location.protocol + "//" + window.location.host);	
		//alert(  window.location.pathname);
		//alert(window.location.protocol + "//" + window.location.host+'/gestion-bugs/'+val);	
		//$("#page_content_inner").load(val); 
		$(location).attr("href",  window.location.protocol + "//" + window.location.host+'/gestion-bugs/'+val); 
}
 

  
	 