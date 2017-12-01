<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">  
<head>

	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no"/>

    <link rel="icon" type="image/png" href="assets/img/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="assets/img/favicon-32x32.png" sizes="32x32">

    <title>Gestion Bugs 404 error</title>

    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css'>

    <!-- uikit -->
    <link rel="stylesheet" href="${contextPath}/resources/bower_components/uikit/css/uikit.almost-flat.min.css"/>

    <!-- altair admin error page -->
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/error_page.min.css" />

</head>
<body class="error_page">

    <div class="error_page_header">
        <div class="uk-width-8-10 uk-container-center">
          <%=request.getAttribute("msg")%> !
        </div>
    </div>
    <div class="error_page_content">
        <div class="uk-width-8-10 uk-container-center">
            <p class="heading_b">Page not found</p>
            <p class="uk-text-large">
                The requested URL <span class="uk-text-muted"> </span> was not found on this server.
            </p>
            <a href="#" onclick="history.go(-1);return false;">Go back to previous page</a>
        </div>
    </div>

</body>
</html>