# Arch Linux (cpak)

## Installation

```bash
cpak install github.com/containerpak/archlinux
```

Create a persistent environment and open Bash:

```bash
cpak environment create --name Arch --origin github.com/containerpak/archlinux
cpak environment shell --environment Arch --command /bin/bash
```

The environment keeps its root filesystem and private home between sessions. It has network access for `pacman`; host files, desktop services and devices are not exposed by default.
