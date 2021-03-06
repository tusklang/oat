ifeq ($(OS),Windows_NT)
	CLEAN_CMD = del
	BINARY = oatstart.exe
else
	SET_GOPATH = GOPATH=$(GOPATH)
	CLEAN_CMD = rm -f
	BINARY = oatstart.out
endif

GOPATH = $(CURDIR)/../../../../

.PHONY: default
default: all

.PHONY: all
all:
	$(SET_GOPATH) go build -o $(BINARY) oatstart.go

.PHONY: clean
clean:
	-$(CLEAN_CMD) $(BINARY)
