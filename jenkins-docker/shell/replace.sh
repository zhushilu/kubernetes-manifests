project='cybershop4-qa'
servername='web'
image="harbor.product.co-mall/project_${project}/${project}-${servername}"

replace_num=''


limit_min_cpu=''
limit_max_cpu=''
limit_min_mem=''
limit_max_mem=''


app_port='8080'

sed -i "s#PROJECT_NAME#${project}-${servername}#g" deployment.yaml
sed -i "s#NAMESPACE#${project}#g"                  deployment.yaml

sed -i "s#IMAGES_TAG#${image}#g"                    deployment.yaml
sed -i "s#REPLICAS_NUM#${replace_num}#g"           deployment.yaml
sed -i "s#APP_PORT#${app_port}#g"                  deployment.yaml


sed -i "s#LIMIT_MIN_CPU#${limit_min_cpu}#g"         deployment.yaml
sed -i "s#LIMIT_MAX_CPU#${limit_max_cpu}#g"         deployment.yaml
sed -i "s#LIMIT_MIN_MEM#${limit_min_mem}#g"        deployment.yaml
sed -i "s#LIMIT_MAX_MEM#${limit_max_mem}#g"        deployment.yaml
