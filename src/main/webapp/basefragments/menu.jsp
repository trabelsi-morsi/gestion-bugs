 
     <div class="sidebar_main_header" style=" height: 114px;">
            <div class="sidebar_logo" style="height: 164px;/* line-height: 66px; */">
                <a href="index.html" class="sSidebar_hide" style="margin: 0 auto;display: block;">
                <img src="../resources/assets/img/logo.png" alt="" height="15" width="71" class="" style="margin: 0 auto;display: block;margin-top: 12px;width: 100px;"></a>
                <a href="index.html" class="sSidebar_show"><img src="../resources/assets/img/logo.png" alt="" height="32" width="32" class=""></a>
            </div>
         
        </div>
        
 <div class="menu_section">
		 <ul>
		 <c:set var="context" value="${pageContext.request.contextPath}" />
		 	 <li  class="current_section">
                    <a href="#">
                        <span class="menu_icon">   
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE84E;</i></span>
                        <span class="menu_title">Type</span>
                    </a>
                    <ul>
 						<li><a   onclick="redirectpage('type/add')" >Add Type</a></li>
                     	<li><a   onclick="redirectpage('type/list')">List Type</a></li> 
                    </ul>
                </li>
                
                 <li>
                    <a href="#">
                        <span class="menu_icon">  
                        <i class="material-icons" style=" margin-top: -16px; ">&#xE8D3;</i></span>
                        <span class="menu_title">User</span>
                    </a>
                    <ul>
                        <li><a  onclick="redirectpage('user/add')">Add User</a></li>
                        <li><a  onclick="redirectpage('user/add')">List User</a></li> 
                    </ul>
                </li>
				
		 <!--  
                  <li title="Dashboard">
                    <a href="page_issues_list.html">
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
        
        