# Node Agent - VirtualBMC

This container image will provide a container with the VirtualBMC software installed.

## Building the container

The container needs to be built on a RHEL host or by attaching an RHSM entitlement to the container

```bash
sudo podman build -f Containerfile -t node-agent-virtualbmc:latest .
```

## Running the Container

```bash
sudo podman run --rm -it node-agent-virtualbmc:latest /bin/bash
```

## Example Adding of a Host

```bash
(app-root) virshbmc --port 8623 --connect qemu+ssh://root@192.168.42.40/system --domain app-1
```