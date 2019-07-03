bash scripts/common/clear_ports.sh
bash scripts/dev/launch_db.sh &
bash scripts/dev/launch_pattern_api.sh &
cd lipa-ui
yarn run test:unit
yarn run test:e2e