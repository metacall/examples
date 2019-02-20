# MetaCall Auth Function Mesh

This example shows two functions implemented in Python (auth.py). These functions utilize other two that are implemented in JavaScript - NodeJS (auth/auth.js)

The JWT library is being used from JavaScript. This means that you execute the JavaScript functions from Python.

If you run this locally for testing purposes, all calls will be done in the same process. But if you deploy this example into MetaCall, it will build a [Function Mesh](https://medium.com/@metacall/function-mesh-architecture-c0304ba4bad0).

The functions will run in parallel in the same deployment. If the workload is too high MetaCall will move (auth/auth.js) into a new deployment. This means MetaCall can scale at three different levels:

    - At process/thread level.
    - At pod/container level.
    - At code/function level.
