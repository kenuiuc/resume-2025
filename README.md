### Render PDF locally with [texlive](https://hub.docker.com/r/texlive/texlive) docker container
```
docker run -it --rm \
  --name my-texlive \
  -v "${PWD}:/workdir" \
  -w "/workdir" \
  texlive/texlive \
  latexmk -pdf \
    -auxdir=/tmp/latexmk
```
### Or Use this GitHub workflow
```
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: xu-cheng/texlive-action@v2
        with:
          docker_image: texlive/texlive
          run: |
           latexmk -pdf -auxdir=/tmp/latexmk
      - uses: actions/upload-artifact@v4
        with:
          name: ken_wang_resume.pdf
          path: ken_wang_resume.pdf
```
customized from [xu-cheng/texlive-action](https://github.com/xu-cheng/texlive-action)
### TinyURL Link
[tinyurl.com/ken-resume](https://tinyurl.com/ken-resume)
