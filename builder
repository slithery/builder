#!/bin/bash

SCRIPT_NAME="builder"
SCRIPT_DESCRIPTION="Custom repo builder."
SCRIPT_VERSION="0.1"
SCRIPT_AUTHOR=""

# Script usage
#

usage () { cat <<-USAGETXT

	$SCRIPT_NAME
	v$SCRIPT_VERSION by $SCRIPT_AUTHOR
	
	$SCRIPT_DESCRIPTION
	
	  USAGE:  $SCRIPT_NAME [OPTIONS] VAR1
	
	  OPTIONS:  -h     Display this help.
	            -V     Show version.

USAGETXT
}


# Options
#

while getopts :hV flag
	do
    case "$flag" in
    (h) usage; exit 0;;
    (V) echo "$SCRIPT_VERSION"; exit 0;;
#   (e) EXAMPLE_OPTION_SWITCH=1;;			# Add e to getopts string.
#   (f) EXAMPLE_OPTION_VARIABLE="$OPTARG";;		# Add f: to getopts string.
    (*) echo "Invalid option, use -h for help."; exit 1;;
    esac
	done

shift $(($OPTIND - 1))


# Check for argument
#

if [ -n "$1" ]
then
  VAR1=$1
else echo "VAR1 not present, use -h for help."; exit 1
fi


# Main script.
#

echo "Main script here"
echo VAR1="$VAR1"
exit 0

