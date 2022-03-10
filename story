## build das imagens

- acessar diretório do yaml de build (.azdevops)

docker-compose build
docker image inspect #é possível acessar source code da image e outros para verificar

## Push - enviar imagens para o ACR

- tag

docker tag tripinsights/userprofile:1.0 registrynpi4760.azurecr.io/tripinsights/userprofile
docker tag tripinsights/tripviewer:1.0 registrynpi4760.azurecr.io/tripinsights/tripviewer
docker tag tripinsights/user-java:1.0 registrynpi4760.azurecr.io/tripinsights/user-java
docker tag tripinsights/trips:1.0 registrynpi4760.azurecr.io/tripinsights/trips
docker tag tripinsights/poi:1.0 registrynpi4760.azurecr.io/tripinsights/poi

-push

docker login registrynpi4760.azurecr.io

docker push registrynpi4760.azurecr.io/tripinsights/userprofile
docker push registrynpi4760.azurecr.io/tripinsights/tripviewer
docker push registrynpi4760.azurecr.io/tripinsights/user-java
docker push registrynpi4760.azurecr.io/tripinsights/trips
docker push registrynpi4760.azurecr.io/tripinsights/poi

- expose as service 
kubectl expose deployment/...


api-dev