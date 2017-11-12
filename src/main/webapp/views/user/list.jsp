  
  <%@page contentType="text/html" pageEncoding="UTF-8"%> 
          
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
     
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lte IE 9]> <html class="lte-ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no"/>

    
 <link rel="icon" type="image/png" href="./../resources/assets/img/logo.png" sizes="16x16">
    <link rel="icon" type="image/png" href="./../resources/assets/img/logo.png" sizes="32x32">

    <title>Gestion Bugs</title>


    <!-- uikit -->
    <link rel="stylesheet" href="./../resources/bower_components/uikit/css/uikit.almost-flat.min.css" media="all">

    <!-- flag icons -->
    <link rel="stylesheet" href="./../resources/assets/icons/flags/flags.min.css" media="all">

    <!-- altair admin -->
    <link rel="stylesheet" href="./../resources/assets/css/main.min.css" media="all">

</head>
<body class=" sidebar_main_open sidebar_main_swipe">
   
    
    <header id="header_main"> 
		 <%@include  file="../../basefragments/header_main.jsp" %>
    </header>
    
    
    <aside id="sidebar_main">
			<%@include  file="../../basefragments/menu.jsp" %>
    </aside> 

    <div id="page_content">
        <div id="page_content_inner">
  <div class="uk-grid" style="/* width: 50%; */">
          <div class="uk-width-large-1-2"> 
			<div class="md-card">
				<div class="md-card-content">
					
					<div class="uk-grid" data-uk-grid-margin>
						 <div class="uk-width-medium-1-3 uk-width-large-1-2">
							<div class="parsley-row">
								<label for="val_select" class="uk-form-label">Status</label>
								<select id="val_select" required data-md-selectize>
									   <option value="">Select...</option>
										<option value="a">New</option> 
										<option value="Assigned">Assigned</option> 
										<option value="Open">Open</option> 
										<option value="Retest">Retest</option> 
										<option value="Verification">Verification</option> 
										<option value="Closed">Closed</option> 
										<option value="diffÃ©rent">diffÃ©rent</option> 
										<option value="Failed">Failed</option>
								</select>
							</div> 
						</div>

						<div class="uk-width-medium-1-3 uk-width-large-1-2">
							<div class="parsley-row">
								<label for="val_select" class="uk-form-label">Priority</label>
								<select id="val_select" required data-md-selectize>
									   <option value="">Select...</option>
										<option value="a">New</option> 
										<option value="Assigned">Assigned</option> 
										<option value="Open">Open</option> 
										<option value="Retest">Retest</option> 
										<option value="Verification">Verification</option> 
										<option value="Closed">Closed</option> 
										<option value="diffÃ©rent">diffÃ©rent</option> 
										<option value="Failed">Failed</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> 
							
		<div class="uk-width-large-1-2">
			<div class="md-card">
				<div class="md-card-content">
					<div class="uk-grid"  > 
							<div class="uk-input-group">
								<span class="uk-input-group-addon">
								<a href="#"><i class="material-icons">&#xE8B6;</i></a>
								</span>
								<label for="wizard_skype">Search</label>
								<input type="text" class="md-input" name="wizard_skype"   />
							</div>
						 
					</div>
				</div>
			</div>
		</div> 
</div> 
					
					 
        					
									
     <div class="md-card">
         <div class="md-card-content">
             <div class="uk-overflow-container uk-margin-bottom">
                  
                         
                          
<table class="uk-table uk-table-align-vertical uk-table-nowrap tablesorter tablesorter-altair" id="ts_issues">
                     <thead>
                         <tr>
                             <th class="uk-text-center">ID</th>
                             <th>Status</th>
                             <th>Priority</th>
                             <th>Sujet</th>
                             <th>AssignÃ© Ã </th>
                             <th>Mise Ã  jour</th>
                             <th>Severity</th> 
                             <th class="uk-text-center">Actions</th>
                         </tr>
                     </thead>
                    <!-- <tfoot>
                      <tr>
                           <th class="uk-text-center">ID</th>
                          <th>Status</th>
                          <th>Priority</th>
                          <th>Sujet</th>
                          <th>AssignÃ© Ã </th>
                          <th>Mise Ã  jour</th>
                          <th>Severity</th> 
                          <th class="uk-text-center">Actions</th>
                      </tr>
                  </tfoot>-->
                   <tbody>

                       <tr>
                           <td class="uk-text-center"><span class="uk-text-small uk-text-muted uk-text-nowrap">ALTR-1</span></td>
                           <td>
                               <a href="page_issue_details.html"> Quis temporibus optio laudantium cupiditate labore quas.</a>
                           </td>
                           <td>Danyka Dickens</td>
                           <td><span class="uk-badge uk-badge-success">major</span></td>
                           <td class="uk-text-small">23/Jun/16</td>
                           <td class="uk-text-small">17/Jun/16</td>
                           <td><span class="uk-badge uk-badge-outline uk-text-upper">open</span></td>
                           <td class="uk-text-small">18/Jun/16</td>
                       </tr>


                       <tr>
                           <td class="uk-text-center"><span class="uk-text-small uk-text-muted uk-text-nowrap">ALTR-48</span></td>
                           <td>
                               <a href="page_issue_details.html"> Eaque sint reprehenderit praesentium consequatur assumenda a consequatur.</a>
                           </td>
                           <td>Dorothy Kilback</td>
                           <td><span class="uk-badge uk-badge-danger">major</span></td>
                           <td class="uk-text-small">22/Jun/16</td>
                           <td class="uk-text-small">18/Jun/16</td>
                           <td><span class="uk-badge uk-badge-outline uk-text-upper">open</span></td>
                           <td class="uk-text-small">18/Jun/16</td>
                       </tr>

