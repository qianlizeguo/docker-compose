<?php
// 创建连接
$conn = new mysqli('mysql57', 'root', '123456');

// 检测连接
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
echo "连接成功";
