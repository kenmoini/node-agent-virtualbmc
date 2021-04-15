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

I honestly have no clue what works yet

```bash
(app-root) virshbmc --port 8623 --connect qemu+ssh://root@192.168.42.40/system --domain app-1
$ vbmc add idm --port 8623 --username admin --password nuagenet --libvirt-uri qemu+ssh://root@192.168.42.40/system
$ vbmc start idm
$ ipmitool -U admin -P nuagenet -H 127.0.0.1 -p 8623 power status
```