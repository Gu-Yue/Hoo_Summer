<?php
    
    namespace Source\Model;
    use Think\Model;
    class ResourcesModel extends Model {
    protected $tableName = 'resources';
    //protected $insertFields = array('id','uid','cover','type','title','body','time','visit');
    protected $patchValidate = true;  //设置批量验证
    protected $_validate = array(
          //array('name','require','名字为空'),                                   //必须验证
          //array('name',"0,30",'名字不能超过30个字符',0,'length'),                  //必须验证
      );
      //插入数据时自动格式化处理    
     protected $_auto = array (     
          //array('uid',USER_ID),                         //新增的时候处理
          //array('time','time',1,'function'),            //新增的时候处理
        );       
    }