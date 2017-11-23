<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div class="header_main_content">
     <nav class="uk-navbar">
        	 <!-- main sidebar switch -->
         <a href="#" id="sidebar_main_toggle" class="sSwitch sSwitch_left">
             <span class="sSwitchIcon"></span>
         </a>
        	 <!-- secondary sidebar switch -->
         <a href="#" id="sidebar_secondary_toggle" class="sSwitch sSwitch_right sidebar_secondary_check">
             <span class="sSwitchIcon"></span>
         </a>
         <div class="uk-navbar-flip">
             <ul class="uk-navbar-nav user_actions">  
                 <li data-uk-dropdown="{mode:'click',pos:'bottom-right'}">
                     <a href="#" class="user_action_icon">
                     <i class="material-icons md-24 md-light" style=" margin-top: 8px; ">&#xE7F4;</i>
                     <span class="uk-badge">16</span></a>
                 </li>
                 <li data-uk-dropdown="{mode:'click',pos:'bottom-right'}">
                     <a href="#" class="user_action_image">
                    	 <img class="md-user-image" style=" background: #ececec;margin-top: 6px; " src="${contextPath}/resources/assets/img/avatars/user.png" alt=""/>
                     </a>
                     <div class="uk-dropdown uk-dropdown-small">
                         <ul class="uk-nav js-uk-prevent">
                             <li><a href="page_user_profile.html">My profile</a></li>
                             <li><a href="page_settings.html">Settings</a></li>
                             <li><a href="${contextPath}/spring_security_logout">Logout</a></li>
                         </ul>
                     </div>
                 </li>
             </ul>
         </div>
     </nav>
</div>
 
 
        
        