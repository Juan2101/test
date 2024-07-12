sudo fdisk -l
sudo fdisk /dev/sdc
   11  sudo pvcreate /dev/sdc5
   12  sudo pvs
   13  sudo fdisk /dev/sdd
   14  sudo pvcreate /dev/sdc5
   15  sudo pvcreate /dev/sdc6
   16  sudo pvcreate /dev/sdd5
   17  sudo pvcreate /dev/sdd6
   18  sudo pvs
   19  sudo vgcreate vg_datos /dev/sdd5 /dev/sdc5
   20  sudo vgcreate vg_temp /dev/sdd6
   21  sudo vgs
   22  sudo lvcreate -L +5M vg_datos -n lv_docker
   23  sudo vgs
   24  sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
   25  sudo lvs
   26  sudo lvcreate -l +100%FREE vg_temp -n lv_swap
   27  sudo lvs
   28  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
   29  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
   30  sudo mkswap /dev/mapper/vg_temp-lv_swap
   31  free -h
   32  sudo swapon /dev/mapper/vg_temp-lv_swap
   33  free -h
   34  sudo mount /dev/mapper/vg_datos-lv_docker /var/docker/
   35  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   37  cd /
   38  ll
   39  sudo mkdir /work/
   40  cd ~
   41  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   42  sudo lsblk -f
   43  sudo systemctl restart docker
   44  sudo ls /var/lib/docker/

