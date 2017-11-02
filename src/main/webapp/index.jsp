<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lte IE 9]> <html class="lte-ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no"/>

    <link rel="icon" type="image/png" href="./resources/assets/img/logo.png" sizes="16x16">
    <link rel="icon" type="image/png" href="./resources/assets/img/logo.png" sizes="32x32">

    <title>Gestion Bugs</title>


    <!-- uikit -->
    <link rel="stylesheet" href="./resources/bower_components/uikit/css/uikit.almost-flat.min.css" media="all">

    <!-- flag icons -->
    <link rel="stylesheet" href="./resources/assets/icons/flags/flags.min.css" media="all">

    <!-- altair admin -->
    <link rel="stylesheet" href="./resources/assets/css/main.min.css" media="all">
 

</head>
<body class=" sidebar_main_open sidebar_main_swipe">
   
    
    <header id="header_main"> 
		 <%@include  file="basefragments/header_main.jsp" %>
    </header>
    
    
    <aside id="sidebar_main">
			<%@include  file="basefragments/menu.jsp" %>
    </aside> 

    <div id="page_content">
        <div id="page_content_inner">
              <%@include  file="views/type/list.jsp" %>
        </div>
    </div>

 

    <!-- common functions -->
    <script src="./resources/assets/js/common.min.js"></script>
    <!-- uikit functions -->
    <script src="./resources/assets/js/uikit_custom.min.js"></script>
    <!-- altair common functions/helpers -->
    <script src="./resources/assets/js/altair_admin_common.min.js"></script>
 
    <!-- tablesorter -->
    <script src="./resources/bower_components/tablesorter/dist/js/jquery.tablesorter.min.js"></script>
    <script src="./resources/bower_components/tablesorter/dist/js/jquery.tablesorter.widgets.min.js"></script>
    <script src="./resources/bower_components/tablesorter/dist/js/widgets/widget-alignChar.min.js"></script>
    <script src="./resources/bower_components/tablesorter/dist/js/extras/jquery.tablesorter.pager.min.js"></script>

    <script src="./resources/assets/js/pages/pages_issues.min.js"></script>
    <!--  tablesorter functions -->
    <script src="./resources/assets/js/pages/plugins_tablesorter.min.js"></script>
    
    
    <script src="./resources/js/redirectpage.js"></script>
     
 

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