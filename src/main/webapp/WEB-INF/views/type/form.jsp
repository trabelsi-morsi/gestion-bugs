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
        
<%--             <jsp:include page="views/type/form" /> --%>
              <h3 class="heading_b uk-margin-bottom">Add Type</h3>

            <div class="md-card">
                <div class="md-card-content large-padding">
                    <form id="form_validation" class="uk-form-stacked" method="post" action=" ">
                        <div class="uk-grid data-uk-grid-margin">
                            <div class="uk-width-large-1-1">
                                <div class="parsley-row">
                                    <label for="fullname">Description<span class="req">*</span></label>
                                	<textarea cols="30" rows="4" class="md-input"  name="description"  > </textarea> 
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