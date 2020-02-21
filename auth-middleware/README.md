# MetaCall Auth Middleware

This project implements an example middleware for functions. This can be extended to other middleware like Express.

For testing it with curl:
``` bash
# Sign In
curl https://api.metacall.io/viferga/metacall-examples/v1/call/signin -X POST --data '{"user":"viferga", "password":"123"}'
# > "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoidmlmZXJnYSIsInBhc3N3b3JkIjoiMTIzIiwiaWF0IjoxNTUwNzg5NDI1fQ.MJIZ96PwjIZzSdWsBbxG4_88ITY-iZmtEd8CSgcYi8g"

# Reverse (Middleware)
curl https://api.metacall.io/viferga/metacall-examples/v1/call/reverse -X POST --data '{ "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoidmlmZXJnYSIsInBhc3N3b3JkIjoiMTIzIiwiaWF0IjoxNTUwNzg5NDI1fQ.MJIZ96PwjIZzSdWsBbxG4_88ITY-iZmtEd8CSgcYi8g", "args": { "str": "abcdefg" } }'
# > "gfedcba"


# Sum (Middleware)
curl https://api.metacall.io/viferga/metacall-examples/v1/call/sum -X POST --data '{ "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoidmlmZXJnYSIsInBhc3N3b3JkIjoiMTIzIiwiaWF0IjoxNTUwNzg5NDI1fQ.MJIZ96PwjIZzSdWsBbxG4_88ITY-iZmtEd8CSgcYi8g", "args": { "a": 3, "b": 4 } }'
# > 7.0
```
