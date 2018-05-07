<?php

date_default_timezone_set('PRC');
ini_set('mongo.long_as_object', 1);
class Action
{

  function __construct($pre,$dbuser,$dbpass,$host)
  {
    $this->pre=$pre;
    $this->dbsuer=$dbuser;
    $this->dbpass=$dbpass;
    $this->host=$host;
    $string="mongodb://".$dbuser.':'.$dbpass.'@'.$host.':27017/'.$pre.'?appname='.$pre;

    $manager = new MongoDB\Driver\Manager($string);

    $this->manager=$manager;

  }
  /*插入数据，返回最后一条插入的_id*/
  /*insert,return insert _id*/
  public function add($db,$data=array()){
    $manager=$this->manager;
    $pre=$this->pre;
    $bulk = new MongoDB\Driver\BulkWrite;
    $_id=$bulk->insert($data);
    
    $list=$manager->executeBulkWrite($pre.'.'.$db, $bulk);

    $suc=$list->getInsertedCount();

   
    if ($suc==0) {

      return false;

    }else{

      return $_id;
    }  
  }
  public function updates($db,$where=array(),$set=array(),$des=array('multi' =>false, 'upsert' =>false)){
    $pre=$this->pre;
    $manager=$this->manager;
    $bulk = new MongoDB\Driver\BulkWrite;
    $bulk->update($where,['$set' =>$set],$des);
    $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 500);
    $result=$manager->executeBulkWrite($pre.'.'.$db, $bulk, $writeConcern);
    return $result->getMatchedCount();

  }
 
  public function select($db,$where=array(),$option=array()){
  
    $manager=$this->manager;

    $pre=$this->pre;

    $query = new MongoDB\Driver\Query($where,$option);

    $cursor = $manager->executeQuery($pre.'.'.$db,$query);

    foreach ($cursor as $key => $value) {
      $list[]=json_decode(json_encode($value),true);
    }
    if (count($list)==1) {
        return array_pop($list);
    }elseif(count($list)>1){
        return $list;
    }elseif(empty($list)){
        return 0;
    }
  }
  public function get($db,$where=array(),$option=array()){

    $manager=$this->manager;
    $pre=$this->pre;
    $query = new MongoDB\Driver\Query($where,$option);
    $cursor = $manager->executeQuery($pre.'.'.$db,$query);
    foreach ($cursor as $key => $value) {
      $list[]=json_decode(json_encode($value),true);
    }
    if (!empty($list)) {
      return $list;
    }else{
      return false;
    }
  }
  
  public function delete($db,$where=array(),$limit=array('limit'=>1)){

      $manager=$this->manager;
      $pre=$this->pre;
      $bulk = new MongoDB\Driver\BulkWrite;

      $bulk->delete($where,$limit);   // limit 为 1 时，删除第一条匹配数据
      // $bulk->delete(['name' => '日本'], ['limit' => 0]);   // limit 为 0 时，删除所有匹配数据
    $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 1000);
    $result = $manager->executeBulkWrite($pre.'.'.$db, $bulk, $writeConcern);
    return $result->getDeletedCount();
    
  }

  public function remove($db){

      $manager=$this->manager;
      $pre=$this->pre;
      $bulk = new MongoDB\Driver\BulkWrite;

      $bulk->delete([]);  
      
    $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 1000);
    $result = $manager->executeBulkWrite($pre.'.'.$db, $bulk, $writeConcern);
    return $result->getDeletedCount();
    
  }

  // 二维数组去重
  public  function second_array_unique_bykey($arr, $key){
      $tmp_arr = array();
      foreach($arr as $k => $v){
        if(in_array($v[$key], $tmp_arr)){   //搜索$v[$key]是否在$tmp_arr数组中存在，若存在返回true
                    unset($arr[$k]); //销毁一个变量  如果$tmp_arr中已存在相同的值就删除该值
                }else{
                    $tmp_arr[$k] = $v[$key];  //将不同的值放在该数组中保存
                }
            }
            //ksort($arr); //ksort函数对数组进行排序(保留原键值key)  sort为不保留key值
            return $arr;
  }
 
  //group_method
  public function group_method($collection,$key,$where=''){
    
    if (empty($where)) {
      $t1=$this->distinct($collection,$key);
    }else{
      $t1=$this->distinct($collection,$key,$where);
    }

    foreach ($t1 as $k=> $value) {
      $data[]=array($key=>$value);

    }
    return $data;//统计有哪些$key
  }
  public function group($collection,$key,$where=''){//统计$key数量
    if (empty($where)) {
      $all_user=$this->distinct($collection,$key);
    }else{
      $all_user=$this->distinct($collection,$key,$where);
    }

    $array=array();
    foreach ($all_user as $key => $value) {
      array_push($array,$value);//列举全部的用户
    }
    $datas=array_count_values($array);
    foreach ($datas as $key => $value) {
      $list['_id']=$key;
      $list['total']=$value;
      $data[]=$list;
    }
      return $data;
  }
  //$how 加减乘除,$rename改字段名字，删字段名
  public function increase($db,$where=array(),$set=array(),$how='$inc'){
    
    $pre=$this->pre;
    $manager=$this->manager;
    $bulk = new MongoDB\Driver\BulkWrite;
    $bulk->update($where,[$how =>$set]);
    // $bulk->update($where,[$how =>$set]);
    $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 500);
    $result=$manager->executeBulkWrite($pre.'.'.$db, $bulk, $writeConcern);
    return $result->getMatchedCount();

  }
  
  //默认往数组里面添加一个值，如果这个值已经存在，就不再添加
  //$pop->1删除数组里面的最后一个元素,-1删除数组第一个元素
  //$pull->删除数组里面指定的元素，或者小于大于某个数值->['$gte'=>10]
  //$pullAll->删除数组里面的值,比如[20,30],删除20和30这两个值，不存在就不删除
  public function Command($db,$where=array(),$set=array(),$how='$addToSet'){
    $pre=$this->pre;
    $manager=$this->manager;
    $bulk = new MongoDB\Driver\BulkWrite;
    $bulk->update($where,[$how =>$set]);
    $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 500);
    $result=$manager->executeBulkWrite('xxdb.'.$db, $bulk, $writeConcern);
    return $result->getMatchedCount();
  }
 /*distinct method*/
  public function distinct($db,$key,$where=''){
    $pre=$this->pre;
    $manager=$this->manager;
    if (empty($where)) {
      $cmd = new MongoDB\Driver\Command(['distinct' => $db, 'key' => $key,]);
    }else{
      $cmd = new MongoDB\Driver\Command(['distinct' => $db, 'key' => $key, 'query' => $where,
      ]);
    }

    $cursor = $manager->executeCommand($pre, $cmd); // retrieve the results
    $scents = current($cursor->toArray())->values; // get the distinct values as an array
    return $scents;
  }
   public function rand_($db,$where='',$count=1){//默认随机返回一条数据
      // $manager = new MongoDB\Driver\Manager("mongodb://router:routerpass@localhost:27017/xxdb?appname=xxdb");
      $pre=$this->pre;
      $manager=$this->manager;
      if (empty($where)) {
        $command = new MongoDB\Driver\Command([
            'aggregate' => $db,
            'pipeline' => [['$sample'=>['size'=>$count]],],'cursor' => new stdClass,]);
      }else{
        $command = new MongoDB\Driver\Command([
          'aggregate' => $db,
          'pipeline' => [[ '$match' => $where],['$sample'=>['size'=>$count]],],'cursor' => new stdClass,]);
      }
      $cursor = $manager->executeCommand($pre, $command);
      foreach ($cursor as $key => $value) {
        $list[]=json_decode(json_encode($value),true);
      }
      if (count($list)==1) {
        return array_pop($list);
      }elseif(count($list)>1){
          return $list;
      }elseif(empty($list)){
          return 0;
      }

  }
  /*联表*/
  function union_table(){
    $manager = new MongoDB\Driver\Manager("mongodb://localhost:27017/xxdb");
    $command = new MongoDB\Driver\Command([
              'aggregate' =>'vpn_user',

                'pipeline' => [

                  ['$lookup' => [
                    'from'=>'buyinfo',
                    'localField'=>"username",
                    'foreignField'=>"user",
                    'as'=>'list'
                  ]],


              ],

              'cursor' => new stdClass,
            ]);
    $cursor = $manager->executeCommand('xxdb', $command);
          foreach ($cursor as $key => $value) {
              $list[]=json_decode(json_encode($value),true);
      }
      return $list;
    }





}

