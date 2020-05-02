#!/bin/sh

. ./#env.sh

java -cp /home/jees/utils/h2/bin/h2-1.3.148.jar org.h2.tools.Console -webAllowOthers true

