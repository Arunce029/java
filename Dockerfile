From ubuntu:latest
RUN mkdir project_1
WORKDIR project_1
COPY ./*.war /project_1
EXPOSE 8080
