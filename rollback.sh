warname=$(ls target/*.war > name | awk -F "/" '{print $2}' name) | sed "s/.war//g"
response=$(curl --write-out '%{http_code}' --silent  http://65.1.131.188:8080/$warname/ | tail -1)
if [ $response -eq 200 ];then
exit
else
present deployment failed 
fi
