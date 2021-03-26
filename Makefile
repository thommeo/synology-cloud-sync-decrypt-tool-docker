build:
	docker build -t syonology-decryptor:latest .

run:
	docker run --rm -it \
	  -v "$(shell pwd)/data:/data" \
	  -v "$(shell pwd)/output:/output" \
	  -v "$(shell pwd)/key:/key" \
	  syonology-decryptor:latest \
	  python -m syndecrypt \
	  --private-key-file=/key/private.pem \
	  --public-key-file=/key/public.pem \
	  --output-directory=/output \
	  /data
