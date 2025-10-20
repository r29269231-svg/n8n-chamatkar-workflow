# Official n8n image (includes n8n binary)
FROM n8nio/n8n:latest

# Optional: copy custom settings


# Fix permissions

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose port 5678
EXPOSE 5678

# Start n8n
CMD ["n8n"]
