#!/bin/sh

if [ "$MIRROR" = "CN" ]; then
    npm config set registry https://registry.npmmirror.com
fi

if [ -f /slidev/slides.md ]; then
    if [ -d /slidev/node_modules ]; then
        npm update
    else
        npm install @slidev/cli @slidev/theme-default
    fi
    echo "Start slidev..."
    chmod -R 777 /slidev
    npx slidev --remote
else
    echo "slides.md not found in the bind mount to /slidev"
    npm install @slidev/cli @slidev/theme-default @slidev/theme-seriph
    echo hellowrold > /slidev/slides.md
    chmod -R 777 /slidev
    npx slidev --remote
fi