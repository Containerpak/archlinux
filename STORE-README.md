# Use Arch Linux as a persistent environment

Install the package once:

```bash
cpak install github.com/containerpak/archlinux
```

Create an environment and open Bash:

```bash
cpak environment create --name Arch --origin github.com/containerpak/archlinux
cpak environment shell --environment Arch --command /bin/bash
```

The shell runs as root inside the environment, so Arch Linux packages can be installed normally:

```bash
pacman -Syu
pacman -S git base-devel
```

## Persistent storage

Installed packages, system configuration and the private home directory remain available after the shell closes or the environment stops. Host files, desktop services and devices stay unavailable unless you grant them through the environment settings.

## Manage the environment

```bash
cpak environment list
cpak environment inspect --environment Arch
cpak environment processes --environment Arch
cpak environment stop --environment Arch
```

Deleting the environment also deletes its installed packages, system changes and private home:

```bash
cpak environment delete --environment Arch
```
