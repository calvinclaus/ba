# Usage

## Preparations

As IVy can start a GUI we need to tell the Docker container our IP so that it can connect to our display.
To do this, set up a `.env` file containing..

### ...on Mac
`
DISPLAY={{YOUR_IP}}:0
`
You can get your IP via `ifconfig en0 | grep inet | awk '$1=="inet" {print $2}'`.
This will change as you change Networks.

Insall XQuartz. Be sure XQuartz has "Allow connections form network clients" enabled and disable "Authenticate connections"
```
open -a XQuartz
```
before running the container.

### ...on Linux
Run `echo $DISPLAY` and add the output to the .env file like so:
`
DISPLAY={{OUTPUT}}
`

## Setup

Build the Docker container via
```
docker-compose build
```
This will take about 10 minutes as it is compiling a bunch of tools from source. However, you only have to do this once or whenever the Dockerfile changes.

From then on just run
```
docker-compose run from_source_ivy
```
to start the container. Ivy is already installed and available via `ivy`, `ivy_check`, `ivy_show`.

## Work

### Floodset
To run the floodset proof with trace: `ivy_check trace=true complete=fo src/floodset.ivy`.
To run the floodset proof with GUI: `ivy_check diagnose=true complete=fo src/floodset.ivy`.
To run the floodset proof without interrupt: `ivy_check complete=fo src/floodset.ivy`.
