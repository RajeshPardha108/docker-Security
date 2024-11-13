FROM ubuntu:18.04

LABEL maintainer="Alexis Ahmed"

# Environment Variables
ENV HOME /root
ENV DEBIAN_FRONTEND=noninteractive


# Working Directory
WORKDIR /root
RUN mkdir ${HOME}/toolkit && \
    mkdir ${HOME}/wordlists

# Install Essentials
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    tmux \
    gcc \
    iputils-ping\
    git \
    vim \
    wget \
    awscli \
    tzdata \
    curl \
    make \
    whois \
    python \
    python-pip \
    python3 \
    python3-pip \
    perl \
    dnsutils \
    net-tools \
    zsh\
    nano\
    && rm -rf /var/lib/apt/lists/*

# Install Dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \


# Start your image with a node base image
#FROM node:18-alpine
#LABEL maintainer="Rajesh"

# The /app directory should act as the main application directory
#WORKDIR /app

# Copy the app package and package-lock.json file
#COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/app)
#COPY ./src ./src
#COPY ./public ./public

# Install node packages, install serve, build the app, and remove dependencies at the end
#RUN npm install \
 #   && npm install -g serve \
  #  && npm run build \
   # && rm -fr node_modules

#EXPOSE 3000

# Start the app using serve command
#CMD [ "serve", "-s", "build" ]
