source env/bin/activate
source ENV.sh
cd lipa-db

echo "installing node modules"
# npm install

cd ..
bash scripts/test/test_db.sh
cd lipa-db

echo "init db"
bash scripts/init_prod_db.sh

# deactivate
echo done