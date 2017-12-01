<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<t:Layout> 


	<jsp:attribute name="header">
        	<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
				<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
    <jsp:body>
    
   			<h3 class="heading_b uk-margin-bottom">Consult Project</h3>
            <div class="md-card">
				<div class="md-card-content large-padding">
				
				<div class="uk-width-large-1-2 uk-width-medium-1-1">
                            <ul class="md-list md-list-addon">
                                <li>
                                    <div class="md-list-addon-element">
                                        <i class="md-list-addon-icon material-icons">&#xE264;</i> 
                                    </div>
                                    <div class="md-list-content">
                                        <span class="md-list-heading">Title</span>
                                        <span class="uk-text-small uk-text-muted">${project.title}</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="md-list-addon-element">
                                        <i class="md-list-addon-icon material-icons uk-text-success">comment</i>
                                    </div>
                                    <div class="md-list-content">
                                        <span class="md-list-heading">Description</span>
                                        <span class="uk-text-small uk-text-muted">${project.description}</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="md-list-addon-element">
                                        <i class="md-list-addon-icon material-icons"></i>
                                    </div>
                                    <div class="md-list-content">
                                        <span class="md-list-heading">Date</span>
                                        <span class="uk-text-small uk-text-muted">${project.date}</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
											    
					    
					    
					    <div class="uk-width-medium-1-4">
                            <a class="md-btn md-btn-flat md-btn-flat-primary" href="${contextPath}/bug/list">Return to the Bug</a>
                        </div>
				</div>
            </div>
  
    </jsp:body>
    
    
</t:Layout>


            
            
 