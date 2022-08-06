default:
  just build 15.0.3

build fontver:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) ttf::giorgio-mono --jCmd=8
