curl "http://localhost:4741/update-activity/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "activity": {
      "id": "'"${ID}"'",
      "sport": "'"${SPORT}"'",
      "date": "'"${DATE}"'",
      "duration": "'"${DURATION}"'",
      "location": "'"${LOCATION}"'"
    }
  }'

echo
