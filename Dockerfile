FROM ghcr.io/gitroomhq/postiz-app:latest

# Remove deprecated 'read_insights' scope hardcoded in Facebook provider
RUN find /app/dist -name "*.js" | xargs grep -rl "read_insights" 2>/dev/null | xargs sed -i 's/"read_insights",//g; s/,"read_insights"//g' 2>/dev/null || true
