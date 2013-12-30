script "install_xitrum" do
  interpreter "bash"
  user        "vagrant"
  code <<-EOL
    cd /vagrant/app
    if [ ! -d "/var/app/#{node[:xitrum][:appname]}" ]
    then
      git clone #{node[:xitrum][:apprepo]} #{node[:xitrum][:appname]}
    fi
    export APPHOME=/vagrant/app/#{node[:xitrum][:appname]}
    cd $APPHOME
    $APPHOME/sbt/sbt clean xitrum-package
    nohup $APPHOME/target/xitrum/script/runner #{node[:xitrum][:appmain]} &
  EOL
end

include_recipe "iptables"

iptables_rule "http"
iptables_rule "ssh"
iptables_rule "mongo"