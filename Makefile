.PHONY: go
go:
	docker run -v `pwd`/model:/defs noltedennisnamely/protoc-all:1.29_0 -d protodefs -l go

.PHONY: dart
dart:
	docker run -v `pwd`/model:/defs noltedennisnamely/protoc-all:1.29_0 -d protodefs -l dart

.PHONY: all
all: go dart