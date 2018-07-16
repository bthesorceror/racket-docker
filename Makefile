build:
	docker build -t bthesorceror/racket:latest .

push: build
	docker push bthesorceror/racket:latest