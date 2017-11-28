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
			{  $("#zoneimage").attr("src",val); }
			</script>
    </jsp:attribute>
    
    <jsp:body>
    
   			<h3 class="heading_b uk-margin-bottom">Edit ScreenShot</h3>
            <div class="md-card">
				<div class="md-card-content large-padding">
					<form enctype="multipart/form-data" id="form_validation" class="uk-form-stacked" method="post" action="../addOrUpdateScreenShot">
						<input  type="hidden" name="id" value="${screenshot.id}" />
					     
					    
					      <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Name<span class="req">*</span></label>
                                    <input type="text" name="name" required class="md-input" value="${screenshot.name}"  />
                                </div>
                            </div>
                             
                            <div class="uk-width-medium-1-2">
                         	        <div class="md-card-head-avatar"   onclick="viewphotomodel('${screenshot.photo}')"  data-uk-modal="{target:'#modal_lightbox'}">
	                                   <img class="md-user-image" src="${screenshot.photo}"    id="styleimage">
	                               </div>
                                    
		                            <div class="uk-form-file md-btn md-btn-primary" style=" width: 200px; ">
		                               <i class="material-icons"  style="color:white;width: 40px;">&#xE413;</i>Upload Photo
		                                <input id="form-file" type="file" name="photoFile" >
		                                <input type="hidden" name="photo" value="${screenshot.photo}"   />
		                            </div> 
	                       </div> 
                        </div>
                         
					    <div class="uk-grid " data-uk-grid-margin>
					        <div class="uk-width-1-1">
					            <button type="submit" class="md-btn md-btn-primary">Update</button>
					        </div>
					    </div>
					</form>
				</div>
            </div>
  
    </jsp:body>
    
    
</t:Layout>


            
            
 