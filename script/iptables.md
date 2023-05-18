# 封单个IP的命令

```shell
iptables -I INPUT -s 124.115.0.199 -j DROP
```
　
# 封IP段的命令
```shell
iptables -I INPUT -s 124.115.0.0/16 -j DROP　后二位
```

# 封整个段的命令

```shell
iptables -I INPUT -s 194.42.0.0/8 -j DROP　后三位
```

# 封几个段的命令

```shell
iptables -I INPUT -s 61.37.80.0/24 -j DROP　后一位
```

# 只封80端口

```shell
iptables -I INPUT -p tcp –dport 80 -s 124.115.0.0/24 -j DROP
```

# 列出屏蔽Ip条目
```shell
iptables -L INPUT --line-numbers
```

# 解封

```shell
iptables -F
```

# 清空

```shell
iptables -D INPUT 数字
```

# 列出 INPUT链 所有的规则

```shell
iptables -L INPUT --line-numbers
```

# 保存
```shell
service iptables save
```

# 重启
```shell
service iptables restart
```
