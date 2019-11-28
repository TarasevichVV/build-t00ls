## Automated code analsis Nikitsenka

### Develop deployments for PostgreSQL, persistent volume, Sonarqube.
You can find this files there:
https://github.com/MNT-Lab/jenkins-install/tree/anikitsenka/day6_sonar

For deploying:
- kubectl create secret generic postgres-pwd --from-literal=password=<YOUR_PASSPHRASE>
- kubectl apply -f *.yml

Also added rule for ingress:
![img 1](./images/1.png)

And add string to /etc/hosts/
![img 2](./images/2.png)

Install Sonar plugin to Jenkins:
![img 3](./images/3.png)

Sonar is installed, it's time to setup Jenkins for connection:
![img 4](./images/4.png)

On these screenshots both types of connections to Sonar: NodePort and ClusterIP via Ingress.
Because I added ingress rule and changed connection type at the ending of the task.

### Configure Sonar and Jenkins.
Change user settings in Sonar:
![img 5](./images/5.png)

Enable force user authentication:
![img 6](./images/6.png)

Create token for user, that will be share with Jenkins.
![img 7](./images/7.png)

Jenkins - Global Tool Configuration - SonarQube Scanner
![img 8](./images/8.png)

Jenkins - Configuration - SonarQube servers
![img 9](./images/9.png)

Add credentials for connection (token from previous step):
![img 10](./images/10.png)

### Create some job with SonarQube.
Install Java Plugin to Sonar:
![img 11](./images/11.png)

Restart Sonar to apply Java Plugin:
![img 12](./images/12.png)

Create job with pulling from GIT branch:
![img 13](./images/13.png)

Set build settings:
![img 14](./images/14.png)

Set Execute SonarQube Scanner parameters:
![img 15](./images/15.png)

### Execute some job with SonarQube.
Console output: 
![img 16](./images/16.png)

SonarQube report:
![img 17](./images/17.png)

### Add infinity loop to the src and execute job.
Making changes into src:
![img 18](./images/18.png)

Console output:
![img 19](./images/19.png)

Job in Jenkins:
![img 20](./images/20.png)

Quality profile:
![img 21](./images/21.png)

A diagram which describes the interaction between the items in Kubernetes
(pods: Jenkins, sonar; their services, ingresses, etc) :
![img 22](./images/22.png)
