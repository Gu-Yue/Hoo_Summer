<?php if (!defined('THINK_PATH')) exit();?><!--文件资源盒子-->
	<div class="box" id="source_box_file" <?php if(count($resources_list['files'])<1) echo "style='display:none'"; ?>>
		 <div class="box-header box-header-small box-header-background">
		 <div class="title">
		 <i class="icon-file"></i>
                         文件
	     </div>
		<div class="actions">
	    <a class="btn box-collapse btn-mini btn-link" href="#"><i></i></a>
	    </div>
	    </div>
		<div class="box-content" style="overflow: hidden">
		<table class="table" style="margin-bottom:0;" id="source_box_file_table">
	    <tbody>  
    <?php foreach($resources_list['files'] as $k=>$v) :?>
    <?php  $v['resource_content'] = json_decode($v['resource_content']); if($k==0||($resources_list['files'][$k]['resource_group']!=$resources_list['files'][$k-1]['resource_group'])): ?>	
    <tr>
	<td class="cateName"><a class="cateNameA" sourcetype="File" href="javascript:;"><?php echo $v['resource_group']; ?></a></td>
	<td>
	<table class="table table-bordered table-condensed table-hover" style="margin-bottom:0;">
	<tbody>
    <?php endif; ?>
								<tr>
									<td>
										<a class="has-popover sourceItem" id="<?php echo 'fileSource'.$v['id']; ?>" sid="<?php echo $v['id']; ?>" sourcetype="File"  href="#"  data-placement="right" data-content="<?php echo $v['resource_content']->describe; ?>" data-original-title="">
                            		<?php echo $v['resource_title']; ?>
										</a>
									</td>
								</tr>
        <?php if($resources_list['files'][$k]['resource_group']!=$resources_list['files'][$k+1]['resource_group']): ?>
		</tbody>
		</table>
		</td>
		</tr>
     <?php endif; ?>   	     
    <?php endforeach; ?>
    </tbody>
	</table>
	</div>
	</div>
    
	<!--图书资源文件-->
	<div class="box" id="source_box_book" <?php if(count($resources_list['books'])<1) echo "style='display:none'"; ?>>
		 <div class="box-header box-header-small box-header-background">
		 <div class="title">
		 <i class="icon-file"></i>
                         图书
	     </div>
		<div class="actions">
	    <a class="btn box-collapse btn-mini btn-link" href="#"><i></i></a>
	    </div>
	    </div>
		<div class="box-content" style="overflow: hidden">
		<table class="table" style="margin-bottom:0;" id="source_box_book_table">
	    <tbody>  
    <?php foreach($resources_list['books'] as $k=>$v):?>
    <?php
 $v['resource_content'] = json_decode($v['resource_content']); if($k==0||($resources_list['books'][$k]['resource_group']!=$resources_list['books'][$k-1]['resource_group'])): ?>	
    <tr>
	<td class="cateName"><a class="cateNameA" sourcetype="Book" href="javascript:;"><?php echo $v['resource_group']; ?></a></td>
	<td>
	<table class="table table-bordered table-condensed table-hover" style="margin-bottom:0;">
	<tbody>
    <?php endif; ?>
								<tr>
									<td>
										<a class="has-popover sourceItem" id="<?php echo 'bookSource'.$v['id']; ?>" sid="<?php echo $v['id']; ?>" sourcetype="Book" href="#"  data-placement="right" data-content="<?php echo $v['resource_content']->describe; ?>" data-original-title="">
                            		<?php echo $v['resource_title']; ?>
										</a>
									</td>
									<td>
										<div class="text-center">
											<span title="作者"><?php echo $v['resource_content']->writer; ?></span>
										</div>
									</td>
								</tr>
        <?php if($resources_list['books'][$k]['resource_group']!=$resources_list['books'][$k+1]['resource_group']): ?>
		</tbody>
		</table>
		</td>
		</tr>
     <?php endif; ?>   	     
    <?php endforeach; ?>
    </tbody>
	</table>
	</div>
	</div>
	
	<!--链接资源盒子-->
	<div class="box" id="source_box_link" <?php if(count($resources_list['links'])<1) echo "style='display:none'"; ?>>
		 <div class="box-header box-header-small box-header-background">
		 <div class="title">
		 <i class="icon-file"></i>
                         链接
	     </div>
		<div class="actions">
	    <a class="btn box-collapse btn-mini btn-link" href="#"><i></i></a>
	    </div>
	    </div>
		<div class="box-content" style="overflow: hidden">
		<table class="table" style="margin-bottom:0;" id="source_box_link_table">
	    <tbody>  
    <?php foreach($resources_list['links'] as $k=>$v):?>
    <?php  $v['resource_content'] = json_decode($v['resource_content']); if($k==0||($resources_list['links'][$k]['resource_group']!=$resources_list['links'][$k-1]['resource_group'])): ?>	
    <tr>
	<td class="cateName"><a class="cateNameA" sourcetype="Link" href="javascript:;"><?php echo $v['resource_group']; ?></a></td>
	<td>
	<table class="table table-bordered table-condensed table-hover" style="margin-bottom:0;">
	<tbody>
    <?php endif; ?>
								<tr>
									<td>
										<a class="has-popover sourceItem" id="<?php echo 'linkSource'.$v['id']; ?>"  sid="<?php echo $v['id']; ?>" sourcetype="Link" href="#"  data-placement="right" data-content="<?php echo $v['resource_content']->link; ?>" data-original-title="">
                            		<?php echo $v['resource_title']; ?>
										</a>
									</td>
								</tr>
        <?php if($resources_list['links'][$k]['resource_group']!=$resources_list['links'][$k+1]['resource_group']): ?>
		</tbody>
		</table>
		</td>
		</tr>
     <?php endif; ?>   	     
    <?php endforeach; ?>
    </tbody>
	</table>
	</div>
	</div>
	
	<!--广告资源盒子-->
	<div class="box" id="source_box_ad" <?php if(count($resources_list['ads'])<1) echo "style='display:none'"; ?>>
		 <div class="box-header box-header-small box-header-background">
		 <div class="title">
		 <i class="icon-file"></i>
                         广告
	     </div>
		<div class="actions">
	    <a class="btn box-collapse btn-mini btn-link" href="#"><i></i></a>
	    </div>
	    </div>
		<div class="box-content" style="overflow: hidden">
		<table class="table" style="margin-bottom:0;" id="source_box_ad_table">
	    <tbody>  
    <?php foreach($resources_list['ads'] as $k=>$v):?>
    <?php  $v['resource_content'] = json_decode($v['resource_content']); if($k==0||($resources_list['ads'][$k]['resource_group']!=$resources_list['ads'][$k-1]['resource_group'])): ?>	
    <tr>
	<td class="cateName"><a class="cateNameA" sourcetype="Ad" href="javascript:;"><?php echo $v['resource_group']; ?></a></td>
	<td>
	<table class="table table-bordered table-condensed table-hover" style="margin-bottom:0;">
	<tbody>
    <?php endif; ?>
								<tr>
									<td>
										<a class="has-popover sourceItem" id="<?php echo 'adSource'.$v['id']; ?>" sid="<?php echo $v['id']; ?>" sourcetype="Ad" href="#"  data-placement="right" data-content="<?php echo $v['resource_content']->code; ?>" data-original-title="">
                            		<?php echo $v['resource_title']; ?>
										</a>
									</td>
								</tr>
        <?php if($resources_list['ads'][$k]['resource_group']!=$resources_list['ads'][$k+1]['resource_group']): ?>
		</tbody>
		</table>
		</td>
		</tr>
     <?php endif; ?>   	     
    <?php endforeach; ?>
    </tbody>
	</table>
	</div>
	</div>
</block>