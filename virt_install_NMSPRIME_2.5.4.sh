sudo virt-install \
--virt-type=kvm \
--name NMSPrime_2.5.4 \
--memory 2048 \
--vcpus=2 \
--os-variant=rhel7.8 \
--location=/var/lib/libvirt/boot/CentOS-7-x86_64-Minimal-2009.iso \
--network=bridge=virbr0,model=virtio \
--graphics vnc \
--disk path=/var/lib/libvirt/images/nmsprime_2.5.4.qcow2,size=300,bus=scsi,format=qcow2 \
--extra-args="ip=dhcp ks=https://raw.githubusercontent.com/n3w63n/netmee/main/nms254.cfg"
