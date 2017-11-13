<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<t:Layout> 

	<jsp:attribute name="header">
        	<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    <jsp:attribute name="menu">
			<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
    <jsp:body>
        
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

             
    </jsp:body>
    
    
</t:Layout>