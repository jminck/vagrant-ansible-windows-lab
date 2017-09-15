# vagrant-ansible-windows-lab

From control machine, to verify WinRM from linux to Windows machines:

 * vagrant ssh control
 * cd /vagrant/ansible
 * ansible windows -m win_ping

To test a playbook against the windows clients:

 *   ansible-playbook -l windows install-msi.yml
