cd lipa-db

echo installing node modules
npm install

echo setting up python env
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt

cd ..
bash scripts/test/test_db.sh
cd lipa-db

# echo init db file
# bash scripts/init_prod_db.sh

deactivate
echo done