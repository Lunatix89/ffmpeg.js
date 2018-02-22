#!/bin/bash

make all

if [ -z "$REAL_USER" ]; then
    chown -R $REAL_USER .
fi
