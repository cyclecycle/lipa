echo clearing ports

db_port_pid="$(lsof -ti :8085)"
kill -9 $db_port_pid

pattern_api_port_pid="$(lsof -ti :5000)"
kill -9 $pattern_api_port_pid

ui_port_pid="$(lsof -ti :8080)"
kill -9 $ui_port_pid