# pdflatex as a service

LaTeX Goes In, PDF is Streamed Out

## Install

### With Docker

```shell
docker build -t latim/pdflatex-as-a-service .
docker run --port "5050:5050" pdflatex-as-a-service
```

## Run

```shell
curl your-docker-host:5050 --data-binary @my.tex > my.pdf
```
