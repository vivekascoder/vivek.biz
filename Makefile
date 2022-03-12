generate_ssl:
	sudo systemctl stop nginx.service
	sudo certbot certonly --standalone --preferred-challenges http-01 -d vivek.biz
	sudo systemctl start nginx.service