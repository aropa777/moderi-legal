#!/bin/bash
# 파일 이름 → 담당 앱. 새 앱 파일을 만들면 여기에 먼저 줄을 더한다(없으면 커밋이 막힌다).
case "$1" in
  privacy.html|privacy_*.html|terms.html)        echo "우리의하루" ;;
  swapback*|more.hopback*|more.jump*)           echo "스왑백" ;;
  more.scan*)                                   echo "모어스캔" ;;
  more.galene*)                                 echo "모어갈렌" ;;
  gameplaybox*)                                 echo "게임플레이박스" ;;
  dandan*)                                      echo "단단" ;;
  autoscroll*)                                  echo "스크롤서포터" ;;
  more.reading*)                                echo "모어리딩" ;;
  README.md|_config.yml|.githooks/*)            echo "공통" ;;
  *)                                            echo "" ;;
esac
