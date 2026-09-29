#!/bin/bash

VER=$1

if [[ -z "$VER" ]]; then
  echo "Error! Supply version tag!"
  exit 1
fi

read -r -d '' NOTES << EOM
\`\`\`
docker pull ghcr.io/MopuruRoshini/Server_Observability_Platform:$VER
\`\`\`

\`\`\`
docker run --rm -it -p 5000:5000 ghcr.io/MopuruRoshini/Server_Observability_Platform:$VER
\`\`\`
EOM

gh release create $VER --title "Release v$VER" -n "$NOTES"
