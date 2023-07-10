#!/bin/zsh

sphinx-build -b gettext ./source build/gettext
sphinx-intl update -p ./build/gettext -l zh_CN
sphinx-build -b html -D language=zh_CN ./source build/html/zh_CN
