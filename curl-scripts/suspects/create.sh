#!/bin/bash

API="http://localhost:4741"
URL_PATH="/suspects"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "suspects": {
      "name": "'"${NAME}"'",
      "title": "'"${TITLE}"'",
      "reason": "'"${REASON}"'",
      "probability": "'"${PROBABILITY}"'"

    }
  }'

echo
