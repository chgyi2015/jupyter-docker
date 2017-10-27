FROM	ubuntu:16.04
RUN	echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list
RUN	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 
RUN	apt update && \
	apt -y install python \
		       python3 \
                       python-pip \
                       python3-pip \ 
                       perl \
	               apt-transport-https\
                       ruby \
                       golang \
                       r-base-core \
		       openssl \
                       wget \
                       curl \
	               openssh-server \
                       libcurl4-openssl-dev \
                       libssh2-1-dev	\
                       libssl-dev \
	&& apt autoremove \
	&& apt clean \
	&& rm -rf /bar/lib/apt/lists/* /tmp/* 

RUN	pip install --upgrade pip
RUN	pip3 install --upgrade pip
RUN	pip3 install jupyter

COPY	docker-entrypoint.sh /usr/local/bin/
RUN	su - -c \	
		"R -e \"install.packages('devtools', repos='https://cran.rstudio.com/');library(devtools);devtools::install_github(c('IRkernel/IRdisplay','IRkernel/IRkernel'));IRkernel::installspec()\""

RUN	chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT	docker-entrypoint.sh
CMD	['']
EXPOSE 8888
