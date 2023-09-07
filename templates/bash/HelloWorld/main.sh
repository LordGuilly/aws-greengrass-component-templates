#!/bin/bash
set -e

POSITIONAL_ARGS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    -m|--message)
      MESSAGE="$2"
      shift # past argument
      shift # past value
      ;;
    -s|--sleepPeriod)
      SLEEPPERIOD="$2"
      shift # past argument
      shift # past value
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done

set -- "${POSITIONAL_ARGS[@]}" # restore positional parameters

while true; 
do
    echo "${MESSAGE}"; 
    sleep ${SLEEPPERIOD}; 
done
