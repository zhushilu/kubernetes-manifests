## 说明

- tomcat 目录是一个构建添加jmx_exporter的tomcat示例
- 添加监控jar后，需要单独的端口暴露metrics

- jar类应用也可以使用，参考官方说明：

```
java -javaagent:./jmx_prometheus_javaagent-0.3.1.jar=8080:config.yaml -jar yourJar.jar
```


## github地址

`https://github.com/prometheus/jmx_exporter`


## 模板示例

- 提供两个模板json，需要自行调整过滤规则
