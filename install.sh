#! /bin/bash

# Copy to /bin/
echo "Moving files to '/bin/'..."
sudo cp download.sh /bin/download
sudo cp upload.sh /bin/upload

# Make them executable
echo "Fixing permissions..."
sudo chmod +x /bin/download
sudo chmod +x /bin/upload

# End
echo "Done."
