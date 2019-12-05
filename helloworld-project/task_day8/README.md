## Automated deployment. Public Java-based project will be setup in
## Jenkins job for automated deployments into Dockerized Environment.

You can find deployment and docker files there:
https://github.com/MNT-Lab/build-t00ls/tree/anikitsenka/helloworld-project/task_day8/

## Settings

### 1. Job "anikitsenka-docker-build"
![img 6](./images/6.png)
![img 7](./images/7.png)
![img 8](./images/8.png)
![img 9](./images/9.png)

### 2. Job "anikitsenka-docker-deploy"
![img 10](./images/10.png)
![img 11](./images/11.png)
![img 12](./images/12.png)
![img 13](./images/13.png)

## Checks

### 1. Job is scheduled and executed automatically
![img 1](./images/1.png)
![img 2](./images/2.png)

### 2. All created artifacts are stored in repository (archived war file (optional), docker image)
![img 3](./images/3.png)

### 3. Project is redeployed to Kubernetes.
![img 4](./images/4.png)

### 4. Project is accessible via HTTP after deployment. Shows application page with metadata.
![img 5](./images/5.png)

### Diagram which describes versioning semantic in this CD process.
### Diagram should contain full picture from commit to running application. 
![img 14](./images/14.png)
