# Build a binary without dynamic link to glibc.  Used for the procfile container.

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags '-w' -o simple-http-procfile/simple-http cmd/simple-http/main.go
