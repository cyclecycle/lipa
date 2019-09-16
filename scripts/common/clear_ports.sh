echo clearing ports

db_port_pid="$(lsof -ti :$DB_PORT)"
kill -9 $db_port_pid

pattern_api_port_pid="$(lsof -ti :$PATTERN_API_PORT)"
kill -9 $pattern_api_port_pid

ui_port_pid="$(lsof -ti :$UI_PORT)"
kill -9 $ui_port_pid