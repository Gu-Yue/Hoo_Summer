<?php if (!defined('THINK_PATH')) exit();?><ul class="list-group">
                        <li class="list-group-item hoo-over-hidden text-center">
                        	
                        <img alt="100*100" src="<?php echo substr($image['path'],1); ?>"> 
                        </li>
                         <li class="list-group-item">
                         文件名：<?php echo ($image["alias"]); ?>			                     	
                        </li>
                        <li class="list-group-item">
                         类型：<?php echo ($image["type"]); ?>			                     	
                        </li>
                        <li class="list-group-item">
                        <span></span>
                        尺寸: 
                        <select>
                        <?php foreach($sizes as $size): ?>
                        <option><?php echo ($size["size"]); ?></option>	
                        <?php endforeach; ?>
                        </select>	
                        </li>	
                        <li class="list-group-item hoo-no-padding-lr hoo-over-hidden">
                        <span class="pull-right">
                        <button class="btn btn-sm btn-primary" id="resource-edi-save">编辑</button>	
                        <button class="btn btn-sm btn-danger" id="resource-edi-del">删除</button>&nbsp;		
                        </span>   
                        </li>	
                        	
                        </ul>