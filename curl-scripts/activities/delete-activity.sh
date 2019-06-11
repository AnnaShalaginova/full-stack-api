curl "http://localhost:4741/update-activity/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "activity": {
      "id": "'"${ID}"'"
    }
  }'

echo
