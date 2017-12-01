<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:Layout>

	<jsp:attribute name="css">
    </jsp:attribute>

	<jsp:attribute name="header">
        <jsp:include page="../basefragments/header_main.jsp"
			flush="true" />
    </jsp:attribute>

	<jsp:attribute name="menu"> 
			<jsp:include page="../basefragments/menu.jsp" flush="true" />
     </jsp:attribute>

	<jsp:attribute name="footer">
			
    </jsp:attribute>

	<jsp:body>
	 
		<div class="uk-grid" data-uk-grid-margin data-uk-grid-match id="user_profile">
                <div class="uk-width-large-7-12">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_avatar">
                                <img src="${connectedUser.photo }" alt="user avatar"/>
                            </div>
                            <div class="user_heading_content">
                                <h2 class="heading_b uk-margin-bottom">
	                                <span class="uk-text-truncate">${connectedUser.id } ${connectedUser.name }</span>
	                                <span class="sub-heading">${connectedUser.type.description }</span>
                                </h2>
                            </div>
                            <a class="md-fab md-fab-small md-fab-accent" href="page_user_edit.html">
                                <i class="material-icons">&#xE150;</i>
                            </a>
                        </div>
                        <div class="user_content">
                           
                                        <div class="uk-width-large-1-2">
                                            <h4 class="heading_c uk-margin-small-bottom">Contact Info</h4>
                                            <ul class="md-list md-list-addon">
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon material-icons">&#xE158;</i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading">${connectedUser.email }</span>
                                                        <span class="uk-text-small uk-text-muted">Email</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon material-icons">&#xE0CD;</i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading">${connectedUser.phone }</span>
                                                        <span class="uk-text-small uk-text-muted">Phone</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon uk-icon-facebook-official"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading">${connectedUser.login }</span>
                                                        <span class="uk-text-small uk-text-muted">Login</span>
                                                    </div>
                                                </li>
                                            
                                            </ul>
                                        </div>
                                        
                                    </div>
                                 
                        </div>
                    </div>
                </div>
                
            </div>
    </jsp:body>

</t:Layout>