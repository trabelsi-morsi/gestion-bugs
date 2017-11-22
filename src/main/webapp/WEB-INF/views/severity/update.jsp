<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:Layout> 


	<jsp:attribute name="css">
	  			 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/kendo-ui/styles/kendo.common-material.min.css"/>
  				 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/kendo-ui/styles/kendo.material.min.css"/>
    </jsp:attribute>
    
	<jsp:attribute name="header">
        	<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
				<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
     <jsp:attribute name="footer">
			<script src="${pageContext.request.contextPath}/resources/assets/js/kendoui_custom.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/pages/kendoui.min.js"></script>
			<script>
				function changecolor()
				{
					 $("#idcolor").val($(".k-selected-color-display").css("backgroundColor"));
				} 
				
			 
				setTimeout(function(){ 
					$(".k-selected-color").css("background-color","${severity.color}");
					}, 100);
				</script>
 </jsp:attribute>
    <jsp:body>
    
   			<h3 class="heading_b uk-margin-bottom">Edit Severity</h3>
            <div class="md-card">
				<div class="md-card-content large-padding">
					<form id="form_validation" class="uk-form-stacked" method="post" action="../addOrUpdateSeverity">
						<input type="hidden" name="id" value="${severity.id}" />
						<div class="uk-grid" data-uk-grid-margin>
					       	<div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Title<span class="req">*</span></label>
                                    <input type="text" name="title" required class="md-input" value="${severity.title}"  />
                                </div>
                            </div>
                            
					                 <div class="uk-grid data-uk-grid-margin">
					                     <div class="uk-width-large-1-1">
					                         <div class="parsley-row">
					                             <label for="fullname">Description<span class="req">*</span></label>
					   <textarea cols="30" rows="4" class="md-input"  name="description"  >${severity.description}</textarea> 
					            </div>
					        </div> 
					    </div> 
					       <div class="uk-width-medium-1-2">
                         	   <h4 class="heading_list" >Color Picker</h4>
                               <div id="kUI_color_picker"  onchange="changecolor()"></div>
                               
                        </div>
                        <input type="hidden" name="color" id="idcolor" required class="md-input" value="${severity.color}" />
                     
					    </div>
					    <div class="uk-grid">
					        <div class="uk-width-1-1">
					            <button type="submit" class="md-btn md-btn-primary">Submit</button>
					        </div>
					    </div>
					</form>
				</div>
            </div>
  
    </jsp:body>
 
    
</t:Layout>


            
            
 