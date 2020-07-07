package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content "This is a centos server 
  Hostname : #{node['hostname']}
  IPAddress : #{node['ipaddress']}
  Memory : #{node['memory']['total']}
  CPU : #{node['cpu']['0']['total']}"
end

service 'ntpd' do
  action [ :enable , :start ]
end
