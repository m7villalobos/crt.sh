#!/bin/bash

# crt.sh - Subdomain Finder
#
# Copyright (C) 2025 Miguel Ángel Villalobos (m7villalobos)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.


# --- Start of script ---

# Function to display the correct usage of the script
usage() {
    echo "Usage: $0 <domain.com>"
    exit 1
}

# Check if a domain was provided as an argument
if [ -z "$1" ]; then
    usage
fi

DOMAIN=$1

echo "[*] Obtaining subdomains for $DOMAIN from crt.sh..."

# Make the request to crt.sh asking for JSON output, extract the
# 'common_name' and 'name_value' fields, clean up the results, and sort them uniquely.
subdomains=$(curl -s "https://crt.sh/?q=%.$DOMAIN&output=json" | jq -r '.[].common_name, .[].name_value' | sed 's/\\n/\n/g' | sed 's/^\*.//' | sort -u)

# Check if any subdomains were found
if [ -z "$subdomains" ]; then
    echo "[-] No subdomains found for $DOMAIN."
else
    echo "[+] Subdomains found:"
    # Print the list of subdomains
    echo "$subdomains"
fi
