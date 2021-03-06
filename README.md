# discourse-dev-scripts

_Some scripts to help with setting up Discourse development environments in docker_

## Example usage

Clone the repo:

```
$ git clone https://github.com/LeoMcA/discourse-dev-scripts.git
```

Setup a `mozilla` environment:

```
$ source ./discourse-dev-scripts/setup mozilla
Using name:       discourse_dev_mozilla
Using source in:  /home/foxy/Projects/discourse
Using data in:    /home/foxy/Projects/discourse/data/discourse_dev_mozilla/postgres
Using plugins in: /home/foxy/Projects
```

Create and start the docker container, with the `discourse-mozilla-iam` and `discourse-expose-emails-in` plugins installed:

```
$ create -p discourse-mozilla-iam -p discourse-expose-emails-in
```

Start the rails server:

```
$ rails s
```

Run `an arbitrary command` in the docker container:

```
$ e an arbitrary command
```

## Scripts

* `bundle` - run bundle in the container
* `create` - create a container
* `e` - run a command in the container
* `lint` - run linters on core code
* `nuke_test_db` - drop, create and then migrate the test database
* `plugin_test` - run plugin tests, takes two arguments: `all | coverage | spec | qunit` and the plugin's name
* `psql` - run psql in the container
* `rails` - run rails in the container
* `rake` - run rake in the container
* `remove` - remove the container (and stop it if it's running)
* `setup` - setup the environment, should always be `source`d
* `start` - start and `update` the container
* `stop` - stop the container
* `sudo_e` - run a command in the container as root
* `unicorn` - run the server with unicorn, see: https://meta.discourse.org/t/change-unicorn-port-from-3000-in-development/94737/5?u=leomca
* `update` - run bundle updates and database migrations in the container

## Limitations

* May set your computer on :fire:
* Assumes [`discourse`](https://github.com/discourse/discourse), this repo, and any plugins you want to develop are all in sibling directories, like:
  ```
  Projects/
    discourse/
    discourse-dev-scripts/
    my-awesome-plugin/
  ```
* Multiple containers can't be run at the same time
* There's probably some zsh specific syntax in there somewhere

*Pull requests to fix these issues, and any others discovered, are more than welcome*
