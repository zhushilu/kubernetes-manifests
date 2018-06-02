## 说明

- k8s中通过stateful部署mysql的例子，亲测没有问题，主从状态自动创建和维护
- 版本为mysql5.7，官方镜像

## 注意事项

- 在修改配置文件时不要使用 `skip_name_resolve` ,因为主从是通过域名进行同步的所以不能skip
- 注意pvc的使用，这里集群已经创建了nfs的storageclass，所以直接指定使用了改storageclass，自动创建pv
 

## 使用

- 默认集群会运行在default命名空间下。增加从节点只需要修改副本数量即可
- 在default命名空间下使用mysql只需要短域名即可master（mysql-0.mysql）,slave(mysql),slave包括所有的mysql节点包括主，所以slave只适合读写分离后的读取
- 在其他命名空间下需要加上长格式的域名：mysql-0.mysql.default.svc.cluster.local
- 创建用户，修改数据啥的只需要在master操作即可
