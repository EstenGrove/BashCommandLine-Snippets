### Bash Scripts for gathering info relating to a domain

###### Run WHOIS search and format the constrain the response
```
whois example.com | grep -Ei 'status:|Registrant Name:|‘Admin Name:|Admin Organization:|Registrar:|Registry Expiry Date:|Name Server:'
```
__RESULT:__ 
```

```
