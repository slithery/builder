#!/bin/bash

SCRIPT_NAME="builder"
SCRIPT_DESCRIPTION="Custom repo builder."
SCRIPT_VERSION="0.1-dev"
SCRIPT_AUTHOR="Slithery"

# Script usage
#

usage () { cat <<-USAGETXT

    $SCRIPT_NAME
    v$SCRIPT_VERSION by $SCRIPT_AUTHOR

    $SCRIPT_DESCRIPTION

      USAGE:  $SCRIPT_NAME [OPTIONS]

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
    (*) echo "Invalid option, use -h for help."; exit 1;;
    esac
    done

shift $(($OPTIND - 1))


# Main script.
#


# Set variables
#


# Declare functions
#

# build() $ARCH $PKGNAME

# updated() $PKGNAME


# Main program logic
#

# Check nspawn container directory

# Update container
echo
echo "Updating container..."
echo

# Build packages
#for i in (awk '!/^ *#/ && NF' package_list); do
#  echo "$i"
#done

while read line; do
  echo "Build: $line"
done < <(awk '!/^ *#/ && NF' package_list)


exit 0
