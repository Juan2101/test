passwd juan
su - root
exit
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
mkdir RTA_examen_$(date +"%Y%m%d_%H%M")
ls
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc5
sudo pvs
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc5
sudo pvcreate /dev/sdc6
sudo pvcreate /dev/sdd5
sudo pvcreate /dev/sdd6
sudo pvs
sudo vgcreate vg_datos /dev/sdd5 /dev/sdc5
sudo vgcreate vg_temp /dev/sdd6
sudo vgs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo vgs
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas 
sudo mkswap /dev/mapper/vg_temp-lv_swap 
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo mount /dev/mapper/vg_datos-lv_docker /var/docker/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo lbslk -f
cd /
ll
sudo mkdir /work/
cd ~
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo lsblk -f
sudo systemctl restart docker
sudo ls /var/lib/docker/
history
ls
cd RTA_examen_20240711
cd /RTA_examen_20240711
rd RTA_examen_20240711_2221/
rd /RTA_examen_20240711_2221/
rmdir /RTA_examen_20240711_2221/
rmdir /RTA_examen_20240711_2221
rmdir RTA_examen_20240711_2221
ls
cd RTA_Examen_20240711/
cat > Punto_A.sh
nano Punto_A.sh 
cd ~
cd UTN-FRA_SO_Examenes/
ls
cd /202406/
cd 202406
ls
cd bash_script/
ls
cd ~
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd /usr/local/bin
sudo vim antuñezAltaUser-Groups.sh
sudo chmod 775 antuñezAltaUser-Groups.sh 
./antuñezAltaUser-Groups.sh  juan /home/juan/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
nano antuñezAltaUser-Groups.sh 
sudo nano antuñezAltaUser-Groups.sh 
./antuñezAltaUser-Groups.sh  juan /home/juan/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo nano antuñezAltaUser-Groups.sh 
history
cd ~
cd UTN-FRA_SO_Examenes/202406/docker/
ll
ls
nano index.html 
docker login  -u juan2101
sudo chmod 666 /var/run/docker.sock
docker login  -u juan2101
nano dockerfile
docker build -t juan2101/web1-antuñez:v1
docker build -t juan2101/web1-antuñez:v1 .
docker build -t juan2101/web1-antunez:v1 .
sudo usermod -G docker juan
cd UTN-FRA_SO_Examenes/202406/docker/
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdd7
sudo pvcreate /dev/sdc6
sudo vgextend vg_datos /dev/sdd7 /dev/sdc6
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs
sudo resize2fs /dev/mapper/vg_datos-lv_docker 
docker build -t juan2101/web1-antunez:v1 .
docker image list
docker push juan2101/web1-antunez:v1
nano run.sh
sudo chmod 755 run.sh
./run.sh
docker ps
curl localhost:8080
history
cat dockerfile 
nano run.sh 
cd ..
cd ansible/
ls
cd roles/2do_parcial/
ls
cd ..
ssh-keygen
ls
ll
cd ~
ll
cd .ssh/
cat id_rsa.pub >> authorized_keys
cd .. 
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/
nano main.yml 
cd ..
mkdir templates
cd templates/
nano datos_alumnos.j2
cd ..
cd vars/
nano main.yml 
cd .. 
cd templates/
nano datos_equipos.j2
cd ..
cd tasks/
nano main.yml 
cd ..
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
history
cd roles/2do_parcial/vars/
nano main.yml 
cd ..
cd .. 
ls
cd roles/
ls
cd 2do_parcial/
ls
cd templates/
nano datos_alumnos.j2 
cd ..
cd..# vars file for 2do_parcial
NOMBRE: "Juan"
APELLIDO: "antunez"
DIVISION: "116"
cd ..
cd inventory/host_vars/
ls
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
cd ..
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
ansible-playbook -i inventory/host_vars playbook.yml --ask-become-pass
cd /tmp/
ls
ll
cd ~
cd UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
ansible -version
ansible --version
sudo apt install wget gpg
UBUNTU_CODENAME=jammy wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list sudo apt update && sudo apt install ansible
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
ll
nano playbook.yml 
cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
git clone git@github.com:upszot/UTN-FRA_SO_Ansible.git
ls
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ls
cd UTN-FRA_SO_Ansible/ejemplo_01
ansible-playbook -i inventory playbook.yml
ls
ññ
ll
cd..
cd ~
ls 
cd RTA_Examen_20240711/
cd ..
cd UTN-FRA_SO_Ansible/
ls
cd
cd UTN-FRA_SO_Examenes/
ls
cd 202406/ansible
ll
cd roles/
ll
cd 2do_parcial/
ll
cd tasks/
ll
vim $HOME/.vimrc
cd ..
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
cd ~
git remote add origin https://github.com/Juan2101/test.git
git remote add origin git@github.com:Juan2101/test.git
git init
git remote add origin https://github.com/Juan2101/test.git
ls
git add UTN-FRA_SO_Examenes/202406/
git add RTA_Examen_20240711/
history -a
