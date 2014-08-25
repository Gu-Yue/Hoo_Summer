<?php
namespace Hoo\Controller;
use Think\Controller;
class LogsController extends Controller {
    public function index(){
    redirect("/admin/user/login");
    $this->display("index");	
    }
    public function system(){
    checkUserLogin();
    
    $this->assign("system_logs_file",array_reverse(scandir(LOG_PATH)));
    print_r(array_reverse(scandir(LOG_PATH)));
    $this->display("system");    
    }
    
    public function users(){
    $this->display("users");
    }
    
    public function visitors(){
    $this->display("visitors");
    }
    
    public function actions(){
    $this->display("actions");
    }
    
    public function ajaxgetlog(){
    checkUserLogin();
    
    if(isset($_GET['filename'])&&isLocalData()){
       $_GET = filterData($_GET);
        $handle = @fopen(LOG_PATH.$_GET['filename'], "r");
            $i = 1;
            echo "<div class='two-bg'>";
            echo $i."<br>";     
            if ($handle) {
                while (!feof($handle)) {
                    $buffer = fgets($handle, 4096);                 
                    if(trim($buffer)==""){
                    $i++;      
                    $bg = $i%2==0 ? "one-bg":"two-bg";   
                    echo "</div>";
                    echo "<div class='$bg'>";
                    echo $i.""; 
                    }
                    echo $buffer."<br>";    
                }
                fclose($handle);
            }
            echo "</div>";  
    } 
    }
    
    public function getfilesize(){
        checkUserLogin();
        
        if(isset($_GET['filename'])&&isLocalData()){
        $_GET = filterData($_GET);
            $filesize = (int)filesize(LOG_PATH.$_GET['filename']);
            $times = 0;
            while($filesize>1000){
            $filesize = round($filesize/1000,2);
            $times++;
            }
            switch($times){
                case 1 : $filesize = (int)$filesize; $filesize.="K"; break;
                case 2 : $filesize.="M"; break;
                case 3 : $filesize.="G"; break;
            }
            echo $filesize;
        }
    }
    public function deletefilelog(){
        checkUserLogin();
        if(isset($_GET['filename'])&&isLocalData()){
            $_GET = filterData($_GET);
            if(unlink(LOG_PATH.$_GET['filename'])){
                echo "success";
            }else{
                echo "error";
            }
        }
    }
}