#!/bin/sh

if [ -z "$PUBLIC_API_ENDPOINT" ]; then
  echo "ERROR: \$PUBLIC_API_ENDPOINT variable is not set. exiting..."
  exit 1
fi


FILE_PATH=/usr/share/nginx/html

# Replace PUBLIC_API_ENDPOINT
find $FILE_PATH -name "index.html" -print0 | xargs -0 sed -i -E 's;window.API_URI=.*"<;window.API_URI="'$PUBLIC_API_ENDPOINT'"<;g'

