docker rm -f my-dashboard
docker run -d \
  -p 8081:80 \
  -v /Users/mejdi.mejdoub/work/pg/tmp/dashy/conf.yml:/app/public/conf.yml \
  -v /Users/mejdi.mejdoub/work/pg/tmp/dashy/custom/dev.yml:/app/public/pages/dev.yml \
  -v /Users/mejdi.mejdoub/work/pg/tmp/dashy/custom/common.yml:/app/public/common.yml \
  -v /Users/mejdi.mejdoub/work/pg/tmp/dashy/custom/crypto.yml:/app/public/crypto.yml \
  --name my-dashboard \
  --restart=always \
  lissy93/dashy:latest