# nginx

## gelf json

```json
{"@timestamp":"$time_iso8601",
"@source":"$server_addr",
"hostname":"$hostname",
"ip":"$http_x_forwarded_for",
"client":"$remote_addr",
"request_method":"$request_method",
"scheme":"$scheme",
"domain":"$server_name",
"referer":"$http_referer",
"request":"$request_uri",
"args":"$args",
"size":"$body_bytes_sent",
"status": "$status",
"responsetime":"$request_time",
"upstreamtime":"$upstream_response_time",
"upstreamaddr":"$upstream_addr",
"http_user_agent":"$http_user_agent",
"https":"$https"
}
```