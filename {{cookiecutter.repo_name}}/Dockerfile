 # Latest LTS version
FROM airflowkubernetesui.azurecr.io/airflow:2.2.5

ARG admin
ARG fernet_key
ARG conn_db

ENV AIRFLOW_HOME /opt/airflow
ENV admin_pass=$admin
ENV AIRFLOW__CORE__FERNET_KEY=$fernet_key
ENV AIRFLOW__CELERY__RESULT_BACKEND="db+postgresql://$conn_db"
ENV AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgresql+psycopg2://$conn_db"

COPY ./{{cookiecutter.app_folder_name}}/ ${AIRFLOW_HOME}
COPY ./{{cookiecutter.yamles_folder_name}}/airflow_pod_template.yaml ${AIRFLOW_HOME}/airflow_pod_template.yaml

USER root
RUN chown -R airflow:root ${AIRFLOW_HOME}
USER airflow

RUN pip install -r ${AIRFLOW_HOME}/requirements.txt