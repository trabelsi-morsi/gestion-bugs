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
            <h3 class="heading_b uk-margin-bottom">Add Type</h3>

            <div class="md-card">
                <div class="md-card-content large-padding">
                    <form id="form_validation" class="uk-form-stacked" method="post" action="<c:out value="${action}"/>">
                        <div class="uk-grid data-uk-grid-margin">
                            <div class="uk-width-large-1-1">
                                <div class="parsley-row">
                                    <label for="fullname">Description<span class="req">*</span></label>
                                	<textarea cols="30" rows="4" class="md-input"  name="description"  ><c:out value="${type.description}"/></textarea> 
                                </div>
                            </div> 
                        </div> 
                        <div class="uk-grid">
                            <div class="uk-width-1-1">
                                <button type="submit" class="md-btn md-btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

<%@include  file="../../basefragments/scriptpage.jsp" %>
 
 
</body>
</html>



  
            
            
 