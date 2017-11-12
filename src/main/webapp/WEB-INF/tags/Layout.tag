<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="css" fragment="true" %>
<%@attribute name="menu" fragment="true" %>
 

<html>
<head>
 
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
    </div>
    
    
  </body>
</html>