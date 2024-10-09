SHELL :=/bin/bash

install:
	curl -LsSf https://astral.sh/uv/install.sh | sh
	source ~/.bashrc

setup:
	sudo apt update
	@echo "Setting up the project..."

	uv python install

	curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh
	@echo "Setup finished.."

clean_uv:
	rm -rf $(HOME)/.local/share/uv
	rm -rf $(PWD)/.venv
	rm -rf $(PWD)/uv.lock
	rm -rf $(PWD)/dist
	rm -rf $(HOME)/.cargo/bin/uv
	rm -rf $(HOME)/.cargo/bin/uvx
	rm -rf $(PWD)/dist
	
