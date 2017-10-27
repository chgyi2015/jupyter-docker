# jupyter-docker
build the jupyter image which contains the jupyter. the R3.4.2 and python3.5.2 has been well config in the images.
# USAGE:
    git clone https://github.com/chgyi2015/jupyter-docker.git
    cd jupyter-docker
    sudo docker build --tag jupyter:1.0 .
# then 
    sudo docker run -d --name jupyterruning -p 8888:8888 -e PASSWORD=admin jupyter:1.0   
# open 
    http://localhost:8888/      or http://ip:8888 
# password
    enter the password(admin) 

