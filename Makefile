all: multinote

dep:
	go get -u github.com/mattn/go-sqlite3
	go get -u golang.org/x/crypto/bcrypt
	go get -u gopkg.in/russross/blackfriday.v2

multinote: multinote.go
	go build --tags "fts5" -o multinote multinote.go

clean:
	rm -rf multinote

