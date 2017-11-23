<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
   <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no"/>
    <link rel="icon" type="image/png" href="${contextPath}/resources/assets/img/logo.png" sizes="16x16">
    <link rel="icon" type="image/png" href="${contextPath}/resources/assets/img/logo.png" sizes="32x32">
    <title>Gestion Bugs</title>
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${contextPath}/resources/bower_components/uikit/css/uikit.almost-flat.min.css"/>
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/login_page.min.css" />
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/main.min.css" media="all">
    <style>
	     .logoform{
			  background-image: url(${contextPath}/resources/assets/img/logo.png);
			  background-size: 100px auto;
			  border-radius: 0%;
			  height: 100px;
			  width: 100px;
			  display: inline-block;
			  text-align: center;
			  background-repeat: no-repeat;
	    }
	    #userfilezone{
			 width: 82px;
			 height: 82px;
			 margin: 0 auto 16px;
			 display: block;float: none;
	    }
    </style>
</head> 
<body class="login_page">
 
    <div class="login_page_wrapper">
        <div class="md-card" id="login_card">
        
			<!-- login form -->        
            <div class="md-card-content large-padding" id="login_form">
                <div class="login_heading">
                    <div class=" logoform  " ></div>
                </div>
                <form action="/gestion-bugs/spring_security_check" method="POST">
                    <div class="uk-form-row">
                        <label for="login_username">Username</label>
                        <input class="md-input" type="text" id="login_username" name="username"/>
                    </div>
                    <div class="uk-form-row">
                        <label for="login_password">Password</label>
                        <input class="md-input" type="password" id="login_password" name="password" />
                    </div>
                    <div class="uk-margin-medium-top">
                         <button type="submit"class="md-btn md-btn-primary md-btn-block md-btn-large">Sign In</button>
                     </div>
                    <div class="uk-margin-top">
                         <span class="icheck-inline">
                            <input type="checkbox" name="login_page_stay_signed" id="login_page_stay_signed" data-md-icheck />
                            <label for="login_page_stay_signed" class="inline-label">Stay signed in</label>
                        </span>
                    </div>
                </form>
            </div>
        	<!-- Fin Login form -->  
            
            <!-- Sign Up form -->  
            <div class="md-card-content large-padding" id="register_form" style="display: none">
                <button type="button" class="uk-position-top-right uk-close uk-margin-right uk-margin-top back_to_login"></button>
                <h2 class="heading_a uk-margin-medium-bottom">Create an account</h2>
               
               <form enctype="multipart/form-data" id="form_validation" class="uk-form-stacked" method="post" action="user/addOrUpdateUser">
                        
                  <div class="uk-form-row">
						<div class="uk-width-medium-1-1">
							<div class="user_heading_avatar fileinput fileinput-new" id="userfilezone" data-provides="fileinput" >
								<div class="fileinput-new thumbnail">
									<img src="${contextPath}/resources/assets/img/blank.png" alt="user avatar"/>
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"></div>
								<div class="user_avatar_controls">
									<span class="btn-file">
										<span class="fileinput-new"><i class="material-icons">&#xE2C6;</i></span>
										<span class="fileinput-exists"><i class="material-icons">&#xE86A;</i></span>
										<input type="file" name="photoFile" id="user_edit_avatar_control">
									</span>
									<a href="#" class="btn-file fileinput-exists" data-dismiss="fileinput"><i class="material-icons">&#xE5CD;</i></a>
								</div>
							</div>
						</div>
					</div>
                                
                    <div class="uk-form-row">
						<div class="uk-width-medium-1-1">
							<div class="parsley-row">
								<label for="fullname">Name<span class="req">*</span></label>
								<input type="text" name="name" required class="md-input" />
							</div>
						</div>
                     </div> 
                       
                    <div class="uk-form-row">
						 <div class="uk-width-medium-1-1">
							<div class="parsley-row">
								<label for="fullname">Login<span class="req">*</span></label>
								<input type="text" name="login" required class="md-input" />
							</div>
						</div>
                    </div> 
                       
                    <div class="uk-form-row">
  						<div class="uk-width-medium-1-1">
							<div class="parsley-row">
								<label for="email">Phone<span class="req">*</span></label>
								<input type="text" name="phone" data-parsley-trigger="change" required  class="md-input" />
							</div>
						</div>
                     </div> 
                       
                    <div class="uk-form-row">
						 <div class="uk-width-medium-1-1">
							<div class="parsley-row">
								<label for="fullname">Password<span class="req">*</span></label>
								<input type="text" name="password" required class="md-input" />
							</div>
						</div>
                     </div> 
                       
					<div class="uk-form-row">
						<div class="uk-width-medium-1-1">
							<div class="parsley-row">
								<label for="email">Email<span class="req">*</span></label>
								<input type="email" name="email" data-parsley-trigger="change" required  class="md-input" />
							</div>
						</div>
					</div> 
                        
                    <div class="uk-margin-medium-top">
                          <button type="submit" class="md-btn md-btn-primary md-btn-block md-btn-large">Sign Up</button>
                    </div>
                
                </form>
            </div>
            <!-- Fin Sign Up form --> 
              
        </div>
        
        <div class="uk-margin-top uk-text-center">
            <a href="#" id="signup_form_show">Create an account</a>
        </div>
        
    </div>
    

		<% if("erreur".equals(request.getAttribute("msg"))){ %>
		<div class="uk-notify uk-notify-bottom-center" >
			<div class="uk-notify-message uk-notify-message-warning" >
				<a class="uk-close"></a>
				<div><a href="login" class="notify-action">Refresh</a>authentication failed</div>
			</div>
		</div>
		<% }%>


    <script src="${contextPath}/resources/assets/js/common.min.js"></script>
    <script src="${contextPath}/resources/assets/js/uikit_custom.min.js"></script>
    <script src="${contextPath}/resources/assets/js/altair_admin_common.min.js"></script>
    <script src="${contextPath}/resources/assets/js/pages/login.min.js"></script>
    <script src="${contextPath}/resources/assets/js/pages/components_notifications.min.js"></script>

</body>
</html>