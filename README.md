## Steps to run on Production

* Login to Server

```
ssh root@ssingularitee.com
```
You will need the password for the server. Ask the team for it.

* Go to the project directory

```
cd /var/www/projects/template_website/website_template/
```

* Pull the latest code

```
git pull origin master
```

* Find the container id of

```
docker ps | grep website_template
```
Fetch first value of the tab separated output as container id

e.g.
```
7e525222765f   website_template-app            "bash -c 'bundle exe…"   14 hours ago   Up 14 hours                 127.0.0.1:9918->9918/tcp                                                               website_template-app-1
```

7e525222765f from the above output is the container id

* Start the bash of the container

```
docker exec -it <container_id> bash
e.g. 
docker exec -it 7e525222765f bash
```

* Bundle install

```
bundle install
```

* Yarn install

```
yarn install
```

* Migrate the database

```
rails db:migrate
```

* Precompile the assets

```
rails assets:precompile
```

* Restart the server

```
rails restart
```
