#!/bin/bash
# EMAIL="coolap69@aol.com" PASSWORD="hello" AD_ID="5" SENDER_ID="1" RECEIVER_ID="2" TITLE="Xchanga" DESCRIPTION="hello"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/messages"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "message": {
      "ad_id": "'"${AD_ID}"'",
      "sender_id": "'"${SENDER_ID}"'",
      "receiver_id": "'"${RECEIVER_ID}"'",
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'"
      }
    }'

echo
