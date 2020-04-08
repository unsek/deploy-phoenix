#!/usr/bin/env bash
# exit on error
set -o errexit

export MIX_ENV=prod

# Initial setup
mix deps.get --only prod
mix compile

# Compile assets
npm install --prefix ./assets
npm run deploy --prefix ./assets
mix phx.digest

# Build the release
mix release