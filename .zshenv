# Running EF Core tests on local SQL Server
export Test__SqlServer__DefaultConnection="Server=localhost;Database=test;User=SA;Password=Abcd5678;Connect Timeout=60;ConnectRetryCount=0;Trust Server Certificate=true"
export Test__Cosmos__DefaultConnection="https://192.168.64.3:8081"

# Run only latest TFM for EF Core tests
export DeveloperBuild=true

# Hack to allow source generation in Npgsql, https://github.com/dotnet/installer/issues/12230#issuecomment-936348246
export MSBuildEnableWorkloadResolver=false

# Necessary for zsh-autosuggestions to work under tmux
export TERM=xterm-256color

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"

# GPG for git
export GPG_TTY=$(tty)

eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR=vim
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$HOME/bin:$HOME/.dotnet:$HOME/.dotnet/tools:$PATH:/opt/mssql-tools/bin:$HOME/gems/bin:$HOME/.cargo/bin:$PATH"

# Make EF Core test infrastructure update SQL baselines for failing tests
# export EF_TEST_REWRITE_BASELINES=1
