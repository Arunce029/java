From ubuntu:latest
RUN mkdir project_1
WORKDIR project_1
COPY /var/lib/jenkins/workspace/hellowrd/*.war /project_1
