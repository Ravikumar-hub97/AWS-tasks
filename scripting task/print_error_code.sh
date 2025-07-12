#!/bin/bash

### TASK 1: Print HTTP error code of guvi.in and success/failure message ###

# Fetch HTTP status code using curl
http_code=$(curl -o /dev/null -s -w "%{http_code}\n" https://www.guvi.in)

# Print the HTTP code
echo "HTTP status code from guvi.in: $http_code"

# Determine if it's success or failure
if [[ "$http_code" -ge 200 && "$http_code" -lt 400 ]]; then
    echo "Success: Website is reachable"
else
    echo "Failure: Website returned error code"
fi
