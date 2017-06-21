#!/bin/sh
set -e

# initialize workspace
if [ ! -e "$WATERFALL_WORKSPACE/modules" ]; then
  ln -s "$WATERFALL_ROOT/modules" "$WATERFALL_WORKSPACE/modules"
fi
chown -R "$WATERFALL_USER":"$WATERFALL_GROUP" "$WATERFALL_WORKSPACE"

# execute user command
exec "$@"
