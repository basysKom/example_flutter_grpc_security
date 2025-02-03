run_server:
	dart run

gen_cert:
	openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj "/CN=localhost" -addext "subjectAltName=DNS:localhost"
	mv cert.pem ../../assets/
