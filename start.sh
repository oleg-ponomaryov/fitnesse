#!/bin/bash

BUILD_LIB_DIR=target/dependencies
CLASSPATH=.
for f in $BUILD_LIB_DIR/*.jar; do
    CLASSPATH="$CLASSPATH;$f"
done
echo $CLASSPATH
java -cp  "target/dependencies/*"  fitnesseMain.FitNesseMain -p 9090 -d fitnesseroot -e 0 
