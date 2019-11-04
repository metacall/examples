# MetaCall Auth Function Mesh

This example shows two functions implemented in Python (auth.py). These functions use other two that are implemented in JavaScript - NodeJS (auth/auth.js)

The JWT library is being used from JavaScript. This means that you execute the JavaScript functions from Python.

If you run this locally for testing purposes, all calls will be done in the same process. But if you deploy this example into MetaCall, it will build a [Function Mesh](https://medium.com/@metacall/function-mesh-architecture-c0304ba4bad0).

The functions will run in parallel in the same deployment. If the workload is too high MetaCall will move (auth/auth.js) into a new deployment. This means MetaCall can scale at three different levels:

    - At process/thread level.
    - At pod/container level.
    - At code/function level.

For testing it with curl:
``` bash
# Encrypt
curl https://api.metacall.io/viferga/metacall-examples/v1/call/encrypt -X POST --data '{ "text": "asd" }'
# > "eyJhbGciOiJIUzI1NiJ9.YXNk.QNa-p8QpuHcVUDMN_Ih4x4vidWp31365GM4zrSr3t0s"

# Decrypt
curl https://api.metacall.io/viferga/metacall-examples/v1/call/decrypt -X POST --data '{ "token": "eyJhbGciOiJIUzI1NiJ9.YXNk.QNa-p8QpuHcVUDMN_Ih4x4vidWp31365GM4zrSr3t0s" }'
# > "asd"
```
