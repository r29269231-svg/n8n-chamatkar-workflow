# Official n8n image (includes n8n binary)
FROM n8nio/n8n:latest

# Optional: copy custom settings
COPY ./config /home/node/.n8n

# Fix permissions
RUN chmod 600 /home/node/.n8n/config
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose port 5678
EXPOSE 5678

# Start n8n
CMD ["n8n"]
