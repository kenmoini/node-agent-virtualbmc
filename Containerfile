FROM registry.access.redhat.com/ubi8/python-38:latest

RUN dnf install -y libvirt-devel libvirt-client \
 && pip install virtualbmc