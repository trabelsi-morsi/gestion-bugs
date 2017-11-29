<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %> 
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<t:Layout> 


	<jsp:attribute name="header">
			<jsp:include page="../../basefragments/header_main.jsp" flush="true"/>
    </jsp:attribute>
    
    
    
    <jsp:attribute name="menu">
			<jsp:include page="../../basefragments/menu.jsp" flush="true"/>
     </jsp:attribute>
    
        
  
     
    <jsp:body>
        
              <h3 class="heading_b uk-margin-bottom">Add Bug</h3>

            <div class="md-card">
                <div class="md-card-content large-padding">
                    <form enctype="multipart/form-data" id="form_validation" class="uk-form-stacked" method="post" action="addOrUpdateBug">
                        
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Description<span class="req">*</span></label>
                                    <input type="text" name="description" required class="md-input" />
                                </div>
                            </div>
                           
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
	                            <select id="select_demo_1" data-md-selectize name="idCategory">
	                                <option value="">Select Category</option>
									<c:forEach var="u" items="${categories}">
			                                <option value="${u.id}">${u.title}</option> 
									</c:forEach>
	                            </select>
	                        </div>
	                        </div>
	                        </div>
                           
                          <div class="uk-grid" data-uk-grid-margin>
                           <div class="uk-width-medium-1-2">
                               <div class="parsley-row">
                                   <label for="fullname">Product Version<span class="req">*</span></label>
                                   <input type="text" name="productVersion" required class="md-input" />
                               </div>
                           </div>
                           
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
	                            <select id="select_demo_1" data-md-selectize name="idSeverity">
	                                <option value="">Select Severity</option>
									<c:forEach var="u" items="${severities}">
			                                <option value="${u.id}">${u.title}</option> 
									</c:forEach>
	                            </select>
	                        </div>
                        	</div>
                        	</div>
                           
                          <div class="uk-grid" data-uk-grid-margin>
                           <div class="uk-width-medium-1-2">
                               <div class="parsley-row">
                                   <label for="fullname">Details Steps<span class="req">*</span></label>
                                   <input type="text" name="detailSteps" required class="md-input" />
                               </div>
                           </div>
                          
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
	                            <select id="select_demo_1" data-md-selectize name="idPriority">
	                                <option value="">Select Priority</option>
									<c:forEach var="u" items="${priorities}">
			                                <option value="${u.id}" >${u.title} </option> 
									</c:forEach>
	                            </select>
	                        </div>
	                        </div>
	                        </div>
	                        
	                       <div class="uk-grid" data-uk-grid-margin>
                                <div class="uk-width-large-1-2 uk-width-medium-1-1">
                                    <div class="uk-input-group">
                                        <span class="uk-input-group-addon"><i class="uk-input-group-icon uk-icon-calendar"></i></span>
                                        <div class="md-input-wrapper"><label for="uk_dp_start">Date Raised</label>
                                        <input class="md-input" type="text" id="uk_dp_start" data-uk-datepicker="{format:'YYYY-MM-DD'}" name="dateR"><span class="md-input-bar"></span></div>
                                        
                                    </div>
                                </div>
                        	
	                        
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row">
	                            <select id="select_demo_1" data-md-selectize name="idProject">
	                                <option value="">Select Project</option>
									<c:forEach var="u" items="${projects}">
			                                <option value="${u.id}">${u.title}</option> 
									</c:forEach>
	                            </select>
	                        </div>
	                        </div>
	                        </div>
	                        
	                       <div class="uk-grid" data-uk-grid-margin>
	                        <div class="uk-width-large-1-2 uk-width-medium-1-1 uk-grid-margin">
                                    <div class="uk-input-group">
                                        <span class="uk-input-group-addon"><i class="uk-input-group-icon uk-icon-calendar"></i></span>
                                        <div class="md-input-wrapper"><label for="uk_dp_end">Date Closed</label><input class="md-input" data-uk-datepicker="{format:'YYYY-MM-DD'}" type="text" id="uk_dp_end" name="dateC"><span class="md-input-bar"></span></div>
                                    </div>
                                </div>
	                       
                            <div class="uk-width-medium-1-2">
                                <div class="parsley-row"> 
	                            <select id="select_demo_1" data-md-selectize name="idStatus">
	                                <option value="">Select Status</option>
									<c:forEach var="u" items="${status}">
			                                <option value="${u.id}">${u.title}</option> 
									</c:forEach>
	                            </select>
	                        </div>
                        	</div>
                        	</div>
                        	 
                           <div class="uk-grid data-uk-grid-margin">
                            <div class="uk-width-large-1-2">
                                <div class="parsley-row">
                                    <label for="fullname">Feedback<span class="req">*</span></label>
                                	<textarea cols="30" rows="4" class="md-input"  name="feedback"> </textarea> 
                                </div>
                            </div> 
                         <div class="uk-width-medium-1-2">
                                <div class="parsley-row"> 
	                            <select id="select_demo_1" data-md-selectize name="idUser">
	                                <option value="">Assign to</option>
									<c:forEach var="u" items="${users}">
			                                <option value="${u.id}">${u.name}</option> 
									</c:forEach>
	                            </select>
	                        </div>
                        	</div>
                        	</div>
                        <input type="file" name="files" >
                        
                        
                        <div class="uk-grid ">
                            <div class="uk-width-1-1  ">
                                <button type="submit" class="md-btn md-btn-primary uk-align-medium-right">Add</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
             
    </jsp:body>
    
    
</t:Layout>
