FROM apache/airflow:2.8.1

USER root

RUN apt-get update && apt-get install -y gcc libpq-dev

COPY requirements.txt /requirements.txt

COPY --chown=airflow:airflow ./.dbt/profiles.yml /home/airflow/.dbt/profiles.yml

USER airflow

RUN pip install --no-cache-dir -r /requirements.txt
