#!/bin/bash

PATH=/usr/bin:$PATH

sleep 20
echo ""
echo "Your public access is:"
echo ""
curl --silent http://localhost:4040/api/tunnels/squid | jq .public_url | sed "s/tcp/http/"
echo ""
echo "Turn it DOWN!"