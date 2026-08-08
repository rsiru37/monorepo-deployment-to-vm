# FROM oven/bun:latest
# WORKDIR /app
# COPY . .
# RUN bun install
# RUN bun run db:generate 
# CMD ["bun", "run", "start:ws"]

FROM oven/bun:latest

WORKDIR /app

COPY ./packages ./packages
COPY ./bun.lock ./bun.lock

COPY ./package.json ./package.json
COPY ./turbo.json ./turbo.json

COPY ./apps/websocket ./apps/websocket

RUN bun install
RUN bun run db:generate


CMD ["bun", "run", "start:ws"]