brew install mysql

# start & stop & restart 
mysql.server start 
mysql.server stop
mysql.server restart

# mysql.sock
cd /var && sudo mkdir mysql
sudo ln -s /tmp/mysql.sock /var/mysql/mysql.sock

# mysql root 密码设置
mysql_secure_installation 

# mysql 8.0 连接 Sequel Pro 出错
由 mysql_native_password 改为了 caching_sha2_password,解决问题方法就是修改配置把验证规则再改回来

use mysql;
select user,plugin from user;

# 修改密码难度等级
set global validate_password.policy=LOW;

# 修改密码长度:
set global validate_password.length=6;

# 重设密码，修改密码规则
ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY '新密码';

# 查看变量名
SHOW VARIABLES LIKE 'validate_password%';

# 刷新
FLUSH PRIVILEGES;
