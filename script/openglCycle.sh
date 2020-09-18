#!/bin/bash
BASE_DIR=$(dirname "$(readlink -f "$0")")
echo "BASE_DIR is $BASE_DIR"

TIMER=10
for i in {1..100000}
do
    # run
    echo "qo is $BASE_DIR/bin/qopenglwidget"
    su scale -c "DISPLAY=:0 ./qo.sh &"
    # Wait for seconds
    echo "+sleep $TIMER seconds"
    sleep $TIMER
    echo "-sleep $TIMER seconds"
    # Get its PID
    PID=`pidof $BASE_DIR/bin/qopenglwidget`
    echo "\$PID is: $PID"
    sleep 1
    # Kill it
    sudo kill $PID
    # Wait for seconds
    echo "+sleep $TIMER seconds"
    sleep $TIMER
    echo "-sleep $TIMER seconds"
done
