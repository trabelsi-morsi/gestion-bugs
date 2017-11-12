<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
 
<t:Layout> 


	  <jsp:attribute name="css">
			    <link rel="stylesheet" href="./resources/bower_components/uikit/css/uikit.almost-flat.min.css" media="all">
			    <link rel="stylesheet" href="./resources/assets/icons/flags/flags.min.css" media="all">
			    <link rel="stylesheet" href="./resources/assets/css/main.min.css" media="all">
	  </jsp:attribute>
  
    <jsp:attribute name="header">
        <%@include  file="WEB-INF/basefragments/header_main.jsp" %>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
			<%@include  file="WEB-INF/basefragments/menu.jsp" %>
     </jsp:attribute>
     
     
     
    <jsp:attribute name="footer">
			<script src="./resources/assets/js/common.min.js"></script>
		    <!-- uikit functions -->
		    <script src="./resources/assets/js/uikit_custom.min.js"></script>
		    <!-- altair common functions/helpers -->
		    <script src="./resources/assets/js/altair_admin_common.min.js"></script>
		    <!-- tablesorter -->
		    <script src="./resources/bower_components/tablesorter/dist/js/jquery.tablesorter.min.js"></script>
		    <script src="./resources/bower_components/tablesorter/dist/js/jquery.tablesorter.widgets.min.js"></script>
		    <script src="./resources/bower_components/tablesorter/dist/js/widgets/widget-alignChar.min.js"></script>
		    <script src="./resources/bower_components/tablesorter/dist/js/extras/jquery.tablesorter.pager.min.js"></script>
		    <script src="./resources/assets/js/pages/pages_issues.min.js"></script>
		    <!--  tablesorter functions -->
		    <script src="./resources/assets/js/pages/plugins_tablesorter.min.js"></script>
		    <script src="./resources/js/redirectpage.js"></script>
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