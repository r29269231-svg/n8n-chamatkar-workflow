# Use the official n8n image
FROM n8nio/n8n:latest

# Install PostgreSQL client if needed (optional)
RUN apk add --no-cache postgresql-client

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
