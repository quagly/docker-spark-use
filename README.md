# docker-spark-use
Examples of how to use my spark-all container from
[docker hub](https://cloud.docker.com/repository/docker/quagly/spark-all)
Which is autobuilt from tagged releases in
[repo](https://github.com/quagly/docker-spark-create)

Show how to use JupyterLab and spark-submit

* test.sh - run a spark-submit to validate vanilla container
* login.sh - login to vanilla container to poke around
* run.sh - start container, use jupyter, use custom spark configuration
* run-default-conf.sh - start continer, use jupyter, use default configuration

Once container is running we can login to it or spark-submit to it
Note it is possible to login and run without a running container
The purpose of this project is to provide a single environmnet for both
spark-submit and jupyter

* test-running - run spark-submit on running container
* login-running - login to running container

depends on project [gill](https://github.com/quagly/gill)
existing and egg file generated
and spark application directory mounted
* egg-running - run custom spark application on running container

source .config file to set environment variables of scripts
