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

# Source package_list



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

# Build 64-bit/any packages
echo
echo "Building 64-bit and architecture independent packages..."
echo
# for * in $x86_64/any do
#   if updated $i then build 64 $i
# done

# Build 64-bit/any development packages
echo
echo "Building 64-bit and architecture independent development packages"
echo

# for * in $x86_64/any-dev do
#   build 64 $i
# done


exit 0
