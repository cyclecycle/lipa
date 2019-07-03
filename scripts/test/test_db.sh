echo test db
cd lipa-db
source env/bin/activate
bash scripts/init_test_db.sh
node scripts/start_rest.js &
rest_pid=$!
npm run test
kill -9 $rest_pid