cd lipa-pattern-api

echo setting up python env
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt

bash scripts/test/test_pattern_api.sh