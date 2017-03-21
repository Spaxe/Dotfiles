if test -f $HOME/.gpg-agent-info && \
    kill -0 `grep GPG_AGENT_INFO $HOME/.gpg-agent-info | cut -d: -f2` 2>/dev/null; then
    # do this in case we were called from the shell
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export SSH_AGENT_PID
else
    eval `/usr/local/bin/gpg-agent --daemon --write-env-file`
fi