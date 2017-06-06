result=$( sudo docker images -q webnginx )

if [[ -n "$result" ]]; then
  echo "NGINX Container is running"
else
  echo "No such container"
fi
