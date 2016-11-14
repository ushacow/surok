#!/bin/bash

set -e

. functions.sh

function usage() {
		echo "$0 <clean|build_package|surok_image|alpine|centos>"
}

case $1 in
		clean) cleanup ;;
		build_package)
				build_builder
				build_package
				;;
		build_deb) build_package ;;
		surok_image) build_surok_base	rebuild ;;
		surok_image_no_rebuild) build_surok_base ;;
		alpine) build_alpine ;;
        centos) build_centos ;;
		*) usage ;;
esac
