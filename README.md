BrowserMob Proxy in Docker
==========================

Provide a simple Docker image to run a single BrowserMob-Proxy listener.

By default, it will load BrowserMob-Proxy on port 9090, and start a proxy listener on port 9091.

Usage
-----

    $ docker run -p 9090:9090 -p 9091:9091 shopigniter/browsermob-proxy
