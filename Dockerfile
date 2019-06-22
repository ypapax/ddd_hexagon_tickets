ARG GO_VERSION=1.11
FROM golang:${GO_VERSION}
COPY . /ddd_hexagon_tickets/

WORKDIR /ddd_hexagon_tickets
RUN ls -la
RUN go install
RUN chmod +x /ddd_hexagon_tickets/entrypoint.sh
ENTRYPOINT "/ddd_hexagon_tickets/entrypoint.sh"
