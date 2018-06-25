#!/bin/bash

IFS=';' read -ra ADDR <<< "$IMAGE_NAMES"
for i in "${ADDR[@]}"; do
        export IMAGE_NAME=$i
        vulnerabilities=$(./gcp.sh 2> /dev/null | tail -1 | jq '.Vulnerabilities')
        highvulnerabilities=$(./gcp.sh 2> /dev/null | tail -1 | jq '.Vulnerabilities' | jq -c '[.High[] | { title: .Name, title_link: .Link, text: .Description, fields: [{ title: "Severity", value: .Severity} ]}]')
        message="{\"attachments\": ${highvulnerabilities} }"
        curl -X POST -H 'Content-type: application/json' -d "${message}" $WEBHOOK_URL
done