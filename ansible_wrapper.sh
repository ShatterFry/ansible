echo Hello, World!
MANAGED_NODE=Linux3
ansible Linux3 -m ping -i inventory
ansible $MANAGED_NODE -m package -a "name=bash-completion state=present" -i inventory -b -K
ansible $MANAGED_NODE -m package -a "name=git state=present" -i inventory -b -K
ansible $MANAGED_NODE -a "uptime" -i inventory
# ansible all -m ansible.builtin.setup -i inventory
