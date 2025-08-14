FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
python3-venv \
&& rm -rf /var/lib/apt/lists/*

# Install Arduino CLI  
#  RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh 
# (direct binary, no extras)
RUN curl -fsSL https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz \
| tar -xz -C /usr/local/bin
