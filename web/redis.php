<?php
/**
 * Created by PhpStorm.
 * User: day
 * Date: 2018/9/18
 * Time: 17:41
 */
$redis = new Redis();
$redis->connect('redis40', 6379); //连接Redis
$redis->auth('123456'); //密码验证

$redis->set('name','98k');

var_dump($redis->get('name'));