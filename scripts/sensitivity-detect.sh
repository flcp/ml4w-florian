#!/bin/bash
FILE=~/.sens

if [ -e $FILE ]; then
    printf '{"alt": "high" }'
else
    printf '{"alt": "default2" }'
fi

