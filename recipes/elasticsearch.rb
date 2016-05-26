include_recipe "raven-proxy"

template "/etc/nginx/conf.d/elasticsearch.conf" do
	variables({
		:endpoint => node[:raven_proxy][:elasticsearch][:endpoint],
		:port => node[:raven_proxy][:elasticsearch][:port]
	})
	notifies :reload, "service[nginx]", :delayed
end
