<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="css" fragment="true" %>
<%@attribute name="menu" fragment="true" %>
 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
 String menuval=request.getContextPath().toString();
%>
<html>
<head>



  <link rel="stylesheet" href="<%=menuval%>/resources/bower_components/uikit/css/uikit.almost-flat.min.css" media="all">
			    <link rel="stylesheet" href="<%=menuval%>/resources/assets/icons/flags/flags.min.css" media="all">
			    <link rel="stylesheet" href="<%=menuval%>/resources/assets/css/main.min.css" media="all">
<jsp:invoke fragment="css"/>
</head>
  <body class=" sidebar_main_open sidebar_main_swipe">
    
    <div id="header_main">
      <jsp:invoke fragment="header"/>
    </div>
    
    <aside id="sidebar_main">
     	<jsp:invoke fragment="menu"/>
     </aside> 
     
    <div id="page_content">
        <div id="page_content_inner"> 
	     	 <jsp:doBody/>
	     </div>
    </div>
    
    <div id="pagefooter">
      <jsp:invoke fragment="footer"/>
      		<script src="<%=menuval%>/resources/assets/js/common.min.js"></script>
		    <!-- uikit functions -->
		    <script src="<%=menuval%>/resources/assets/js/uikit_custom.min.js"></script>
		    <!-- altair common functions/helpers -->
		    <script src="<%=menuval%>/resources/assets/js/altair_admin_common.min.js"></script>
		    <!-- tablesorter -->
		    <script src="<%=menuval%>/resources/bower_components/tablesorter/dist/js/jquery.tablesorter.min.js"></script>
		    <script src="<%=menuval%>/resources/bower_components/tablesorter/dist/js/jquery.tablesorter.widgets.min.js"></script>
		    <script src="<%=menuval%>/resources/bower_components/tablesorter/dist/js/widgets/widget-alignChar.min.js"></script>
		    <script src="<%=menuval%>/resources/bower_components/tablesorter/dist/js/extras/jquery.tablesorter.pager.min.js"></script>
		    <script src="<%=menuval%>/resources/assets/js/pages/pages_issues.min.js"></script>
		    <!--  tablesorter functions -->
		    <script src="<%=menuval%>/resources/assets/js/pages/plugins_tablesorter.min.js"></script>
		    <script src="<%=menuval%>/resources/js/redirectpage.js"></script>
    </div>
    
    
  </body>
</html>