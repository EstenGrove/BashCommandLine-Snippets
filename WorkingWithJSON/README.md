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
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  6379  100  6379    0     0  11431      0 --:--:-- --:--:-- --:--:-- 11431
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
    "gravatar_id": "",
    "url": "https://api.github.com/users/facebook",
    "html_url": "https://github.com/facebook",
    "followers_url": "https://api.github.com/users/facebook/followers",
    "following_url": "https://api.github.com/users/facebook/following{/other_user}",
    "gists_url": "https://api.github.com/users/facebook/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/facebook/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/facebook/subscriptions",
    "organizations_url": "https://api.github.com/users/facebook/orgs",
    "repos_url": "https://api.github.com/users/facebook/repos",
    "events_url": "https://api.github.com/users/facebook/events{/privacy}",
    "received_events_url": "https://api.github.com/users/facebook/received_events",
    "type": "Organization",
    "
    ```
