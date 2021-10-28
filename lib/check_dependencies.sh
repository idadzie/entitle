#!/usr/bin/env bash

err() {
  echo >&2 "$1"
  exit 1
}

if ! command -v xidel >/dev/null 2>&1; then
  err "Kindly install dependency: 'xidel'"
fi
