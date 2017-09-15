# vagrant-ansible-windows-lab

vagrant ssh control

From control machine, to varify WinRM from linux to Windows machines:
 *   cd /vagrant/ansible
 *   ansible windows -m win_ping

To test a playbook against the windows clients:
 *   ansible-playbook -l windows install-msi.yml
