## Storing artefacts and managing proxy with NEXUS

### Develop deployment for Nexus, persistent volume.
You can find this files there:


File setting.xml you can find here:
https://github.com/MNT-Lab/build-t00ls/blob/anikitsenka/helloworld-project/settings.xml

For deploying:
- kubectl apply -f *.yml

Deploy Nexus, disable anonymous access:
![img 1](./images/1.png)

Installation complete:
![img 2](./images/2.png)

Install Nexus Platform plugin to Jenkins:
![img 3](./images/3.png)

It's time to setup Jenkins for connection:
![img 4](./images/4.png)

On these screenshots both types of connections to Nexus: NodePort and ClusterIP via Ingress.
Because I added ingress rule and changed connection type at the ending of the task.

### Configure Nexus with Jenkins.
Successful storing artefacts in Nexus:
![img 5](./images/5.png)

Also with build number:
![img 6](./images/6.png)

Configuration of Jenkins job for it.
![img 7](./images/7.png)

Add repo for storing into Jenkins. 
![img 8](./images/8.png)

List of repos.
![img 9](./images/9.png)

Add repo (type = group) for proxy:
![img 17](./images/17.png)

### Using Nexus like proxy repo in Jenkins Job.
Downloading via Nexus proxy:
![img 10](./images/10.png)

Storing dependencies in Nexus repo:
![img 12](./images/12.png)

Configuration of Jenkins job (Build) for it:
![img 13](./images/13.png)

Configuration of Jenkins job (Nexus Repository Manager Publisher):
![img 14](./images/14.png)

Files in Nexus repo:
![img 15](./images/15.png)
