# Export configuration
/export file=config

# Create binary backup
/system backup save name=config

# Send backup via email
/tool e-mail send \
to="your-email@example.com" \
subject=([/system identity get name] . " Backup") \
body=("MikroTik Configuration Backup - " . [/system clock get date]) \
file="config.backup"

# Log successful execution
/log info "Backup e-mail sent."