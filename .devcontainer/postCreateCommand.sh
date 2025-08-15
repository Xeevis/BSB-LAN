#!/bin/bash
cp --update=none BSB_LAN/BSB_LAN_config.h.default BSB_LAN/BSB_LAN_config.h  # No overwrite
cp --update=none BSB_LAN/BSB_LAN_custom_defs.h.default BSB_LAN/BSB_LAN_custom_defs.h  # No overwrite
sudo chown -R vscode:vscode bin
sudo mkdir -p /home/vscode/.arduino15 && sudo chown -R vscode:vscode /home/vscode/.arduino15
arduino-cli config init --overwrite \
  && arduino-cli config set board_manager.additional_urls "https://espressif.github.io/arduino-esp32/package_esp32_index.json" \
  && arduino-cli core update-index \
  && arduino-cli core install esp32:esp32 \
  && arduino-cli core install arduino:sam \
  && arduino-cli lib update-index
