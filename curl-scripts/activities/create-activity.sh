curl "http://localhost:4741/activities" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "activity": {
      "sport": "'"${SPORT}"'",
      "date": "'"${DATE}"'",
      "duration": "'"${DURATION}"'",
      "location": "'"${LOCATION}"'"
    }
  }'

echo
