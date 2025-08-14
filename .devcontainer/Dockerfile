FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
python3-venv \
&& rm -rf /var/lib/apt/lists/*

# Install Arduino CLI  
#  RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh 
# (direct binary, no extras)
RUN curl -fsSL https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz \
| tar -xz -C /usr/local/bin

RUN usermod -a -G dialout vscode
USER vscode
ENV HOME=/home/vscode

# Arduino CLI setup for ESP32 and Arduino Due
RUN arduino-cli config init \
 && arduino-cli config set board_manager.additional_urls \
      https://espressif.github.io/arduino-esp32/package_esp32_index.json \
 && arduino-cli core update-index \
 && arduino-cli core install esp32:esp32 \
 && arduino-cli core install arduino:sam \
 && arduino-cli lib update-index \
 && rm -rf $HOME/.arduino15/staging
