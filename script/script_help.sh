#!/bin/bash
usage="test [-h] [-s n] -- program to do xxx

where:
    -h  show this help text
    -s  set the seed value (default: 42)"

# no options , print $usage
if [ "$1" == "" ] ; then
    echo "$usage"
    exit 0
fi

seed=42
while getopts ':hs:' option; do
  case "$option" in
    h) # ./test.sh -h -> echo $usage
        echo "$usage"
        exit
        ;;
    s) # ./test.sh -s 123 -> seed is 123
        seed=$OPTARG
        echo "seed is :$seed"
        ;;
    :)  # ./test.sh -s -> missing argument for -s
        printf "missing argument for -%s\n" "$OPTARG" >&2
        break
        ;;
   \?)  # ./test.sh -? -> illegal option -?
        printf "illegal option: -%s\n" "$OPTARG" >&2
        break
        ;;
  esac
done
shift $((OPTIND - 1))
