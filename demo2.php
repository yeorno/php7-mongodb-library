<?php  
include 'db_action.php';
/**
* 
*/
class Demo extends Action
{
	
	function __construct($pre,$dbuser,$dbpass,$host,$usedb)
	{
		$manager=new Action($pre,$dbuser,$dbpass,$host,$usedb); 
		$this->manager=$manager;
	}
	function demo_select(){
		$manager=$this->manager;
		$list=$manager->select('check');
		echo json_encode($list);
	}
	function demo_update(){
		$manager=$this->manager;
		$manager->updates('collection',(array)$where,(array)$set);
	}
}
$demo=new Demo('admin',$dbuser,$dbpass,$host,$chose_db);//connect admin first

$demo->demo_select();

