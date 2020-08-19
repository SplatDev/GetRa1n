# GetCheckRa1n
Easily install CheckRa1n

# Requirements
- A debian-based system (support for more distros is coming soon)
- Root access

# Usage
```bash
curl -sfL http://getra1n.xyz/ | sudo bash
```

# Error codes
1. Non-debian system detected: This error code is resulted when the script detects that you're not running a debian system. As of now, the script only supports debian and derivatives, however support for more distros is coming soon
2. Non-root privileges detected: This error code happens when the script detects you're not running it as root. Prefix `bash` with `sudo` to avoid this. If you don't have root access, you (unfortunately) cannot install and/or use checkra1n.
