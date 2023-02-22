docker build -t cr.yandex/crp8bq8clcltin9m5fp7/web-static .

exit 0

#
# snippets to login & push
#
cat svc_key.json | docker login \                                  
  --username json_key \
  --password-stdin \
  cr.yandex

docker push cr.yandex/crp8bq8clcltin9m5fp7/web-static