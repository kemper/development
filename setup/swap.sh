set -v

if grep swapfile /etc/fstab ; then
  echo "Swap file already installed"
else
  sudo fallocate -l 2G /swapfile
  sudo chmod 600 /swapfile
  sudo mkswap /swapfile
  sudo swapon /swapfile
  echo '/swapfile none swap defaults 0 0' >> /etc/fstab
fi
