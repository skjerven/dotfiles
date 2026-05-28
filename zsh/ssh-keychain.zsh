# Auto-load SSH keys from macOS Keychain into ssh-agent on shell start.
# Idempotent — does nothing if keys are already loaded.
if [[ "$OSTYPE" == "darwin"* ]] && [[ -z "$(ssh-add -l 2>/dev/null)" || "$(ssh-add -l 2>&1)" == "The agent has no identities." ]]; then
  ssh-add --apple-load-keychain 2>/dev/null
fi

