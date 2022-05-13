 # Latest LTS version
FROM airflowkubernetesui.azurecr.io/airflow:2.2.5

ENV AIRFLOW_HOME /opt/airflow
COPY ./{{cookiecutter.app_folder_name}}/ ${AIRFLOW_HOME}

USER root
RUN chown -R airflow:root ${AIRFLOW_HOME}
USER airflow

RUN pip install -r ${AIRFLOW_HOME}/requirements.txt