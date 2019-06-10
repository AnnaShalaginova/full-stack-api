curl "http://localhost:4741/activities/${ID}" \
  --include \
  --request GET
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "activity": {
      "id": "'"${ID}"'",
    }
  }'

echo
