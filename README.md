### Build and Deployment

#### 1. Render PDF locally with [ubuntu-latexmk](https://hub.docker.com/r/kenuiuc/ubuntu-latexmk) docker container
```
docker run -i --rm \
  --name latexmk-container \
  -v "${PWD}:/workdir" \
  -w "/workdir" \
  kenuiuc/ubuntu-latexmk \
  latexmk -pdf \
    -outdir=docs \
    -auxdir=/tmp/latexmk
```

#### 2. Use [this github action](https://github.com/kenuiuc/resume-2025/blob/master/.github/workflows/deploy-github-page.yml) to deploy  PDF to GitHub Pages
