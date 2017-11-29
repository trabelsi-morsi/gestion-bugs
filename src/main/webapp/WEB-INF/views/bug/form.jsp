<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<t:Layout> 


	<jsp:attribute name="header">
			<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
				<style>
		        	#btnaddmodel{
			        	  float:right;
			        	  margin-top:-25px;border-radius: 100%;
			        	  width: 40px;height: 38px;padding: 10px 1px;
			        	  background: #2196f3;min-width: 21px;margin-bottom: 10px;
		        	  }
        		</style>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
			<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
    
    	<jsp:attribute name="footer">
		   <script>
				    function previewFiles() 
					{
				    	  var files   = document.querySelector('input[type=file]').files;
				    	  function readAndPreview(file) 
				    	  {
				    	    if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) 
				    	    {
				    	      var reader = new FileReader();
				    	      reader.addEventListener("load", function () 
				    	      {
						            $('#preview').append('<li class="uk-position-relative" style=" margin-top: 5px; ">'+
						                  '<button type="button" class="uk-modal-close uk-close uk-close-alt uk-position-absolute"></button>'+
						                  ' <img src="'+this.result+'" alt="" class="img_small"/></li>');
				    	      }, false);
				    	      reader.readAsDataURL(file);
				    	    }
				    	  }
				
				    	  if (files) {
				    	    [].forEach.call(files, readAndPreview);
				    	  }
				   }
			</script>
 	</jsp:attribute>
        
  
     
    <jsp:body>
    
    
     <h3 class="heading_b uk-margin-bottom">Add bugs</h3>
    
  <form enctype="multipart/form-data" id="form_validation"  method="post" action="addOrUpdateBug">
     <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-2-10 uk-width-large-3-10">
                
                  <div class="md-card">
                         <div class="md-card-toolbar">
                             <div class="md-card-toolbar-actions">
                                 <i class="md-icon material-icons" data-uk-modal="{target:'#modal_header_footer'}">&#xE146;</i>
                             </div>
                             <h3 class="md-card-toolbar-heading-text">
                                 Screenshots
                             </h3>
                         </div>
                         <div class="md-card-content">
                             <div class="uk-margin-bottom uk-text-center uk-position-relative">
                                 <button type="button" class="uk-modal-close uk-close uk-close-alt uk-position-absolute" ></button>
                                 
                                 <img src="https://d50m6q67g4bn3.cloudfront.net/teams_avatars/51f79653-c4c9-497a-a27d-39f5f1067b38_1450369795410" alt="" class="img_medium"/>
                             </div>
                             <ul class="uk-grid uk-grid-width-small-1-3 uk-text-center" data-uk-grid-margin>
                                 <li class="uk-position-relative">
                                     <button type="button" class="uk-modal-close uk-close uk-close-alt uk-position-absolute"></button>
                                     <img src="https://d50m6q67g4bn3.cloudfront.net/teams_avatars/51f79653-c4c9-497a-a27d-39f5f1067b38_1450369795410" alt="" class="img_small"/>
                                 </li>
                                 <li class="uk-position-relative">
                                     <button type="button" class="uk-modal-close uk-close uk-close-alt uk-position-absolute"></button>
                                     <img src="https://d50m6q67g4bn3.cloudfront.net/teams_avatars/51f79653-c4c9-497a-a27d-39f5f1067b38_1450369795410" alt="" class="img_small"/>
                                 </li>
                                 <li class="uk-position-relative">
                                     <button type="button" class="uk-modal-close uk-close uk-close-alt uk-position-absolute"></button>
                                     <img src="https://d50m6q67g4bn3.cloudfront.net/teams_avatars/51f79653-c4c9-497a-a27d-39f5f1067b38_1450369795410" alt="" class="img_small"/>
                                 </li>
                             </ul>
                         </div>
                     </div>
              
                </div>
                <div class="uk-width-xLarge-8-10  uk-width-large-7-10">
                    <div class="md-card">
                       
                        <div class="md-card-toolbar">
                            <h3 class="md-card-toolbar-heading-text">
                                Details
                            </h3>
                        </div>
                        
                        <div class="md-card-content large-padding">
                            <div class="uk-grid uk-grid-divider uk-grid-medium" data-uk-grid-margin>
                               
                        
                        
                           <div class="uk-width-large-1-2">
                           
									<div class="uk-form-row">
								        <label for="fullname">Description<span class="req">*</span></label>
								        <input type="text" name="description" required class="md-input" />
									</div>
									
									<div class="uk-form-row">
								        <label for="fullname">Product Version<span class="req">*</span></label>
								        <input type="text" name="productVersion" required class="md-input" />
									</div>
									
									<div class="uk-form-row">
								        <label for="fullname">Details Steps<span class="req">*</span></label>
								        <input type="text" name="detailSteps" required class="md-input" />
									</div>
						                           
			                        <div class="uk-form-row">
			                        	  <div class="uk-input-group">
	                                        <span class="uk-input-group-addon"><i class="uk-input-group-icon uk-icon-calendar"></i></span>
	                                        <div class="md-input-wrapper"><label for="uk_dp_end">Date Closed</label>
	                                        <input class="md-input" data-uk-datepicker="{format:'YYYY-MM-DD'}" type="text" id="uk_dp_end" name="dateC"><span class="md-input-bar"></span></div>
		                                </div>
			                        </div>
						                        
	                                <div class="uk-form-row">
	                                    <div class="uk-input-group">
	                                        <span class="uk-input-group-addon"><i class="uk-input-group-icon uk-icon-calendar"></i></span>
	                                        <div class="md-input-wrapper"><label for="uk_dp_start">Date Raised</label>
	                                        <input class="md-input" type="text" id="uk_dp_start" data-uk-datepicker="{format:'YYYY-MM-DD'}" name="dateR"><span class="md-input-bar"></span></div>
	                                    </div>
	                                </div>
					                                
					                <div class="uk-form-row">
	                                    <label for="fullname">Feedback<span class="req">*</span></label>
	                                	<textarea cols="30" rows="4" class="md-input"  name="feedback"> </textarea> 
		                            </div> 
                        	   </div>
                        	   
                               <div class="uk-width-large-1-2">
		                               <div class="uk-form-row">
				                            <select id="select_demo_1" data-md-selectize name="idCategory">
				                                <option value="">Select Category</option>
												<c:forEach var="u" items="${categories}">
						                                <option value="${u.id}">${u.title}</option> 
												</c:forEach>
				                            </select>
				                        </div>
				                        
			                            <div class="uk-form-row">
				                            <select id="select_demo_1" data-md-selectize name="idSeverity">
				                                <option value="">Select Severity</option>
												<c:forEach var="u" items="${severities}">
						                                <option value="${u.id}">${u.title}</option> 
												</c:forEach>
				                            </select>
			                        	</div>
					                           
			                            <div class="uk-form-row">
				                            <select id="select_demo_1" data-md-selectize name="idPriority">
				                                <option value="">Select Priority</option>
												<c:forEach var="u" items="${priorities}">
						                                <option value="${u.id}" >${u.title} </option> 
												</c:forEach>
				                            </select>
				                        </div>
							                        
			                           <div class="uk-form-row">
				                            <select id="select_demo_1" data-md-selectize name="idProject">
				                                <option value="">Select Project</option>
												<c:forEach var="u" items="${projects}">
						                                <option value="${u.id}">${u.title}</option> 
												</c:forEach>
				                            </select>
				                        </div>
				                   
			                            <div class="uk-form-row">
				                            <select id="select_demo_1" data-md-selectize name="idStatus">
				                                <option value="">Select Status</option>
												<c:forEach var="u" items="${status}">
						                                <option value="${u.id}">${u.title}</option> 
												</c:forEach>
				                            </select>
			                        	</div>
		                        	 
		                         
		                         <div class="uk-form-row">
			                            <select id="select_demo_1" data-md-selectize name="idUser">
			                                <option value="">Assign to</option>
											<c:forEach var="u" items="${users}">
					                                <option value="${u.id}">${u.name}</option> 
											</c:forEach>
			                            </select>
		                        	</div>
		                        	
		                       
                         </div>
                         
                            </div>
                            
                              <div class="uk-grid ">
		                            <div class="uk-width-1-1">
		                                <button type="submit" class="md-btn md-btn-primary uk-align-medium-right">Add</button>
		                            </div>
		                        </div>
                        </div>
                    </div>
                    
                </div>
            </div>
         
         
         <div class="uk-modal" id="modal_header_footer">
            <div class="uk-modal-dialog">
               
                <div class="uk-modal-header">
                 	 <div class="md-card-toolbar-actions">
                  		 <h3 class="uk-modal-title">Screenshot</h3>
	                    <div class="uk-form-file md-btn md-btn-primary" id="btnaddmodel">
	                        <i class="material-icons"  style="color:white;width: 40px;">&#xE146;</i> 
	                         <input  id="browse" type="file" onchange="previewFiles()" multiple >
	                     </div>  
                     </div> 
                </div>     
                    
                   <ul class="uk-grid uk-grid-width-small-1-3 uk-text-center" id="preview" data-uk-grid-margin></ul>
                        
                <div class="uk-modal-footer uk-text-right">
                    <button type="button" class="md-btn md-btn-flat uk-modal-close">Close</button><button type="button" class="md-btn md-btn-flat md-btn-flat-primary">Action</button>
                </div>
            </div>
        </div>
        
             
   </form>
   
   
   
   
   
   
   

                            
                            
    </jsp:body>
    
    
</t:Layout>
