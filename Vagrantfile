# -*- mode: ruby -*-
# vi: set ft=ruby :


VXIM_HOSTNAME = "konnect.localhost"  # e.g example.com
VXIM_IP       = "192.168.33.10"   # host ip address

APP_NAME      = "konnect" # default:xitrum-new
APP_REPO      = ""        # Not need for konnect. Extract konnect.zip into `app` dir before vagrant up
APP_MAIN      = ""        # Not need for konnect. Extract konnect.zip into `app` dir before vagrant up

Vagrant.configure("2") do |config|

  config.omnibus.chef_version = :latest
  config.vm.define :vxim do |vxim|
    vxim.vm.box = "precise64"
    vxim.vm.box_url = "http://files.vagrantup.com/precise64.box"
    vxim.vm.hostname = VXIM_HOSTNAME
    vxim.vm.network :private_network, ip: VXIM_IP
    vxim.vm.provider :virtualbox do |vb|
        vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        vb.customize ["modifyvm", :id, "--memory", "1024"]
    end

    vxim.berkshelf.enabled = true
    vxim.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [
        File.join(Dir.pwd, "cookbooks"),
        File.join(Dir.pwd, "site-cookbooks")
      ]
      chef.add_recipe "git"
      chef.add_recipe "mongodb::10gen_repo"
      chef.add_recipe "mongodb"
      chef.add_recipe "java"
      chef.add_recipe "xitrum::konnect"
      chef.json = {
        :mongodb => {
          :dbpath => "/data/db"
        },
        :java => {
          :install_flavor => "oracle",
          :jdk_version => "7",
          :oracle => {
            "accept_oracle_download_terms" => true
          }
        },
        :xitrum => {
          :appname => APP_NAME,
          :apprepo => APP_REPO,
          :appmain => APP_MAIN
        }
      }
    end
  end
end
