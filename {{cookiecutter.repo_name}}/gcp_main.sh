kubectl apply -f https://github.com/rabbitmq/cluster-operator/releases/download/v1.10.0/cluster-operator.yml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_log_pvc.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_service.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/pgbouncer.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_roles.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_secret.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/RabbitmqCluster.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_scheduler_deployment.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_worker_deployment.yaml
kubectl apply -f ./{{cookiecutter.yamles_folder_name}}/airflow_webserver_deployment.yaml


