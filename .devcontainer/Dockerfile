# ============================================================================
# BLOCK A & B: Base Image and Layer Caching Strategy
# ============================================================================
# A Dockerfile is a step-by-step recipe used to build a container image, 
# which acts as a blueprint for our environment (Docker concepts - BHB Ch.3).
#
# FROM kalilinux/kali-rolling:latest defines our base image. We use Kali Linux 
# because it comes pre-configured with security and network auditing tools. 
# The "rolling" tag ensures we always build on top of the latest updates.
#
# Every single instruction creates a new read-only layer in the image. Docker 
# uses layer caching: if a line is unchanged, Docker reuses the cached layer. 
# Therefore, instruction order matters deeply; changing lines at the top 
# forces Docker to rebuild everything below it, breaking the cache mechanism.
FROM kalilinux/kali-rolling:latest

# ============================================================================
# BLOCK C: Environment Variables Configuration
# ============================================================================
# Environment variables are global configuration settings accessible by the 
# shell and any processes running inside the container (Env Vars - BHB Ch.1).
#
# - DEBIAN_FRONTEND=noninteractive: Prevents package installers (apt) from 
#   stopping the build to ask interactive questions or user confirmations.
# - LANG & LC_ALL: Set the system locale and character encoding to UTF-8, 
#   allowing proper rendering of special characters, accents, and symbols.
# - TERM=xterm-256color: Instructs terminal applications (like vim or htop) 
#   that the environment supports 256 colors for rich syntax highlighting.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# ============================================================================
# BLOCK D: Pre-answering Interactive Prompts
# ============================================================================
# The "debconf-set-selections" command allows us to pre-answer package prompts.
# Wireshark asks if non-root users should capture packets during installation.
# Since containers run as root, we pipe a "false" answer into debconf using standard 
# input (|) to prevent the build from freezing (Pipes & Redirection - BHB Ch.1).
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# ============================================================================
# BLOCK E, F & G: Package Installation, Locales, and Layer Size Cleanup
# ============================================================================
# "apt-get update" refreshes package lists. "apt-get install" downloads tools.
# - The "-y" flag automatically answers "yes" to prompts.
# - The "--no-install-recommends" flag avoids installing non-essential extras.
#
# Optimization: We chain commands using "&&" (AND operator) so the next command 
# runs ONLY IF the previous one succeeds (Flow control - BHB Ch.2). The trailing 
# backslash (\) continues the single command across multiple lines.
# We use ONE massive RUN instead of multiple small ones because every RUN instruction 
# creates a permanent layer. Fewer layers mean a much smaller image size (Docker - BHB Ch.3).
#
# Core Tools Explained (Text processing and networking - BHB Ch.1-3):
# - grep: Searches for matching text patterns using regular expressions.
# - sed: Stream editor used to filter, find, and replace text inline.
# - gawk: Advanced pattern scanning and processing language.
# - shellcheck: A static analysis linter that automatically finds bugs in shell scripts.
# - nmap: Network exploration tool and security/port scanner.
# - tcpdump / tshark: Packet analyzers that capture live network traffic.
# - tor / proxychains3: Tools used for routing network traffic anonymously through proxies.
# - jq: Command-line processor designed specifically for parsing JSON data.
# - man-db: Reinstalls documentation pages so we can use "man <command>" (BHB Ch.1).
#
# BLOCK F: Enabling Spanish Locale
# We use sed -i to modify /etc/locale.gen in-place, uncommenting the Spanish locale, 
# and run locale-gen to compile character support (Text Processing - BHB Ch.2).
#
# BLOCK G: Layer Cleanup
# Running "apt-get clean" and deleting apt lists at the very end of the SAME RUN instruction 
# guarantees temporary installer files are not saved into the final layer, reducing image size.
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim \
    vim \
    zsh \
    bash-completion \
    perl \
    make \
    gawk \
    sed \
    grep \
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    man-db \
    manpages \
    manpages-posix \
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    shellcheck \
    nmap \
    masscan \
    tcpdump \
    tshark \
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    tor \
    torsocks \
    proxychains3 \
    obfs3proxy \
    httpie \
 && sed -i 's/# es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen \
 && locale-gen \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# ============================================================================
# BLOCK H: Default Shell for Build Steps
# ============================================================================
# Forces Docker to use Bash instead of the default minimal /bin/sh for subsequent 
# RUN commands, enabling advanced shell syntax features (The Shell - BHB Ch.1).
SHELL ["/bin/bash", "-c"]

# ============================================================================
# BLOCK I: Workspace Directory Definition
# ============================================================================
# Defines the default working directory for the container environment. 
# Inside Codespaces, our repository files are mounted directly here.
WORKDIR /workspaces

# ============================================================================
# BLOCK J: Global Git System Configuration
# ============================================================================
# Configures Git globally at the system level. It tells Git to mark any repository 
# inside /workspaces as a trusted directory and initializes Git Large File Storage.
RUN git config --system --add safe.directory '*' \
 && git lfs install --system

# ============================================================================
# BLOCK K: Default Root Shell Modification
# ============================================================================
# Changes the default interactive login shell for the root user to ZSH instead 
# of standard Bash (The Shell - BHB Ch.1).
RUN chsh -s /usr/bin/zsh root

# ============================================================================
# BLOCK L: Shell Prompt Setup using Here-Documents
# ============================================================================
# We use a Here-Document (cat << 'EOF') to append lines directly into the root 
# configuration file without manual interaction (Redirection - BHB Ch.1).
# The PROMPT environment variable configures a custom multi-line theme for ZSH.
RUN cat >> /root/.zshrc <<'EOF'
export PROMPT="%F{cyan}%n%f%F{yellow}@%f%F{blue}%m%f %F{green}%~%f
%F{red}%#%f "
EOF

# ============================================================================
# BLOCK M: Default Startup Command
# ============================================================================
# CMD defines the default program that executes when the container is started. 
# Unlike RUN (which cooks the image layers during the build), CMD runs dynamically 
# every time a new container box is spawned (Docker concepts - BHB Ch.3).
CMD ["/usr/bin/zsh"]
