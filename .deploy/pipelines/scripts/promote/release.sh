#!/bin/sh
release-it --patch --ci
git tag -f latest
git push --tag --force
