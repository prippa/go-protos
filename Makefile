PROTOC = protoc
PROTO_DIR = ./proto/sso
OUT_DIR = ./gen/go

all: generate

generate:
	$(PROTOC) --go_out=$(OUT_DIR) --go-grpc_out=$(OUT_DIR) $(PROTO_DIR)/*.proto

clean:
	rm -rf $(OUT_DIR)/*

.PHONY: all generate clean