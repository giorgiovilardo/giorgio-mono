version := "34.0.0"

default:
  just build version

build fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build avivace/iosevka-build

ttf fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) ttf::giorgio-mono --jCmd=8

ttc fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) ttc::giorgio-mono --jCmd=8

superttc fontver=version:
  docker run -e FONT_VERSION={{fontver}} --rm -it -v $(pwd):/build $(docker build -t giorgio-mono-builder -q .) super-ttc::giorgio-mono --jCmd=8
