rm log/out
rm log/error
bash scripts/common/clear_ports.sh >> log/out 2>>log/error
echo Launching DB on port $DB_PORT
bash scripts/dev/launch_db.sh >> log/out 2>>log/error & 
echo Launching pattern API on port $PATTERN_API_PORT
bash scripts/dev/launch_pattern_api.sh >> log/out 2>>log/error &
echo Launching UI on port $UI_PORT
bash scripts/dev/launch_ui.sh >> log/out 2>>log/error
