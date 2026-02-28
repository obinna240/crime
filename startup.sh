python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade dbt-core
python -m pip show dbt-core
dbt init --skip-profile-setup crime