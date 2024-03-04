# Define the source and destination directories
SCRIPT = makeProject
SCRIPT_DIR = /usr/local/bin/
CONFIG_DIR = /home/$(SUDO_USER)/.config/makeProject/
SRC_TEMPLATE_DIR = ./makeProject/Template
SRC_SCRIPT_DIR = ./makeProject/makeProject

# The install target
install:
	# Ensure the destination directory exists
	mkdir -p $(CONFIG_DIR)
	# Copy the Template to the .config directory
	cp -r $(SRC_TEMPLATE_DIR) $(CONFIG_DIR)
	# Copy the script to the /usr/bin directory
	cp $(SRC_SCRIPT_DIR) $(SCRIPT_DIR)
	# Make the script executable
	chmod +x $(SCRIPT_DIR)$(SCRIPT)
	mv $(SCRIPT_DIR)$(SCRIPT) $(SCRIPT_DIR)mp

# The uninstall target
uninstall:
	# Remove the script from the /usr/bin directory
	rm -f $(SCRIPT_DIR)mp
	# Remove the Template from the .config directory
	rm -rf $(CONFIG_DIR)