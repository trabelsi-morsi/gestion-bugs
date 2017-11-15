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
        
<%--             <jsp:include page="views/type/form" /> --%>
              <h3 class="heading_b uk-margin-bottom">Add User</h3>

            <div class="md-card">
                <div class="md-card-content large-padding">
                    <form id="form_validation" class="uk-form-stacked" method="post" action="<c:out value="${action}" />">
                        
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Name<span class="req">*</span></label>
                                    <input type="text" name="name" required class="md-input" />
                                </div>
                            </div>
                            
                             <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Login<span class="req">*</span></label>
                                    <input type="text" name="login" required class="md-input" />
                                </div>
                            </div>
                           
                        </div>
                       
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="email">Phone<span class="req">*</span></label>
                                    <input type="text" name="phone" data-parsley-trigger="change" required  class="md-input" />
                                </div>
                            </div>
                            
                             <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Password<span class="req">*</span></label>
                                    <input type="text" name="password" required class="md-input" />
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="email">Email<span class="req">*</span></label>
                                    <input type="email" name="email" data-parsley-trigger="change" required  class="md-input" />
                                </div>
                            </div>
                              <div class="uk-width-medium-1-2">
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
             
    </jsp:body>
    
    
</t:Layout>
