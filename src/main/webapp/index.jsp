<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
 
<t:Layout> 


	  <jsp:attribute name="css">
			   
	  </jsp:attribute>
  
    <jsp:attribute name="header">
        <%@include  file="WEB-INF/basefragments/header_main.jsp" %>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu"> 
			<jsp:include page="WEB-INF/basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
     
     
     
    <jsp:attribute name="footer">
			
    </jsp:attribute>
    
    <jsp:body>
		Gestion bugs
    </jsp:body>
    
    
</t:Layout>