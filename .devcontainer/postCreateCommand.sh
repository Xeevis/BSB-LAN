sudo mkdir -p bin
sudo chown vscode bin
cp --update=none BSB_LAN/BSB_LAN_config.h.default BSB_LAN/BSB_LAN_config.h  # No overwrite
cp --update=none BSB_LAN/BSB_LAN_custom_defs.h.default BSB_LAN/BSB_LAN_custom_defs.h  # No overwrite
