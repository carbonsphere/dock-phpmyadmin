Author  : CarbonSphere <br>
Email   : carbonsphere@gmail.com<br>


<h2>Dockerfile for building docker image. This Base image is based on carbonsphere/docker-centos6-php-nginx </h2>

<h3> This image provides a PHPMyAdmin Application which can be linked with a DB container for Web UI management. Default Web port 80.</h3>

<h4>Steps for creating image from Dockerfile and running procedure:</h4>

<b>1 :</b> Clone dock-phpmyadmin.git
<pre>
<b>Command: </b>
git clone https://github.com/carbonsphere/dock-phpmyadmin.git
</pre>

<b>2 :</b> Build docker image from Dockerfile
<pre>
<b>Command: </b>
#Change Directory
cd dock-phpmyadmin

#Build Image
sudo docker build -t #YOUR_IMAGE_NAME# .
#ex:  sudo docker build -t youraccount/dock-phpmyadmin .
</pre>

<b>3 :</b> Run image
<pre>
<b>Command: </b>
sudo docker run -d -P youraccount/dock-phpmyadmin 

</pre>

<b>4 :</b> Run image
<pre>
<b>Command: </b>
sudo docker run -d -P --name db youraccount/dock-phpmyadmin

#Example of linking with DB Container
#docker run -d --name db10 carbonsphere/dock-mysql
#docker run -d -p 8081:80 --name web --link db10:db10 -e DBNAME=DB10 carbonsphere/dock-phpmyadmin
#Default MySQL username/password carbon/carbon please refer to carbonsphere/dock-mysql

#Example of using this container as standalone DB manager to a remote host without having a local db link container.
#Default db link host name is "DB" --  default DBNAME=DB
#use add-host option. EX:
#docker run -d -p 8081:80 --name phpmyadmin --add-host DB:192.168.0.100 carbonsphere/dock-phpmyadmin

</pre>
