### Bash Scripts for gathering info relating to a domain

###### Run WHOIS search and format the constrain the response
```
whois example.com | grep -Ei 'status:|Registrant Name:|‘Admin Name:|Admin Organization:|Registrar:|Registry Expiry Date:|Name Server:'
```
__RESULT:__ 
```
status: ACTIVE
   Registry Expiry Date: 2019-07-09T13:09:01Z
   Registrar: Name.com, Inc.
   Name Server: NS1.DIGITALOCEAN.COM
   Name Server: NS2.DIGITALOCEAN.COM
   Registrant Name: Whois Agent
   Admin Organization: Domain Protection Services, Inc.
```
The command will comb thru the WHOIS response and only grab the data listed above, which makes the print out much more concise and improves readability.
__Here's a breakdown of the response:__
* status: ```Domain registration status.(Active, Transfered, Expired, Redemption etc.)```
  * Registry Expiry Date: ```Expiration Date.```
  * Name Server: ```The nameservers where the domain is hosted.```
  * Registrant Name: ```The person/company/organization that owns the domain's registration currently.```
  * Admin Organization: ```The company or organization that was registered with the domain. (This can sometimes be blank.)```

