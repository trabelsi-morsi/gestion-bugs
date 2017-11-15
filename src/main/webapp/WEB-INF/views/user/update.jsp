<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<t:Layout> 


	<jsp:attribute name="header">
        	<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
        	<style>
        	#styleimage{
        	 width: 250px;border-radius: 0%;box-shadow: 0 10px 20px rgba(0,0,0,.19), 0 6px 6px rgba(0,0,0,.23);
        	 }
        	</style>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
				<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
    
      <jsp:attribute name="footer">
			<script>
			function viewphotomodel(val)
			{
				document.getElementById("zoneimage").src = val;
			}
			</script>
    </jsp:attribute>
    
    <jsp:body>
    
   			<h3 class="heading_b uk-margin-bottom">Edit Type</h3>
            <div class="md-card">
				<div class="md-card-content large-padding">
					<form id="form_validation" class="uk-form-stacked" method="post" action="updateUser">
					   
						 
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Name<span class="req">*</span></label>
                                    <input type="text" name="name" required class="md-input" value="<c:out value="${user.name}" />" />
                                </div>
                            </div>
                            
                             <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Login<span class="req">*</span></label>
                                    <input type="text" name="login" required class="md-input" value="<c:out value="${user.login}" />" />
                                </div>
                            </div>
                           
                        </div>
                       
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="email">Phone<span class="req">*</span></label>
                                    <input type="text" name="phone"  required  class="md-input" value="<c:out value="${user.phone}" />"/>
                                </div>
                            </div>
                            
                             <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Password<span class="req">*</span></label>
                                    <input type="text" name="password" required class="md-input" value="<c:out value="${user.password}" />"/>
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="email">Email<span class="req">*</span></label>
                                    <input type="email" name="email" data-parsley-trigger="change" required  class="md-input" value="<c:out value="${user.email}" />"/>
                                </div>
                            </div>
                              
                             <div class="uk-width-medium-1-2">
	                              <div class="md-card-head-avatar"   onclick="viewphotomodel('<c:out value="${user.photo}"/>')"  data-uk-modal="{target:'#modal_lightbox'}">
	                                   <img class="md-user-image" src="<c:out value="${user.photo}" />" alt="<c:out value="${user.name}" />" id="styleimage">
	                               </div>
                                    
		                            <div class="uk-form-file md-btn md-btn-primary" style=" width: 200px; ">
		                               <i class="material-icons"  style="color:white;width: 40px;">&#xE413;</i>Upload Photo
		                                <input id="form-file" type="file" name="photo">
		                            </div> 
	                        </div>
                        
                        </div>
                         
					    <div class="uk-grid">
					        <div class="uk-width-1-1">
					            <button type="submit" class="md-btn md-btn-primary">Submit</button>
					        </div>
					    </div>
					</form>
				</div>
            </div>
  
  					   <div class="uk-modal" id="modal_lightbox">
                           <div class="uk-modal-dialog uk-modal-dialog-lightbox">
                               <button type="button" class="uk-modal-close uk-close uk-close-alt"></button>
                               <img src="" id="zoneimage"/>
                           </div>
                       </div>
                       
    </jsp:body>
    
    
</t:Layout>


            
            
 