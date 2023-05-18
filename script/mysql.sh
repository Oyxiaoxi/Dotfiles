#!/bin/sh
# Author Oyxiaoxi
# Updated 2017.03.07
# E-mail Oyxiaoxi@hotmail.com
# The WebsiteBackup mysql files -------------------

# 移除之前的备份文件
rm -rf ./__backup_files__/*.sql

# 读取数据库列表(多个数据库直接用空格隔开)
db_list=$(cat ./main_list)

# 保存的名字
save_name=''

# 获取数据库备份命令 mysqldump 的完整路径(本地)
mysqldump=/usr/local/bin/mysqldump

# 遍历数据库列表
for db_name in $db_list
do
    # 将数据库列表用 mysqldump 导出成数据库列表 + mysql
    save_name="./__backup_files__/"$db_name"_$(date +%Y%m%d).sql"
    $mysqldump -hServerIP -uMysql_backup -pServerPassword $db_name >save_name
done

# 打包和压缩
name='./__backup_files__/mysql_'$(date +%Y%m%d)'.tar.gz'

# 可选是否要打包成一个单独的 sql 移除之前的备份文件
tar -zcf $name ./__backup_files__/*.sql

# 删除临时的 .sql 文件
rm -rf ./__backup_files__/*.sql%
