# Private Events

## Description
Build a site similar to a private <b>Eventbrite</b> which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

## Authors:
* [Ansar](https://github.com/ansaryergesh)
* [Amanda](https://github.com/vieiramanda11)

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

You are ready to run the app in a local server:

```
$ rails server