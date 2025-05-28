FROM odoo:16.0

COPY ./addons /mnt/extra-addons

# REMOVE this line (causes the permission issue)
# RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo

CMD ["odoo","-d", "db_w2fc", "--db_host=dpg-d0r9hpjuibrs73d1at1g-a", "--db_port=5432", "--db_user=odoodb", "--db_password=8ywhzG8wHpRT1FQhPRUOV7pgF1bLaIBn", "--addons-path=/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons"]
