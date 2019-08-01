export LIPA_SQLITE_DB_FILE="test.db"
bash scripts/common/clear_ports.sh
bash scripts/dev/launch_db.sh &
bash scripts/dev/launch_pattern_api.sh &
cd lipa-ui
yarn run test:unit
yarn run test:e2e
export LIPA_SQLITE_DB_FILE="prod.db"