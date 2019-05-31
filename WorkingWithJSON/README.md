# Working w/ JSON in Bash

##### __NOTE: it's usefull to install ```jq``` which is a JSON parser and interpreter for bash.
- install jq
```bash
brew install jq
```
#### Pretty Print JSON
- this example is done by fetching from the github api
```bash
curl https://api.github.com/repos/facebook/react | jq

# output
{
  "id": 10270250,
  "node_id": "MDEwOlJlcG9zaXRvcnkxMDI3MDI1MA==",
  "name": "react",
  "full_name": "facebook/react",
  "private": false,
  "owner": {
    "login": "facebook",
    "id": 69631,
    "node_id": "MDEyOk9yZ2FuaXphdGlvbjY5NjMx",
    "avatar_url": "https://avatars3.githubusercontent.com/u/69631?v=4",
    ...
```