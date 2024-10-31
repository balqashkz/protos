# Директория для хранения сгенерированных файлов GO
GO_PROTO_DIR=gen/go

# Генерация protobuf файлов для Go
generate-proto:
	@echo "Генерация protobuf файлов для SSO..."
	protoc -I sso ./sso/*.proto \
		--go_out=$(GO_PROTO_DIR)/sso \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GO_PROTO_DIR)/sso \
		--go-grpc_opt=paths=source_relative

	@echo "Генерация завершена."
