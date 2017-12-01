<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
 
<t:Layout> 


	<jsp:attribute name="header">
			<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    <jsp:attribute name="menu">
			<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
    <jsp:body>

            <h3 class="heading_b uk-margin-bottom">Add Project</h3>

            <div class="md-card">
                <div class="md-card-content large-padding">
                    <form id="form_validation" class="uk-form-stacked" method="post" action="addOrUpdateProject" >
                       <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Title<span class="req">*</span></label>
                                    <input type="text" name="title" required class="md-input" />
                                </div>
                            </div>
                           </div>
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Description<span class="req">*</span></label>
                                    <input type="text" name="description" required class="md-input" />
                                </div>
                            </div> 
                                <div class="uk-width-large-1-2 uk-width-medium-1-1">
                                    <div class="uk-input-group">
                                        <span class="uk-input-group-addon"><i class="uk-input-group-icon uk-icon-calendar"></i></span>
	                                        <div class="md-input-wrapper">
	                                        <label for="uk_dp_1">Date*</label>
	                                        <input class="md-input" type="text" id="uk_dp_1" name="datee" data-uk-datepicker="{format:'YYYY-MM-DD'}">
	                                        <span class="md-input-bar"></span>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            
                            
                        <div class="uk-grid">
                            <div class="uk-width-1-1">
                                <button type="submit" class="md-btn md-btn-primary">Add</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
             
    </jsp:body>
    
    
</t:Layout>
