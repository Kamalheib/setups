#!/bin/sh

PASS=$1

#CX3Pro 7-10
sshpass -f <(printf '%s\n' $PASS) rsync ./CX3Pro/7-10/network-scripts/ifcfg-mlx4_* root@10.194.7.10:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CX3Pro/7-10/rdma/*.conf root@10.194.7.10:/etc/rdma
sshpass -f <(printf '%s\n' $PASS) rsync ./CX3Pro/7-10/udev/*.rules root@10.194.7.10:/etc/udev/rules.d/

#CX3Pro 8-10
sshpass -f <(printf '%s\n' $PASS) rsync ./CX3Pro/8-10/network-scripts/ifcfg-mlx4_* root@10.194.8.10:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CX3Pro/8-10/udev/*.rules root@10.194.8.10:/etc/udev/rules.d/

#CIB 7-11
sshpass -f <(printf '%s\n' $PASS) rsync ./CIB/7-11/network-scripts/ifcfg-mlx5_* root@10.194.7.11:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CIB/7-11/rdma/*.conf* root@10.194.7.11:/etc/rdma
sshpass -f <(printf '%s\n' $PASS) rsync ./CIB/7-11/udev/*.rules root@10.194.7.11:/etc/udev/rules.d/

#CIB 8-11
sshpass -f <(printf '%s\n' $PASS) rsync ./CIB/8-11/network-scripts/ifcfg-mlx5_* root@10.194.8.11:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CIB/8-11/udev/*.rules root@10.194.8.11:/etc/udev/rules.d/

#CX4 7-12
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4/7-12/network-scripts/ifcfg-mlx5_* root@10.194.7.12:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4/7-12/rdma/*.conf root@10.194.7.12:/etc/rdma
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4/7-12/udev/*.rules root@10.194.7.12:/etc/udev/rules.d/

#CX4 8-12
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4/8-12/network-scripts/ifcfg-mlx5_* root@10.194.8.12:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4/8-12/udev/*.rules root@10.194.8.12:/etc/udev/rules.d/

#CX4Lx 7-13
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4Lx/7-13/network-scripts/ifcfg-mlx5_* root@10.194.7.13:/etc/sysconfig/network-scripts/

#CX4Lx 8-13
sshpass -f <(printf '%s\n' $PASS) rsync ./CX4Lx/8-13/network-scripts/ifcfg-mlx5_* root@10.194.8.13:/etc/sysconfig/network-scripts/

#CX5 7-14
sshpass -f <(printf '%s\n' $PASS) rsync ./CX5/7-14/network-scripts/ifcfg-mlx5_* root@10.194.7.14:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CX5/7-14/rdma/*.conf root@10.194.7.14:/etc/rdma
sshpass -f <(printf '%s\n' $PASS) rsync ./CX5/7-14/udev/*.rules root@10.194.7.14:/etc/udev/rules.d/

#CX5 8-14
sshpass -f <(printf '%s\n' $PASS) rsync ./CX5/8-14/network-scripts/ifcfg-mlx5_* root@10.194.8.14:/etc/sysconfig/network-scripts/
sshpass -f <(printf '%s\n' $PASS) rsync ./CX5/8-14/udev/*.rules root@10.194.8.14:/etc/udev/rules.d/
