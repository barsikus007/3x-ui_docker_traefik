#!/bin/bash

# shellcheck disable=SC1091
source .env

sudo litecli db/x-ui.db -e "
INSERT INTO settings (key, value) VALUES ('webBasePath', '/$ADMIN_PATH/');
INSERT INTO settings (key, value) VALUES ('subEnable', 'true');
INSERT INTO settings (key, value) VALUES ('subPath', '/$SUB_PATH/sub/');
INSERT INTO settings (key, value) VALUES ('subURI', 'https://sub.$HOST/$SUB_PATH/sub/');
INSERT INTO settings (key, value) VALUES ('subJsonPath', '/$SUB_PATH/json/');
INSERT INTO settings (key, value) VALUES ('subJsonURI', 'https://sub.$HOST/$SUB_PATH/json/');
"

docker compose restart 3x-ui
