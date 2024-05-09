# Define the source and destination directories
SCRIPT = makeProject
SCRIPT_DIR = /usr/local/bin/
CONFIG_DIR = /home/$(SUDO_USER)/.config/makeProject/
SRC_TEMPLATE_DIR = ./makeProject/Template
SRC_SCRIPT_DIR = ./makeProject/makeProject

# The install target
install:
	# Start Installation
	mkdir -p $(CONFIG_DIR)
	cp -r $(SRC_TEMPLATE_DIR) $(CONFIG_DIR)
	cp $(SRC_SCRIPT_DIR) $(SCRIPT_DIR)
	chmod +x $(SCRIPT_DIR)$(SCRIPT)
	mv $(SCRIPT_DIR)$(SCRIPT) $(SCRIPT_DIR)mp
	# success ~/.config/makeProject created 
	# run mp --version to verify installation
	# run mp --help to see available commands

# The uninstall target
uninstall:
	# Remove the script from the /usr/bin directory
	rm -f $(SCRIPT_DIR)mp
	# Remove the Template from the .config directory
	rm -rf $(CONFIG_DIR)
	# success makeProject uninstalled