## 说明
- 需要提前穿建pv,pvc，挂载gitlab数据目录，根据实际情况修改pv和pvc的yaml文件，这里的例子使用的是nfs。
- 创建redis
- 需要提前准备mysql，这里使用的k8s中运行的mysql，创建用户，创建数据库，修改gitlab对应yaml文件中的地址
- 


## runner
- 提供持续集成和实现git-page，这里没有使用
