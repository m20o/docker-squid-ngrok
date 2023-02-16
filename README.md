# Test me

## Requirements

- **docker** and **docker-compose** (install `Docker Desktop` and you're ok)
- Some command-line tools:
    -   brew install jq curl 
- An [ngrok AuthToken](https://dashboard.ngrok.com/get-started/setup)

## Start

Add your auth-token in `docker-compose.yml`

Then open a terminal and run 

`docker-compose up`

You should see something like

```bash
➜  squid-docker docker-compose up 
[+] Running 3/3
 ⠿ Network squid-docker_default    Created                                                                                                                                                                                  0.0s
 ⠿ Container squid-docker-ngrok-1  Created                                                                                                                                                                                  0.0s
 ⠿ Container squid-docker-proxy-1  Created                                                                                                                                                                                  0.0s
Attaching to squid-docker-ngrok-1, squid-docker-proxy-1
squid-docker-proxy-1  | 2023/02/01 12:25:52| WARNING: BCP 177 violation. Detected non-functional IPv6 loopback.
squid-docker-proxy-1  | 2023/02/01 12:25:52| Set Current Directory to /var/spool/squid
squid-docker-proxy-1  | 2023/02/01 12:25:52| Creating missing swap directories
squid-docker-proxy-1  | 2023/02/01 12:25:52| No cache_dir stores are configured.
squid-docker-proxy-1  | 2023/02/01 12:25:52| Removing PID file (/run/squid.pid)
squid-docker-proxy-1  | 2023/02/01 12:25:52| WARNING: BCP 177 violation. Detected non-functional IPv6 loopback.
squid-docker-proxy-1  | 2023/02/01 12:25:52| Set Current Directory to /var/spool/squid

(cut)
```

## Get public info
After the proxy has been started, get its public info with

curl --silent http://localhost:4040/api/tunnels/squid | jq .public_url | sed "s/tcp/http/"