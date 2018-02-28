#!/usr/bin/env bash

links -dump http://ftpmirror.gnu.org/bash/  \
    | sed -e '/bash-[0-9].*tar.gz /!d' -e 's/.*bash-\(.*\).tar.gz.*/\1/' \
    | sort -V \
           > version-list.txt
