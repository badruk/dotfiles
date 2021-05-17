#!/bin/sh
# cleans screenshot folder of wrong failed saves

find $SCR -size 0 -print -delete
