# Duck-Doc-Docker
## Compile
```
	docker build -f Dockerfile_no-term -t capgemini_alpine_no-term .
	docker build -f Dockerfile_bash-it -t capgemini_alpine_bash-it .
```

## Launch with coding email
```
	docker run -e USERNAME=prenom.nom@mail.eu -e PASSWORD="your_password" -it -v <replace_with_absolute_path>:/shared -w="/shared" capgemini_alpine_no-term
	docker run -e USERNAME=prenom.nom@mail.eu -e PASSWORD="your_password" -it -v <replace_with_absolute_path>:/shared -w="/shared" capgemini_alpine_bash-it
```

## Launch with old Epitech account
```
	docker run -e USER=login_x -e USERNAME=prenom.nom@mail.eu -e PASSWORD="your_password" -it -v <replace_with_absolute_path>:/shared -w="/shared" capgemini_alpine_no-term
	docker run -e USER=login_x -e USERNAME=prenom.nom@mail.eu -e PASSWORD="your_password" -it -v <replace_with_absolute_path>:/shared -w="/shared" capgemini_alpine_bash-it
```

## Docker Tools
```
	create-repo <repository_name>
		info: Create the repository on blih with ACL for gecko:r and ramassage-tek:r;
	
	repo <repository_name>
		info: Clone the repository in the current directory if was create on blih;
```

## Docker tips
```
	./commit.sh
		info: Commit the last container in the last image;
		cmd: docker commit $(docker ps -l -q) $(docker ps -l --format "{{.Image}}")

	./clean.sh
		info: Clean all images & old containers;
		cmd containers: docker rm $(docker ps -a -q)
		cmd images:	docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
```