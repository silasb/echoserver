# Echoserver

Fork of https://github.com/kubernetes/kubernetes/tree/master/test/images/echoserver for M1 users

```
docker pull silasb/echoserver
docker run -it -p 8080:8080 silasb/echoserver
curl localhost:8080


Hostname: 7942d761800a

Pod Information:
	-no pod information available-

Server values:
	server_version=nginx: 1.19.9 - lua: 10020

Request Information:
	client_address=172.17.0.1
	method=GET
	real path=/
	query=
	request_version=1.1
	request_scheme=http
	request_uri=http://localhost:8080/

Request Headers:
	accept=*/*
	host=localhost:8080
	user-agent=curl/7.79.1

Request Body:
	-no body in request-

```

This is a simple server that responds with the http headers it received.

Image versions >= 2.5 support IPv6.
Image Versions >= 1.10 support HTTP2 on :8443.
Image Versions >= 1.9 expose HTTPS endpoint on :8443.
Image versions >= 1.4 removes the redirect introduced in 1.3.
Image versions >= 1.3 redirect requests on :80 with `X-Forwarded-Proto: http` to :443.
Image versions > 1.0 run an nginx server, and implement the echoserver using lua in the nginx config.
Image versions <= 1.0 run a python http server instead of nginx, and don't redirect any requests.
