run-squid:
	docker run --net host -d squid-in-a-can
add-redirect:
	sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to 3129 -w
remove-redirect:
	sudo iptables -t nat -D PREROUTING -p tcp --dport 80 -j REDIRECT --to 3129 -w
create-cache:
	sudo mkdir -p /var/cache/squid && sudo chown -R proxy:proxy /var/cache/squid
