#!/bin/bash
rpm -i http://vault.centos.org/7.3.1611/os/Source/SPackages/haproxy-1.5.18-3.el7.src.rpm
cd /root/rpmbuild/SPECS
sed -i "s/Patch[0-9].*//" haproxy.spec
sed -i "s/Version:        1.5.18/Version:        ${HAPROXY_VERSION}/" haproxy.spec
sed -i "s/download\/1\.5/download\/1\.6/" haproxy.spec
sed -i "s/%patch[0-9].*//" haproxy.spec
cd ..
make
cp rpmbuild/x86_64/* /output/
