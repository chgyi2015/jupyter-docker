# jupyter-docker
build the jupyter image which contains the jupyter. the R3.4.2 and python3.5.2 has been well config in the images.
# USAGE:
    sudo docker build --tag jupyter:1.0 .
# then 
    sudo docker run -d --name jupyterruning -p 8888:8888 -e PASSWORD=admin jupyter:1.0
open http://localhost:8888/      and enter the password(admin) 


