<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

     <div class="sidebar_main_header" style=" height: 114px;">
            <div class="sidebar_logo" style="height: 164px;/* line-height: 66px; */">
                <a href="/gestion-bugs/" class="sSidebar_hide" style="margin: 0 auto;display: block;">
                <img src="${contextPath}/resources/assets/img/logo.png" alt="" height="15" width="71" class="" style="margin: 0 auto;display: block;margin-top: 12px;width: 100px;"></a>
                <a href="index.html" class="sSidebar_show"><img src="${contextPath}/resources/assets/img/logo.png" alt="" height="32" width="32" class=""></a>
            </div>
         
        </div>
        
 <div class="menu_section">
		 <ul>
		 	 <li>
                    <a href="#">
                        <span class="menu_icon">   
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE84E;</i></span>
                       <span class="menu_title">Type</span>
                    </a>
                    <ul>
 						<li><a   href="${contextPath}/type/add" >Add Type</a></li>
                     	<li><a  href="${contextPath}/type/list">List Type</a></li> 
                    </ul>
                </li>
                
			   <li>
                    <a href="#">
                        <span class="menu_icon">  
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE8D3;</i></span>
                        <span class="menu_title">User</span>
                    </a>
                    <ul>
                        <li><a  href="${contextPath}/user/add">Add User</a></li>
                        <li><a  href="${contextPath}/user/list">List User</a></li> 
                    </ul>
                </li>
                
                 <li>
                    <a href="#">
                        <span class="menu_icon">  
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE8D3;</i></span>
                        <span class="menu_title">Category</span>
                    </a>
                    <ul>
                        <li><a  href="${contextPath}/category/add">Add Category</a></li>
                        <li><a  href="${contextPath}/category/list">List Category</a></li> 
                    </ul>
                </li>
                
                  <li>
                    <a href="#">
                        <span class="menu_icon">  
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE8D3;</i></span>
                        <span class="menu_title">Priority</span>
                    </a>
                    <ul>
                        <li><a  href="${contextPath}/priority/add">Add Priority</a></li>
                        <li><a  href="${contextPath}/priority/list">List Priority</a></li> 
                    </ul>
                </li>
		 <!--  
                 <li title="Dashboard">
                    <a href="">
                        <span class="menu_icon"><i class="material-icons" style=" margin-top: -16px; ">&#xE871;</i></span>
                        <span class="menu_title">Home</span>
                    </a>
                </li>
				<li title="Dashboard" class="current_section" >
                    <a href="plugins_crud_table.html">
                        <span class="menu_icon"><i class="material-icons" style=" margin-top: -16px; ">&#xE8EF;</i></span>
                        <span class="menu_title">Show bugs</span>
                    </a>
                </li>
				
				<li title="Dashboard"   >
                    <a href="plugins_tablesorter.html">
                        <span class="menu_icon"><i class="material-icons" style=" margin-top: -16px; ">&#xE8EF;</i></span>
                        <span class="menu_title">All Project</span>
                    </a>
                </li>
				
			 
				 <li>
                    <a href="#">
                        <span class="menu_icon">
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE8EF;</i></span>
                        <span class="menu_title">Rapporter un bogue</span>
                    </a>
                    <ul>
                        <li><a href="components_tables_examples.html">View all bugs</a></li>
                        <li><a href="forms_regular.html">Add bug</a></li> 
                    </ul>
                </li>
				
				
				<li title="Dashboard"   >
                    <a href="plugins_crud_table.html">
                        <span class="menu_icon"><i class="material-icons" style=" margin-top: -16px; ">&#xE8EF;</i></span>
                        <span class="menu_title">crud table</span>
                    </a>
                </li>
        	 -->
        
		  </ul>
        </div>
        
        