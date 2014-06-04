script "launch konnect" do
  interpreter "bash"
  user        "vagrant"
  code <<-EOL
    cd /vagrant/app/konnect
    nohup ./script/start.sh &
  EOL
end

include_recipe "iptables"

iptables_rule "http"
iptables_rule "ssh"
iptables_rule "mongo"