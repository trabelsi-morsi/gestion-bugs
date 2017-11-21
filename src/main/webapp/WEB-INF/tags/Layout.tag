<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="css" fragment="true" %>
<%@attribute name="menu" fragment="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

   <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no"/>

    <link rel="icon" type="image/png" href="${contextPath}/resources/assets/img/logo.png" sizes="16x16">
    <link rel="icon" type="image/png" href="${contextPath}/resources/assets/img/logo.png" sizes="32x32">

    <title>Gestion Bugs</title>

  <link rel="stylesheet" href="${contextPath}/resources/bower_components/uikit/css/uikit.almost-flat.min.css" media="all">
			    <link rel="stylesheet" href="${contextPath}/resources/assets/icons/flags/flags.min.css" media="all">
			    <link rel="stylesheet" href="${contextPath}/resources/assets/css/main.min.css" media="all">
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
      		<script src="${contextPath}/resources/assets/js/common.min.js"></script>
		    <!-- uikit functions -->
		    <script src="${contextPath}/resources/assets/js/uikit_custom.min.js"></script>
		    <!-- altair common functions/helpers -->
		    <script src="${contextPath}/resources/assets/js/altair_admin_common.min.js"></script>
		    <!-- tablesorter -->
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/jquery.tablesorter.min.js"></script>
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/jquery.tablesorter.widgets.min.js"></script>
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/widgets/widget-alignChar.min.js"></script>
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/extras/jquery.tablesorter.pager.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/pages_issues.min.js"></script>
		    <!--  tablesorter functions -->
		    <script src="${contextPath}/resources/assets/js/pages/plugins_tablesorter.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/components_notifications.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/forms_file_upload.min.js"></script>
     	<jsp:invoke fragment="footer"/>
    </div>
    
    
  </body>
</html>