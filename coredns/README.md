## 使用方式
```bash
# 查看使用方式
bash deploy.sh -help
# 测试生成的yaml是否正确
bash deploy.sh -i 10.68.0.2 -d cluster.local -r 10.68.0.0/16 | kubectl apply -f - --dry-run
# 部署到kubernetes
bash deploy.sh -i 10.68.0.2 -d cluster.local -r 10.68.0.0/16 | kubectl apply -f - 
```