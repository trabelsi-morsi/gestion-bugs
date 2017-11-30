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
		    <script>
			    altair_forms.parsley_validation_config();
			    altair_forms.parsley_extra_validators();
		    </script>
		    <script src="${contextPath}/resources/bower_components/parsleyjs/dist/parsley.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/custom/wizard_steps.min.js"></script>
		    <script src="${contextPath}/resources/assets/js/pages/forms_wizard.min.js"></script>
    
 	</jsp:attribute>

	<jsp:body>
	

     <h3 class="heading_b uk-margin-bottom">List of bugs</h3>

            <div class="md-card">
                <div class="md-card-content">
                    <div id="wizard_advanced">

                        <h3>Bugs</h3>
                        <section>
                            
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
											            	 <th class="filter-false remove sorter-false uk-text-center"  colspan="2" style="width: 50px;">Actions</th>
											          </tr>
											      </thead>
											    <tbody>
													<c:forEach var="u" items="${Bugs}">
														<tr>
															<td class="uk-text-small"><a href="list/${u.id}"    >${u.description}</a></td> 
															<td class="uk-text-small" data-uk-modal="{target:'#modal_header_footer'}">${u.project}</td> 
															<td class="uk-text-small">${u.productVersion}</td> 
															<td class="uk-text-small">${u.dateRaised} </td> 
															<td class="uk-text-small">${u.dateClosed} </td>
															<td class="uk-text-small"><span class="uk-badge uk-badge-danger" style="background-color:${u.colorPriority};">${u.priority}</span></td> 
															<td class="uk-text-small"><span class="uk-badge uk-badge-outline uk-text-upper">${u.status}</span> </td> 
															<td style="width: 50px;">
																<a href="update/${u.id}" class="ts_remove_row">
																	<i class="md-icon material-icons">&#xE22B;</i>
																</a>
															</td>
															<td style="width: 50px;">
																<a onclick="UIkit.modal.confirm('Are you sure ?',  function(){   window.location.assign('delete/<c:out value="${u.id}"/>') });"
																	class="ts_remove_row">
																	<i class="md-icon material-icons"></i>
																</a>
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
								           <ul  class="uk-pagination ts_pager" style="display: -webkit-inline-box;margin-left: 30%;width: 80%;">
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
								     
						



                        </section>
                        <h3>Deleted Bugs</h3>
                        <section>
                           



						         
								         
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
											            	 <th class="filter-false remove sorter-false uk-text-center"  colspan="2" style="width: 50px;">Actions</th>
											          </tr>
											      </thead>
											    <tbody>
													<c:forEach var="u" items="${deletedBugs}">
														<tr>
															<td class="uk-text-small"><a href="list/${u.id}"    >${u.description}</a></td> 
															<td class="uk-text-small" data-uk-modal="{target:'#modal_header_footer'}">${u.project}</td> 
															<td class="uk-text-small">${u.productVersion}</td> 
															<td class="uk-text-small">${u.dateRaised} </td> 
															<td class="uk-text-small">${u.dateClosed} </td>
															<td class="uk-text-small"><span class="uk-badge uk-badge-danger" style="background-color:${u.colorPriority};">${u.priority}</span></td> 
															<td class="uk-text-small"><span class="uk-badge uk-badge-outline uk-text-upper">${u.status}</span> </td> 
															<td style="width: 50px;">
																<a href="update/${u.id}" class="ts_remove_row">
																	<i class="md-icon material-icons">&#xE22B;</i>
																</a>
															</td>
															<td style="width: 50px;">
																<a onclick="UIkit.modal.confirm('Are you sure ?',  function(){   window.location.assign('delete/<c:out value="${u.id}"/>') });"
																	class="ts_remove_row">
																	<i class="md-icon material-icons"></i>
																</a>
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
								           <ul  class="uk-pagination ts_pager" style="display: -webkit-inline-box;margin-left: 30%;width: 80%;">
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
								     
						
						
						
                        </section>
                        

                    </div>
                </div>
            </div>
            
            
			<div class="md-fab-wrapper">
			    <a class="md-fab md-fab-success" href="add">
			   		 <i class="material-icons">&#xE147;</i> 
			    </a>
			</div>
            
            
	            <c:choose>
				    <c:when test="${bug==null}">
				       <div class="uk-modal" id="modal_header_footer" > 
				    </c:when>    
				    <c:otherwise>
				       <div class="uk-modal uk-open" id="modal_header_footer" aria-hidden="false" style="display: block; overflow-y: scroll;">
			    </c:otherwise>
			</c:choose>
             
                  <div class="uk-modal-dialog" style=" width: 90%; ">
                      <div class="uk-modal-header">
                          <h3 class="uk-modal-title">Bug Details</h3>
                      </div>
                      
                     	<div class="uk-grid uk-grid-medium" data-uk-grid-margin>
				                <div class="uk-width-xLarge-2-10 uk-width-large-3-10">
				                    <div class="md-card">
				                        <div class="md-card-toolbar">
				                            <h3 class="md-card-toolbar-heading-text">
				                                Photos 
				                            </h3>
				                        </div>
				                        <div class="md-card-content">
				                        
				                        
	                         <c:choose>
							    <c:when test="${empty bug.screenShots}">    
							    
								    <div class="uk-margin-bottom uk-text-center">
		                                <img src="https://d50m6q67g4bn3.cloudfront.net/teams_avatars/51f79653-c4c9-497a-a27d-39f5f1067b38_1450369795410" alt="" class="img_medium" />
		                            </div>
		                            
							    </c:when>    
							    <c:otherwise>
							    
							      <div class="uk-margin-bottom uk-text-center">
		                                <img src="${bug.screenShots[0].photo}" alt="" class="img_medium" />
		                            </div>
		                             <ul class="uk-grid uk-grid-width-small-1-3 uk-text-center" data-uk-grid-margin>
			                            <c:forEach var="u" begin = "1" items="${bug.screenShots}">
					 						 <li>
			                                    <img src="${u.photo}" alt="" class="img_small"/>
			                                </li>
										</c:forEach>
			                          </ul>
							    </c:otherwise>
     						</c:choose>
			    
				                        
				                           
				                        </div>
				                    </div>
				                </div>
				                <div class="uk-width-xLarge-8-10  uk-width-large-7-10">
				                    <div class="md-card">
				                        <div class="md-card-toolbar">
				                            <h3 class="md-card-toolbar-heading-text">
				                                Details   
				                            </h3>
				                        </div>
				                        <div class="md-card-content large-padding">
				                            <div class="uk-grid uk-grid-divider uk-grid-medium">
				                                <div class="uk-width-large-1-2">
				                                   
												   <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">Project</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                            <span class="uk-text-large uk-text-middle"><a href="${contextPath}/project/update/${bug.project.id}">${bug.project.title}</a></span>
				                                        </div>
				                                    </div>
													
				                                    <hr class="uk-grid-divider">
				                                    <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">Product Version</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                            <span class="uk-text-large uk-text-middle">${bug.productVersion}</span>
				                                        </div>
				                                    </div>
				                                    <hr class="uk-grid-divider">
				                                    <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">Date Raised</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                            ${bug.dateRaised}
				                                        </div>
				                                    </div>
				                                    <hr class="uk-grid-divider">
				                                    <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">Date Closed</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                            ${bug.dateClosed}
				                                        </div>
				                                    </div>
				                                    <hr class="uk-grid-divider">
				                                    <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">Priority</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                          
				                                          <span class="uk-badge uk-badge-danger" style="background-color:${bug.priority.color};">${bug.priority.title}</span>
				                                            
				                                        </div>
				                                    </div>
				                                    <hr class="uk-grid-divider uk-hidden-large">
				                                </div>
				                                <div class="uk-width-large-1-2">
				                                
				                                   <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">feedback</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                            ${bug.feedback}
				                                        </div>
				                                    </div>
				                                    <hr class="uk-grid-divider">
				                                     <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">category</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                            ${bug.category.title}
				                                        </div>
				                                    </div>
				                                    
				                                       <hr class="uk-grid-divider">
				                                     <div class="uk-grid uk-grid-small">
				                                        <div class="uk-width-large-1-3">
				                                            <span class="uk-text-muted uk-text-small">severity</span>
				                                        </div>
				                                        <div class="uk-width-large-2-3">
				                                          
				                                          <span class="uk-badge uk-badge-danger" style="background-color:${bug.severity.color};"> ${bug.severity.title}</span>
				                                        </div>
				                                    </div>
				                                    
				                                     
												 
				                                    <hr class="uk-grid-divider">
				                                    <p>
				                                        <span class="uk-text-muted uk-text-small uk-display-block uk-margin-small-bottom">Description</span>
				                                          ${bug.description}
				                                    </p>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                   
				                </div>
				            </div>

                       

						 <div class="uk-modal-footer uk-text-right">
                          <a href="../list" type="button" class="md-btn md-btn-flat uk-modal-close">Close</a> 
                      </div>
                  </div>
              </div>
                            
                            
    </jsp:body>



</t:Layout>