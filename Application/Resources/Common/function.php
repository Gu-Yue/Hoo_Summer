<?php

   //写入文件日志
   //记录文件日志
   //用户id 操作类型   文件名  文件路径
   function writeFilelog($uid,$action,$filename,$filetype,$path,$state){
       file_put_contents(FINDLOG_PATH."/filelog.txt",date("Y-m-d H:i:s",time())." ".$uid."  ".$action."  ".$filename."  ".$filetype."  ".$path." ".$state."  "."\r\n",FILE_APPEND);
   }
   
   
   
   
  