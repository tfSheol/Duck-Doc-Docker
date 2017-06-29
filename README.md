# Duck-Doc-Docker
## Compile
```
	docker build -t capgemini_alpine .
```

## Launch whith coding email
```
	docker run --device=/dev/tty --net host -e TERM=xterm -e USERNAME=prenom.nom@mail.eu -e PASSWORD="your_password" -it -v <replace_with_absolute_path>:/shared -w="/shared" capgemini_alpine
```

## Launch whith old Epitech account
```
	docker run --device=/dev/tty --net host -e TERM=xterm -e USER=login_x -e USERNAME=teddy.fontaine@epitech.eu -e PASSWORD="your_password" -it -v <replace_with_absolute_path>:/shared -w="/shared" capgemini_alpine
```

## Tools
```
	create-repo <repository_name>
		info: Create the repository on blih with ACL for gecko:r and ramassage-tek:r;
	
	repo <repository_name>
		info: Clone the repository in the current directory if was create on blih;
```