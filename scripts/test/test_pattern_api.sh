export LIPA_SQLITE_DB_FILE="test.db"
echo test pattern api
cd lipa-pattern-api
source env/bin/activate
pytest
export LIPA_SQLITE_DB_FILE="prod.db"