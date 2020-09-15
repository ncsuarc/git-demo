FROM ubuntu:latest

RUN apt-get update && apt-get install -y git python3 nano vim

# Set up git config so they're not asked
RUN git config --global user.email "demo@aerialroboticsclub.com"
RUN git config --global user.name "Demo User"
# Add nice command to visualize things
RUN git config --global alias.hist "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

WORKDIR /demo

COPY hello.py .gitignore ./

ENTRYPOINT ["/bin/bash"]
