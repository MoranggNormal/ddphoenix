FROM elixir:1.17.0-otp-27-alpine AS build

RUN apk add --no-cache build-base git
RUN apk add inotify-tools

WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

COPY . .

RUN mix do deps.get, deps.compile

EXPOSE 4000