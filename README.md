# crt.sh Subdomain Finder

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

A simple and efficient Bash script to discover subdomains of a given domain by querying the [crt.sh](https://crt.sh/) Certificate Transparency log search engine.

This script leverages the JSON API of crt.sh to provide a clean, sorted, and unique list of subdomains, making it a handy tool for reconnaissance and asset discovery.

## Features

-   Fetches subdomains from `crt.sh` using its JSON endpoint.
-   Extracts both "Common Name" and "Matching Identities" for comprehensive results.
-   Processes the output to provide a clean, unique, and sorted list.
-   Lightweight, fast, and easy to use.

## Dependencies

To use this script, you need to have `curl` and `jq` installed on your system.

-   **`curl`**: A tool to transfer data from or to a server.
-   **`jq`**: A lightweight and flexible command-line JSON processor.

### Installation of Dependencies

-   **On Debian/Ubuntu:**
    ```sh
    sudo apt-get update && sudo apt-get install -y curl jq
    ```
-   **On CentOS/RHEL/Fedora:**
    ```sh
    sudo yum install -y curl jq
    ```
-   **On Arch Linux:**
    ```sh
    sudo pacman -Syu curl jq
    ```
-   **On macOS (using Homebrew):**
    ```sh
    brew install curl jq
    ```

## Installation

1.  Clone the repository to your local machine:
    ```sh
    git clone https://github.com/m7villalobos/crt.sh.git
    ```

2.  Navigate into the cloned directory:
    ```sh
    cd your-repo-name
    ```

3.  Make the script executable:
    ```sh
    chmod +x crt.sh
    ```

## Usage

Run the script from your terminal, passing the target domain as an argument.

```sh
./crt.sh <domain.com>
```




