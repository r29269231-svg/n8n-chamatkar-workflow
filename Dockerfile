# Use the official n8n image
FROM n8nio/n8n:latest



# Expose n8n default port
EXPOSE 5678
RUN which n8n && n8n --version

# Start n8n
CMD ["n8n", "start"]
