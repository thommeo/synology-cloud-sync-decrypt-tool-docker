# Synolog ClodSync Decryptor Docker

1. Put encrypted data in `./data` directory
2. Put `private.pem` and `public.pem` in `./key` directory
3. Run `make build` to build the Docker image
4. Run `make run` to decrypt data in `data` directory recursively and put the decrypted data in `./output` directory
