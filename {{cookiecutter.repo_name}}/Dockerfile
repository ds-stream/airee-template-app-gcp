# Latest LTS version
FROM apache/airflow:2.1.4

ENV AIRFLOW_HOME /opt/airflow
COPY --chown=airflow:root ./{{cookiecutter.app_folder_name}}/requirements.txt ${AIRFLOW_HOME}/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r ${AIRFLOW_HOME}/requirements.txt
#RUN pip install 'apache-airflow[google_auth]'
COPY --chown=airflow:root ./{{cookiecutter.app_folder_name}}/ ${AIRFLOW_HOME}
COPY --chown=airflow:root ./{{cookiecutter.yamles_folder_name}}/airflow_pod_template.yaml ${AIRFLOW_HOME}/airflow_pod_template.yaml
