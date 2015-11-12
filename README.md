# Apinf deployment scripts

## API Umbrella Dashboard

For production quality Meteor deployments, we are using [Meteor Up](https://github.com/arunoda/meteor-up)

* install Meteor Up: `npm install -g mup`
* Edit mup.json & settings.json examples
* Setup remote machine: `mup setup`
* Deploy app: `mup deploy --settings=settings.json`

## API Umbrella deployment

### Production Umbrella

TBD

### Local Umbrella (for development)

* change initial admin user email in *api-umbrella.yml* file.
* run `vagrant up`


