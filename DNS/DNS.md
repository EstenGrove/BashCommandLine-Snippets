#### __DNS__

###### Run a DNS lookup for a domain's "A" record. (Resolves to the server's IP)
```
dig example.com a
```
###### Run a DNS lookup for a domain's "CNAME" record. (
```
dig example.com cname
```
###### Run a DNS lookup for a domain's "MX" record.
```
dig example.com mx
```
###### Run a DNS lookup for a domain's nameservers.
```
dig example.com ns
```
###### Run a DNS lookup for a domain's "TXT" record.
```
dig example.com txt
```
###### Lookup all available DNS for a domain. Provides less details per record. Quick Snapshot. 
```
nslookup -type=any example.com
```
###### Test whether a server is live and it's response time.
```
ping <domain|IP>
```
  - Press CTRL+C to cancel
###### Download a file from a webpage thru command line
```
wget https://example.com/index.html
```
  - This will download the index.html file thru command line
###### Load only a preview of a file from a web page in the terminal 
```
curl https://example.com/index.html
```
  - File is only viewable in the terminal and it didn't actually save the file locally
