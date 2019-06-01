# Working w/ JSON in Bash

##### __NOTE: it's usefull to install ```jq``` which is a JSON parser and interpreter for bash.__
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
### Accessing JSON Values in Bash w/ JQ
- Grabbing a value:
```bash
echo https://api.github.com/repos/facebook/react | jq '.stargazers_count'

# this represents
{ 
  "stargazers_count": 130458,
}
```
## Find Unused Dependencies in a Project Using JQ and grep
```bash
jq '.dependencies' package.json

# this will get all the dependencies inside package.json
```
- You can create an array of the keys from an object using JQ's built in method:
```bash
jq '.dependencies | keys' package.json

# output
[
  "express",
  "lodash"
]
```
## Custom Script for Finding Unused Deps in package.json
- this will search your package.json for all the object keys in the "dependencies" object and push them to an array.
- then it will ```grep``` for deps that are NOT used and excludes checking the ```node_modules``` directory
- then it will echo to the console "You can probably remove lodash" or whatever dep it finds that's not used.
```bash
# inside unused-deps.sh

for dep in $(jq -r '.dependencies | keys | .[]' package.json); do
  if ! grep "require\(.*$dep.*\)" -Rq --exclude-dir="node_modules" .; then
  echo "You can probably remove $dep"
  fi
done
```
- be sure to give it executable permissions: ```chmod +x unused-deps.sh```
