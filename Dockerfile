# Use official n8n image
FROM n8nio/n8n:latest

# Copy your workflow JSON (optional)
COPY workflow.json /home/node/.n8n/workflow.json

# Set permissions
USER node
