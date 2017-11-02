<%@page contentType="text/html" pageEncoding="UTF-8"%> 
          
            <div class="md-card">
                <div class="md-card-content">
                    <h3 class="heading_a">Input fields</h3>
                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <div class="uk-grid">
                                    <div class="uk-width-medium-1-2">
                                        <label>Label</label>
                                        <input type="text" class="md-input" />
                                    </div>
                                    <div class="uk-width-medium-1-2">
                                        <label>Label fixed</label>
                                        <input type="text" class="md-input label-fixed" />
                                    </div>
                                </div>
                            </div>
                            <div class="uk-form-row">
                                <label>Passsword</label>
                                <input type="password" class="md-input"  />
                            </div>
                            <div class="uk-form-row">
                                <label>Disabled</label>
                                <input type="text" class="md-input" disabled />
                            </div>
                        </div>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label>Prefilled</label>
                                <input type="text" class="md-input" value="Lorem ipsum dolor sit" />
                            </div>
                            <div class="uk-form-row">
                                <label>Error</label>
                                <input type="text" class="md-input md-input-danger" value="Something wrong" />
                            </div>
                            <div class="uk-form-row">
                                <label>Success</label>
                                <input type="text" class="md-input md-input-success" value="All ok" />
                            </div>
                        </div>
                    </div>
                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-large-1-4 uk-width-medium-1-2">
                            <div class="uk-input-group">
                                <span class="uk-input-group-addon"><input type="checkbox" data-md-icheck/></span>
                                <label>Checkbox addon</label>
                                <input type="text" class="md-input" />
                            </div>
                        </div>
                        <div class="uk-width-large-1-4 uk-width-medium-1-2">
                            <div class="uk-input-group">
                                <label>Button addon</label>
                                <input type="text" class="md-input" />
                                <span class="uk-input-group-addon"><a class="md-btn" href="#">Save</a></span>
                            </div>
                        </div>
                        <div class="uk-width-large-1-4 uk-width-medium-1-2">
                            <div class="uk-input-group">
                                <label>Icon addon</label>
                                <input type="text" class="md-input" />
                                <span class="uk-input-group-addon">
                                    <a href="#"><i class="material-icons">&#xE163;</i></a>
                                </span>
                            </div>
                        </div>
                        <div class="uk-width-large-1-4 uk-width-medium-1-2">
                            <div class="uk-input-group">
                                <span class="uk-input-group-addon">$</span>
                                <label>Text addon</label>
                                <input type="text" class="md-input" />
                            </div>
                        </div>
						
						 <div class="uk-width-medium-1-3">
                            <input type="checkbox" data-switchery checked id="switch_demo_1" />
                            <label for="switch_demo_1" class="inline-label">Service offline</label>
                            <span class="uk-form-help-block">Checked</span>
                        </div>
						
						
						  <p>
							<input type="radio" name="radio_demo" id="radio_demo_1" data-md-icheck />
							<label for="radio_demo_1" class="inline-label">Mercury</label>
						</p>
						
						   <p>
							<input type="checkbox" name="checkbox_demo" id="checkbox_demo_1" data-md-icheck />
							<label for="checkbox_demo_1" class="inline-label">Mercury</label>
						</p>
									
                    </div>
                </div>
            </div>

            <div class="md-card">
                <div class="md-card-content">
                    <h3 class="heading_a">Textareas (auto resize)</h3>
                    <div class="uk-grid">
                        <div class="uk-width-1-1">
                            <div class="uk-form-row">
                                <label>Textarea</label>
                                <textarea cols="30" rows="4" class="md-input">Nisi voluptas voluptas dolorem consequatur ipsam aliquid doloribus dolor temporibus unde dolorum veritatis iste ea magni quidem fuga doloribus dolor et aut natus nulla molestias omnis quisquam voluptatem sit totam cupiditate aspernatur et et id quia velit ex autem laboriosam in eos illum omnis ipsam aut beatae deserunt voluptatibus labore temporibus totam porro ut animi aliquid omnis veniam quasi ullam aliquam quia quo fuga earum quia maiores deleniti amet hic ea sint in quos.</textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="md-card">
                <div class="md-card-content">
                    <h3 class="heading_a">Select</h3>
                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-3 uk-width-large-1-2">
                            <select id="select_demo_1" data-md-selectize>
                                <option value="">Select...</option>
                                <optgroup label="Group 1">
                                    <option value="a">Item A</option>
                                    <option value="b">Item B</option>
                                    <option value="c">Item C</option>
                                </optgroup>
                                <optgroup label="Group 2">
                                    <option value="a">Item A</option>
                                    <option value="b">Item B</option>
                                    <option value="c">Item C</option>
                                    <option value="d">Item D</option>
                                </optgroup>
                            </select>
                            <span class="uk-form-help-block">Default</span>
                        </div>
                        <div class="uk-width-medium-1-3 uk-width-large-1-2">
                            <select id="select_demo_1" data-md-selectize >
                                <option value="">Select...</option>
                                <option value="a">Item A</option>
                                <option value="b">Item B</option>
                                <option value="c">Item C</option>
                            </select>
                            <span class="uk-form-help-block">Disabled</span>
                        </div>
                    </div>
                </div>
            </div>
            
    <script src="./resources/assets/js/common.min.js"></script>
    <!-- uikit functions -->
    <script src="./resources/assets/js/uikit_custom.min.js"></script>
    <!-- altair common functions/helpers -->
    <script src="./resources/assets/js/altair_admin_common.min.js"></script>



  
            
            
 