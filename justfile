version := "15.6.3"

default:
  just build version

ttf fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) ttf::giorgio-mono --jCmd=8

ttc fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) ttc::giorgio-mono --jCmd=8

superttc fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) super-ttc::giorgio-mono --jCmd=8
