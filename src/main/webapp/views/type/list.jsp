  
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
 
					
					 
             
            <h3 class="heading_b uk-margin-bottom">List Type</h3>
        					
									
     <div class="md-card">
         <div class="md-card-content">
         
         
         
         
             <div class="uk-overflow-container uk-margin-bottom">
                  
                        
            
         
                          
<table class="uk-table uk-table-hover uk-table-align-vertical uk-table-nowrap tablesorter tablesorter-altair" id="ts_issues">
                     <thead>
                         <tr>
                             <th class="uk-text-center">ID</th>
                             <th>Description</th>
                            
                             <th class="filter-false remove sorter-false uk-text-center" colspan="2" style="width: 50px;">Actions</th>
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


		<c:forEach var="u" items="${allType}">
			<tr>
			 <td class="uk-text-center"><span class="uk-text-small uk-text-muted uk-text-nowrap"><c:out value="${u.id}" /></span></td>
				<td class="uk-text-small"><c:out value="${u.description}" /></td> 
				<td style="width: 50px;"><a  href="update/<c:out value="${u.id}" />" class="ts_remove_row"><i class="md-icon material-icons">&#xE22B;</i></a></td>
				<td style="width: 50px;"><a  href="delete/<c:out value="${u.id}" />" class="ts_remove_row"><i class="md-icon material-icons"></i></a></td>
			</tr>
		</c:forEach>
		
                    
 
 

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
     
  
  
    
</body>
</html>
