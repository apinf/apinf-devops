body='{
"request": {
  "branch":"{ branch-to-build }"
}}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token { TravisCI-API-Token }" \
  -d "$body" \
  https://api.travis-ci.org/repo/apinf%2Fapi-umbrella-dashboard/requests
