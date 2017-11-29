<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<t:Layout> 

	<jsp:attribute name="header">
        	<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    <jsp:attribute name="menu">
			<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
	<jsp:attribute name="footer">
			<script>
				function viewphotomodel(val) {
					 $("#zoneimage").attr("src",val);
				}
			</script> 
	  		<!-- tablesorter -->
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/jquery.tablesorter.min.js"></script>
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/jquery.tablesorter.widgets.min.js"></script>
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/widgets/widget-alignChar.min.js"></script>
		    <script src="${contextPath}/resources/bower_components/tablesorter/dist/js/extras/jquery.tablesorter.pager.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/pages_issues.min.js"></script>
		    <!--  tablesorter functions -->
		    <script src="${contextPath}/resources/assets/js/pages/plugins_tablesorter.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/components_notifications.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/forms_file_upload.min.js"></script>
 	</jsp:attribute>

	<jsp:body>
	
        
     <h3 class="heading_b uk-margin-bottom">List of bugs</h3>
     <div class="md-card">
         <div class="md-card-content">
         
		         
				<div class="uk-overflow-container uk-margin-bottom">
				                          
					<table
						class="uk-table uk-table-hover uk-table-align-vertical uk-table-nowrap tablesorter tablesorter-altair"
						id="ts_issues">
					      <thead>
					          <tr>
					              <th>Description</th>
					              	<th>Project</th>
					             	 <th>Product Version</th>
									 <th>Date Raised</th>
									 <th>Date Closed</th>
									 <th>Priority</th>
									 <th>Status</th>
					              <th
									class="filter-false remove sorter-false uk-text-center"
									colspan="2" style="width: 50px;">Actions</th>
					          </tr>
					      </thead>
					    <tbody>
					
							<c:forEach var="u" items="${Bugs}">
								<tr>
									<td class="uk-text-small"><a>${u.description}</a></td> 
									<td class="uk-text-small">${u.project}</td> 
									<td class="uk-text-small">${u.productVersion}</td> 
									<td class="uk-text-small">${u.dateRaised} </td> 
									<td class="uk-text-small">${u.dateClosed} </td>
									<td class="uk-text-small"><span class="uk-badge uk-badge-danger" style="background-color:${u.colorPriority};">${u.priority}</span></td> 
									<td class="uk-text-small"><span class="uk-badge uk-badge-outline uk-text-upper">${u.status}</span> </td> 
									<td style="width: 50px;"><a
										href="update/${u.id}" class="ts_remove_row"><i
											class="md-icon material-icons">&#xE22B;</i></a></td>
									<td style="width: 50px;"><a
										onclick="UIkit.modal.confirm('Are you sure ?',  function(){   window.location.assign('delete/<c:out value="${u.id}"/>') });"
										class="ts_remove_row"><i class="md-icon material-icons"></i></a>
									</td>
								</tr>
							</c:forEach>
					
					    </tbody>
					</table>
					
					 <div class="uk-modal" id="modal_lightbox">
                           <div
							class="uk-modal-dialog uk-modal-dialog-lightbox">
                               <button type="button"
								class="uk-modal-close uk-close uk-close-alt"></button>
                               <img src="" id="zoneimage" />
                           </div>
                       </div>
				
				</div>
		           <ul class="uk-pagination ts_pager">
		               <li data-uk-tooltip title="Select Page">
		                   <select class="ts_gotoPage ts_selectize"></select>
		               </li>
		               <li class="first"><a href="javascript:void(0)"><i
							class="uk-icon-angle-double-left"></i></a></li>
		               <li class="prev"><a href="javascript:void(0)"><i
							class="uk-icon-angle-left"></i></a></li>
		               <li><span class="pagedisplay"></span></li>
		               <li class="next"><a href="javascript:void(0)"><i
							class="uk-icon-angle-right"></i></a></li>
		               <li class="last"><a href="javascript:void(0)"><i
							class="uk-icon-angle-double-right"></i></a></li>
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

              <div class="md-fab-wrapper">
                <a class="md-fab md-fab-success" href="add">
                <i class="material-icons">&#xE147;</i> 
                </a>
            </div>
    </jsp:body>



</t:Layout>