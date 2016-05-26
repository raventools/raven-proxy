package "nginx"

%w(
	default.conf
	virtual.conf
	ssl.conf
 ).each do |config|
	file "/etc/nginx/conf.d/#{config}" do
		action :delete
	end
end

service "nginx" do
	action [:start,:enable]
end
