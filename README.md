# Data Modelling in GCP

- create virtual env
```python3 -m venv dbt-env ```  
y
- navigate to new env dir and activate env
```source bin/activate ```

- install dbt for bigquery
``` pip install \
dbt-core \
dbt-postgres \
dbt-bigquery 
```

- start a new dbt project
``` dbt init <project_name> ```

- check with dbt debug
``` dbt debug ```

- To install gcloud cli in container (used to connect dbt with BigQuery):  
```
apt-get update
apt-get install apt-transport-https ca-certificates gnupg curl
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update && apt-get install google-cloud-cli
gcloud init

gcloud auth application-default login \
  --scopes=https://www.googleapis.com/auth/bigquery,\
https://www.googleapis.com/auth/drive.readonly,\
https://www.googleapis.com/auth/iam.test

```