<?php if (!defined('THINK_PATH')) exit();?><div class="panel panel-default hoo-admin-table">
	<div class="panel-heading bg-white">
		<ul class="nav nav-tabs hoo-admin-table-actions">
			<?php foreach($table->actions as $action){ if($action->tag =='dropdown'){ echo '<li class="dropdown">
						 <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="'.$action->id.'">'.$action->name.'<i class="caret"></i></a>
			             <ul class="dropdown-menu animated flipInX pull-left">'; foreach($action->options as $option){ $option->href = $option->href != "" ? $option->href : '#'; echo '<li>
                   		 	    <a href="'.$option->href.'" id="'.$option->id.'" class="hoo-admin-dropdown-option">
                   		 	    <i class="table-actions-icon '.$option->icon.'"></i>' .$option->name .'<i class="table-actions-tip '.$option->tip.'"></i>' .'</a></li>'; } echo '</ul></li>'; }else if($action->tag=="side"){ echo '<li>
                   	     <a data-toggle="side-right" href="'.$action->href.'" id="'.$action->id.'">
                   	     <i class="'.$action->icon.'"></i> ' .$action->name .'</a>
                   	     </li>'; }else{ echo '<li>
                   	     <a href="#" id="'.$action->id.'">
                   	     <i class="'.$action->icon.'"></i> ' .$action->name .'</a>
                   	     </li>'; } } ?>
		</ul>
		<!-- /panel-actions -->
		<!-- <div class="panel-actions">
			<button data-expand="#panel-table" title="expand" class="btn-panel">
			<i class="fa fa-expand"></i>
			</button>
		</div> -->
		<h1></h1>
	</div>
	<!-- /panel-heading -->
	<div class="panel-body hoo-no-padding">
	  <form>
	  <?php if(count($table->rows)>0): ?>		
	  <table class="table table-hover hoo-no-margin">
	  	
                        <thead class="hoo-bg-slight">
                        	<tr>
                        	<th width='2%'><input class="checkbox-o hoo-check-all" type="checkbox"></th>
                        	<?php foreach($table->thead as $thead){ echo '<th class="'.$thead->class.'">'.$thead->name.'</th>'; } ?>
                            </tr>
                        </thead>
                        
                        <tfoot class="hoo-bg-slight">
                            <tr>
                                <th><input class="checkbox-o hoo-check-all" type="checkbox"></th>
                                <?php foreach($table->thead as $thead){ echo '<th class="'.$thead->class.'">'.$thead->name.'</th>'; } ?>
                            </tr>
                        </tfoot>
                        <tbody>
                                <?php foreach($table->rows as $row){ echo '<tr>'; echo '<td><input class="checkbox-o hoo-check" type="checkbox" value="'.$row['id'].'"></td>'; $i = 0; foreach($table->index as $index){ echo '<td class="'.$table->thead[$i]->class.'">'; if($index->href=='y'){ $link = $index->ident == 'y' ? $index->link.'/'.$row[$table->ident] : $index->link; echo '<a href="'.$link.'">'.$row[$index->name].'</a>'; }else{ echo $row[$index->name]; } echo '</td>'; $i++; } echo '<td class="'.$table->thead[$i]->class.'">'; foreach($table->options as $option){ $flag = $option->flag =='y' ? $row['flag'] : ''; echo '<a title="'.$option->title.'" '.$flag.' class="'.$option->class.'" href="'.$option->href.'/'.$row[$table->ident].'">
                                			  <i class="'.$option->icon.'"></i>
                                			  </a>'; } echo '</td>'; echo '</tr>'; } ?>
                        </tbody>
                    </table>
             <?php else: ?>
             <div class="text-center">
             <br />
             <br />
             <?php echo ($table->message); ?>
             <br />
             <br />
             <br />	
             </div>
             <?php endif; ?>       	
             <div class="hoo-no-padding-lr bordered-top hoo-border-table hoo-over-hidden table-actions">      
		     <div class="col-md-2 hoo-no-margin option-multi"> 	                              
		     <form>
		     <select class="form-control input-sm" name="multi">
		     	<?php foreach($table->multis as $action){ echo '<option>'.$action.'</option>'; } ?>
             </select>
             
		    </div>
		    <div class="col-md-2 hoo-no-margin">
		    <button class="btn btn-sm btn-primary" id="multi_apply" type="submit">应用</button>	
		    </div>
		    </form>
                <?php echo ($table->pagination); ?>                    
		    </div> 
	</form>	    
	</div>
</div>