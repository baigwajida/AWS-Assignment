#Get the version of Java installed on your instance
java -version

#Install Tomcat on your instance
sudo yum install tomcat7

#Update the instance without prompting in between
sudo yum update -y

#Check the status of Tomcat
sudo service --status-all

