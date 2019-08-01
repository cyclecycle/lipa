echo "setting up python env"
python3 -m venv env
source env/bin/activate
pip install -r lipa-db/requirements.txt
pip install -r lipa-pattern-api/requirements.txt
