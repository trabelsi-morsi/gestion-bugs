<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<t:Layout> 


	<jsp:attribute name="header">
        	<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
				<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
    <jsp:body>
    
   			<h3 class="heading_b uk-margin-bottom">Edit Status</h3>
            <div class="md-card">
				<div class="md-card-content large-padding">
					<form id="form_validation" class="uk-form-stacked" method="post" action="../addOrUpdateStatus">
						<input type="hidden" name="id" value="${status.id}" />
					     <div class="uk-grid data-uk-grid-margin">
					         <div class="uk-width-large-1-1">
					            <div class="parsley-row">
					                <label for="fullname">Title<span class="req">*</span></label>
					   				<input type="text" name="title" required class="md-input" value="${status.title}" /> 
					            </div>
					        </div> 
					    </div> 
					    
					      <div class="uk-grid data-uk-grid-margin">
					         <div class="uk-width-large-1-1">
					            <div class="parsley-row">
					                <label for="fullname">Description<span class="req">*</span></label>
					   				<input type="text" name="description" required class="md-input" value="${status.description}" /> 
					            </div>
					        </div> 
					    </div>
					    <div class="uk-grid">
					        <div class="uk-width-1-1">
					            <button type="submit" class="md-btn md-btn-primary">Update</button>
					        </div>
					    </div>
					</form>
				</div>
            </div>
  
    </jsp:body>
    
    
</t:Layout>


            
            
 