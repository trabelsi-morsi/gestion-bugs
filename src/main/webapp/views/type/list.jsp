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
										<option value="différent">différent</option> 
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
										<option value="différent">différent</option> 
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
                             <th>Assigné à</th>
                             <th>Mise à jour</th>
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
                          <th>Assigné à</th>
                          <th>Mise à jour</th>
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

            
               <script src="./resources/assets/js/common.min.js"></script>
    <!-- uikit functions -->
    <script src="./resources/assets/js/uikit_custom.min.js"></script>
    <!-- altair common functions/helpers -->
    <script src="./resources/assets/js/altair_admin_common.min.js"></script>