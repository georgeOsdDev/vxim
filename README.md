# VXiM (Vagrant-Xitrum-MongoDB)

VXiM is a Vagrant Box(Ubuntu 12.04) of Xitrum and MongoDB stack.

##How to Start
1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant by [clicking here](http://downloads.vagrantup.com/)
3. Install [vagrant-berkshelf-plugin](https://github.com/berkshelf/vagrant-berkshelf) by `vagrant plugin install berkshelf`
4. Clone this repository.
5. `cd /path/to/vxim`
6. `vagrant up`
7. Wait few minute with a cup of coffee for the warmup virtual machine. This will take a little while depending on your internet connection.


## Setting

Configuration `Vagrantfile`

* VXIM_HOSTNAME : Guest hostname this value will be add in `/etc/hosts` with `vagrant up`. default value is `vxim.localhost`
* VXIM_IP       : Guest ip address
* APP_NAME      : Your application's name.
* APP_REPO      : Your application's git repo.
* APP_MAIN      : Your application's main class.

`vagrant/app/$APP_NAME` will be exported as `$APP_HOME`


##Application

### Xitrum

Application will start automatically.

So you can see application on `http://vxim.localhost:8000` or `https://vxim.localhost:4430` from host OS.
(Port 8000 and 4430 is default port of xitrum)

Default application scaffold is latest [Xitrum-new](http://github.com/ngocdathan/xirum-new)

**NOTICE**
Xitrum-new does not contain mongoDB related logic default.

For more customize, hack `site-cookbooks/xitrum`.

### MongoDB

Latest MongDB will be installed.MongoDB will working on 27017.

So you can access it with `mongo vxim.localhost:27017` command from host OS.

For more customize, See [community](http://community.opscode.com/cookbooks/mongodb) guide,
