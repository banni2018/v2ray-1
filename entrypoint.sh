#cd /v2raybin
#echo -e "$CONFIG_JSON" > config.json
#if [ "$CERT_PEM" != "$KEY_PEM" ]; then
#  echo -e "$CERT_PEM" > cert.pem
#  echo -e "$KEY_PEM"  > key.pem
#fi

cd /v2raybin
wget -O v2ray.zip https://v2ray.com/download/Core_v3.35/v2ray-linux-64.zip
unzip v2ray.zip 
mv /v2raybin/v2ray-v3.35-linux-64/v2ray \v2ray .
mv /v2raybin/v2ray-v3.35-linux-64/v2ctl \v2ray .
mv /v2raybin/v2ray-v3.35-linux-64/geoip.dat \v2ray .
mv /v2raybin/v2ray-v3.35-inux-64/geosite.dat \v2ray .

chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
./v2raybin
