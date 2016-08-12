# pdflatex as a service

LaTeX Goes In, PDF is Streamed Out

## Install

### With Docker

```shell
docker run --port "5050:5050" comsolid/pdflatex-saas
```

## Run

```shell
curl your-docker-machine:5050 --data-binary @my.tex > my.pdf
```
