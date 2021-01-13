docker build -t mpradipto/multi-client:latest -t mpradipto/multi-client:$VERSION -f ./client/Dockerfile ./client
docker build -t mpradipto/multi-server:latest -t mpradipto/multi-server:$VERSION -f ./server/Dockerfile ./server
docker build -t mpradipto/multi-worker:latest -t mpradipto/multi-worker:$VERSION -f ./worker/Dockerfile ./worker

docker push mpradipto/multi-client:latest
docker push mpradipto/multi-server:latest
docker push mpradipto/multi-worker:latest

docker push mpradipto/multi-client:$VERSION
docker push mpradipto/multi-server:$VERSION
docker push mpradipto/multi-worker:$VERSION
