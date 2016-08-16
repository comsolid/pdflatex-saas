# pdflatex as a service

LaTeX Goes In, PDF is Streamed Out

## Quick start

```shell
# pull image and run service
docker run -p "5050:5050" comsolid/pdflatex-saas
```

## Send a tex file and get pdf

```shell
curl your-docker-machine:5050 --data-binary @my.tex > my.pdf
```

## Add custom packages

You have to build an image like this:

```shell
# build with custom packages
docker build -t comsolid/pdflatex-saas-extras --build-arg=INSTALL_EXTRA_PACKAGES="texlive-lang-portuguese texlive-generic-recommended texlive-fonts-recommended" .
# then run
docker run --port "5050:5050" comsolid/pdflatex-saas-extras
```
