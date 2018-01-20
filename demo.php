<?php  
include 'db_action.php';
/**
* 
*/
class Demo extends Action
{
	
	function __construct($pre,$dbuser,$dbpass,$host)
	{
		$manager=new Action($pre,$dbuser,$dbpass,$host); 
		$this->manager=$manager;
	}
	function demo_select(){
		$manager=$this->manager;
		$list=$manager->select('collection');
		echo json_encode($list);
	}
	function demo_update(){
		$manager=$this->manager;
		$manager->updates('collection',(array)$where,(array)$set);
	}
}
$demo=new Demo($pre,$db_user,$db_pass,$host);
$demo->demo_select();
$demo->demo_update();
