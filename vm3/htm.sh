#!/bin/sh
sudo systemctl enable --now httpd
cd /srv/http

sudo tee index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<body>
<h1>This site was made on VM3.</h1>
<h2>Why?</h2>
<h3>Because I can.</h3>
</body>
</html>
EOF

echo 'site has been created. please navigate to http://192.168.1.13 in order to access it.'
