#!/bin/bash
# EMAIL="coolap69@aol.com" PASSWORD="hello" AD_ID="5" SENDER_ID="1" RECEIVER_ID="2" TITLE="Xchanga" DESCRIPTION="hello"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/ads"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "ad": {
      "user_id": "'"${USER_ID}"'",
        "product_name": "'"${PRODUCT_NAME}"'",
        "quantity": "'"${QUANTITY}"'"
      }
    }'

echo