<tr>
                           <td class="uk-text-center"><span class="uk-text-small uk-text-muted uk-text-nowrap">ALTR-48</span></td>
                           <td>
                               <a href="page_issue_details.html"> Eaque sint reprehenderit praesentium consequatur assumenda a consequatur.</a>
                           </td>
                           <td>Dorothy Kilback</td>
                           <td><span class="uk-badge uk-badge-info">major</span></td>
                           <td class="uk-text-small">22/Jun/16</td>
                           <td class="uk-text-small">18/Jun/16</td>
                           <td><span class="uk-badge uk-badge-outline uk-text-upper">reopened</span></td>
                           <td class="uk-text-small">18/Jun/16</td>
                       </tr>

<tr>
                           <td class="uk-text-center"><span class="uk-text-small uk-text-muted uk-text-nowrap">ALTR-48</span></td>
                           <td>
                               <a href="page_issue_details.html"> Eaque sint reprehenderit praesentium consequatur assumenda a consequatur.</a>
                           </td>
                           <td>Dorothy Kilback</td>
                           <td><span class="uk-badge uk-badge-warning">major</span></td>
                           <td class="uk-text-small">22/Jun/16</td>
                           <td class="uk-text-small">18/Jun/16</td>
                           <td><span class="uk-badge uk-badge-outline uk-text-upper">closed</span></td>
                           <td class="uk-text-small">18/Jun/16</td>
                       </tr>

                   </tbody>
               </table>

           </div>
           <ul class="uk-pagination ts_pager">
               <li data-uk-tooltip title="Select Page">
                   <select class="ts_gotoPage ts_selectize"></select>
               </li>
               <li class="first"><a href="javascript:void(0)"><i class="uk-icon-angle-double-left"></i></a></li>
               <li class="prev"><a href="javascript:void(0)"><i class="uk-icon-angle-left"></i></a></li>
               <li><span class="pagedisplay"></span></li>
               <li class="next"><a href="javascript:void(0)"><i class="uk-icon-angle-right"></i></a></li>
               <li class="last"><a href="javascript:void(0)"><i class="uk-icon-angle-double-right"></i></a></li>
               <li data-uk-tooltip title="Page Size">
                   <select class="pagesize ts_selectize">
                       <option value="5">5</option>
                       <option value="10">10</option>
                       <option value="25">25</option>
                       <option value="50">50</option>
                   </select>
               </li>
           </ul>
       </div>
   </div>

            
        </div>
    </div>

 
			<%@include  file="../../basefragments/scriptpage.jsp" %>
     
 

    <div id="style_switcher">
        <div id="style_switcher_toggle"><i class="material-icons">&#xE8B8;</i></div>
        <div class="uk-margin-medium-bottom">
            <h4 class="heading_c uk-margin-bottom">Colors</h4>
            <ul class="switcher_app_themes" id="theme_switcher">
                <li class="app_style_default active_theme" data-app-theme="">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_a" data-app-theme="app_theme_a">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_b" data-app-theme="app_theme_b">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_c" data-app-theme="app_theme_c">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_d" data-app-theme="app_theme_d">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_e" data-app-theme="app_theme_e">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_f" data-app-theme="app_theme_f">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
                <li class="switcher_theme_g" data-app-theme="app_theme_g">
                    <span class="app_color_main"></span>
                    <span class="app_color_accent"></span>
                </li>
            </ul>
        </div>
        <div class="uk-visible-large uk-margin-medium-bottom">
            <h4 class="heading_c">Sidebar</h4>
            <p>
                <input type="checkbox" name="style_sidebar_mini" id="style_sidebar_mini" data-md-icheck />
                <label for="style_sidebar_mini" class="inline-label">Mini Sidebar</label>
            </p>
        </div>
        <div class="uk-visible-large">
            <h4 class="heading_c">Layout</h4>
            <p>
                <input type="checkbox" name="style_layout_boxed" id="style_layout_boxed" data-md-icheck />
                <label for="style_layout_boxed" class="inline-label">Boxed layout</label>
            </p>
        </div>
    </div>
 
</body>
</html>
