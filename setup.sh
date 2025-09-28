#!/bin/bash

# shellcheck disable=SC1091
source .env

mkdir -p db/

# sqlite3 db/x-ui.db --help
litecli db/x-ui.db -e "
CREATE TABLE IF NOT EXISTS settings (id integer PRIMARY KEY AUTOINCREMENT,key text UNIQUE,value text);
INSERT OR REPLACE INTO settings (key, value) VALUES ('webBasePath', '/$ADMIN_PATH/');
INSERT OR REPLACE INTO settings (key, value) VALUES ('subEnable', 'true');
INSERT OR REPLACE INTO settings (key, value) VALUES ('subPath', '/$SUB_PATH/sub/');
INSERT OR REPLACE INTO settings (key, value) VALUES ('subURI', 'https://sub.$HOST/$SUB_PATH/sub/');
INSERT OR REPLACE INTO settings (key, value) VALUES ('subJsonPath', '/$SUB_PATH/json/');
INSERT OR REPLACE INTO settings (key, value) VALUES ('subJsonURI', 'https://sub.$HOST/$SUB_PATH/json/');
"

docker compose up -d
