#!/bin/bash
if test -f ~/.prevdir; then cd $(cat ~/.prevdir); rm ~/.prevdir; else echo No prev dir found; fi
