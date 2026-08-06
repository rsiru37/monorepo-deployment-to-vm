FROM oven/bun:latest
WORKDIR /app
COPY . .
RUN bun install
RUN bun run db:generate 
CMD ["bun", "run", "start:ws"]