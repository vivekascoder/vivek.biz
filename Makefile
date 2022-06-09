generate_ssl:
	sudo systemctl stop nginx.service
	sudo certbot certonly --standalone --preferred-challenges http-01 -d vivek.biz
	sudo systemctl start nginx.service

update:
	git add .; git commit -m 'updated'; git push origin master
	ssh mlh@vivek.biz "cd vivek.biz/; git pull; echo '> Pulled and updated.'"
