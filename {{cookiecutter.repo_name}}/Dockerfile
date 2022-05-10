 # Latest LTS version
FROM apache/airflow:2.2.5

ENV AIRFLOW_HOME /opt/airflow
COPY ./{{cookiecutter.app_folder_name}}/requirements.txt ${AIRFLOW_HOME}/requirements.txt
COPY ./{{cookiecutter.app_folder_name}}/ ${AIRFLOW_HOME}
COPY ./{{cookiecutter.yamles_folder_name}}/airflow_pod_template.yaml ${AIRFLOW_HOME}/airflow_pod_template.yaml

USER root
RUN chown airflow:root ${AIRFLOW_HOME}
RUN chown airflow:root ${AIRFLOW_HOME}/requirements.txt
RUN chown airflow:root ${AIRFLOW_HOME}/airflow_pod_template.yaml
USER airflow

RUN pip install --upgrade pip
RUN pip install 'apache-airflow[google,postgres]'
RUN pip install 'plyvel==1.4.0'
RUN pip install -r ${AIRFLOW_HOME}/requirements.txt