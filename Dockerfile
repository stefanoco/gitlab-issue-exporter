FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go mod init gitlab-issue-exporter
RUN go build -o gitlab-issue-exporter .
ENTRYPOINT ["/app/gitlab-issue-exporter"]
