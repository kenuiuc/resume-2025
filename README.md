### Build and Deployment

#### 1. Render PDF locally with [texlive](https://hub.docker.com/r/texlive/texlive) docker container
```
docker run -it --rm \
  --name my-texlive \
  -v "${PWD}:/workdir" \
  -w "/workdir" \
  texlive/texlive \
  latexmk -pdf \
    -outdir=docs \
    -auxdir=/tmp/latexmk
```

#### 2. Use [this github action](https://github.com/kenuiuc/resume-2025/blob/master/.github/workflows/deploy-github-page.yml) to deploy  PDF to GitHub Pages

### TODO: cahce docker images per [this instructions](https://stackoverflow.com/a/73821429/6410664)