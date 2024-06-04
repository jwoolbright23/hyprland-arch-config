# Install Packages:
pacman -S package_one package_two etc..

# Install Package Groups:
pacman -S gnome

# Remove Packages:
pacman -R package_name

# Remove Package and Dependencies:
pacman -Rs package_name

# Upgrade Packages:
pacman -Syu

# Query Package Databases:
pacman -Ss string1 string2

# Create a list of explicitly installed packages:
pacman -Qqe > pkglist.txt
