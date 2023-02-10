# MetaCall Polyglot Random Password Generator Example
This example shows how to create a random password generator using multiple languages and deploy it to the cloud.
In this example project we are using Python and NodeJS along with [Metacall](https://github.com/metacall) to run the application.

## Instructions
1. Install `metacall`: 
   - `curl -sL https://raw.githubusercontent.com/metacall/install/master/install.sh | sh`
2. Install the requirements:
   - `metacall pip3 install -r requirements.txt` 

## Run the application locally
1. Run the application using `metacall`: 
   - `metacall main.js`

## Run the application on the cloud
1. Deploy the application through the [dashboard](https://dashboard.metacall.io/)
2. Test the application
   1. Through your browser:
      - `https://api.metacall.io/{user name}/{deployment name}/{deployment version}/call/getPassword?length=`
   2. Using `curl`:
      - `curl -X POST https://api.metacall.io/{user name}/{deployment name}/{deployment version}/call/getPassword --data '{ "length": 10 }'`
>> You can copy the deployment URL from the dashboard too. 





