# Use the official n8n image
FROM n8nio/n8n:latest

# Switch to root to copy files if needed
USER root

# Copy your workflow JSON into n8n's folder
# (replace 'workflow.json' with your actual workflow file name)
COPY workflow.json /home/node/.n8n/workflow.json

# Set permissions for n8n user
RUN chown node:node /home/node/.n8n/workflow.json

# Switch back to node user
USER node

# Default n8n command
CMD ["n8n", "start"]
