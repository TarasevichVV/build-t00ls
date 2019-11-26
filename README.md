## build-t00ls Nikitsenka

### Install Maven on VM, implement pom.xml, build and execute.
Also for using Java-12 add to pom.xml:
<properties>
        <maven.compiler.source>1.6</maven.compiler.source>
        <maven.compiler.target>1.6</maven.compiler.target>
</properties>
Result:
![img 1](./images/1.png)

### Install Maven on Jenkins, build, execute, archive and test.
Install Maven plugin to Jenkins:
![img 2](./images/2.png)

Add Maven installation to "Global Tool Configuration":
![img 4](./images/4.png)

Create Maven project item (job) with appropriate name:
![img 3](./images/3.png)

Add repo with specified branch to job:
![img 5](./images/5.png)

Set trigger build:
![img 6](./images/6.png)

Set build and post-build steps:
![img 7](./images/7.png)

Console output of Maven job:
![img 8](./images/8.png)

Workspace of Maven job on master:
![img 9](./images/9.png)

### Install Gradle on VM, implement gradle.build, build and execute.
Result:
![img 10](./images/10.png)

### Install Gradle on Jenkins, build, execute, archive and test.
Add Gradle installation to "Global Tool Configuration":
![img 11](./images/11.png)

Create freestyle project item (job) with appropriate name for Gradle build:
![img 12](./images/12.png)

Add repo with specified branch to job:
![img 13](./images/13.png)

Set trigger build:
![img 14](./images/14.png)

Set build step:
![img 15](./images/15.png)

Set post-build step: 
![img 16](./images/16.png)

Console output of Gradle job:
![img 17](./images/17.png)

Workspace of Gradle job on master:
![img 18](./images/18.png)

