#!/bin/bash

set -e

# OVERVIEW
# This script installs a jupyterlab extension package in SageMaker Notebook Instance

sudo -u ec2-user -i <<'EOF'

# PARAMETERS
EXTENSION_NAME=@jupyterlab/git

source /home/ec2-user/anaconda3/bin/activate JupyterSystemEnv
jupyter labextension install @oriolmirosa/jupyterlab_materialdarker # Material Darker Theme
jupyter labextension install @aquirdturtle/collapsible_headings # Collapsible Headings

source /home/ec2-user/anaconda3/bin/deactivate

EOF
