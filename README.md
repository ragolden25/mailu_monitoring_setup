# mailu_monitoring_setup

Ansible project (galaxy-style layout) to interactively bootstrap a **Mailu** deployment:
- Renders `mailu.env` and `docker-compose.yml` from templates (with prompts for domain/host/IP/etc.)
- Generates a **SECRET_KEY** and **API_TOKEN**
- Optionally **pulls** all images referenced by the compose file
- Optionally **saves** them as `.tar.gz` archives (for offline installs later)
- Optionally **loads** images from a directory of pre-saved archives

## Layout
```
inventories/
playbooks/
  mailu_monitoring_setup.yml
roles/
  mailu_setup/
    defaults/
    handlers/
    meta/
    tasks/
    templates/
    vars/
```
This mirrors a role created with `ansible-galaxy init`.

## Usage
```bash
# Set your inventory (example inventory provided)
cp -r inventories/example inventories/prod
# edit inventories/prod/hosts.ini

# Run the interactive setup
ansible-playbook -i inventories/prod/hosts.ini playbooks/mailu_monitoring_setup.yml
```

## Notes
- The role can **pull**, **save**, and **load** images as requested during prompts.
- Output files are written to `/opt/mailu` on the target host.
