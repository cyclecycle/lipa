rm log/out
rm log/error
bash ENV.sh
# bash scripts/common/clear_ports.sh
bash scripts/common/clear_ports.sh >> log/out 2>>log/error
echo Launching DB on port 5000
bash scripts/dev/launch_db.sh >> log/out 2>>log/error & 
# bash scripts/dev/launch_db.sh &
echo Launching pattern API on port 8085
bash scripts/dev/launch_pattern_api.sh >> log/out 2>>log/error &
# bash scripts/dev/launch_pattern_api.sh &
echo Launching UI on port 8080
bash scripts/dev/launch_ui.sh >> log/out 2>>log/error
# bash scripts/dev/launch_ui.sh

