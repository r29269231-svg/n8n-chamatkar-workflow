# Official n8n image (includes n8n binary)
FROM n8nio/n8n:latest



# Expose port 5678
EXPOSE 5678

CMD ["n8n", "start"]
