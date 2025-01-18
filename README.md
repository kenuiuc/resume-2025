### Build and Deployment

#### 1. Render PDF locally with [texlive](https://hub.docker.com/r/texlive/texlive) docker container
```
docker run -i --rm \
  --name texlive-container \
  -v "${PWD}:/workdir" \
  -w "/workdir" \
  texlive/texlive \
  latexmk -pdf \
    -outdir=docs \
    -auxdir=/tmp/latexmk
```

#### 2. Use [this github action](https://github.com/kenuiuc/resume-2025/blob/master/.github/workflows/deploy-github-page.yml) to deploy  PDF to GitHub Pages