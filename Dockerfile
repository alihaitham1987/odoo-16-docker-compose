FROM odoo:16.0

COPY ./addons /mnt/extra-addons

# REMOVE this line (causes the permission issue)
# RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo

CMD ["odoo", "--addons-path=/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons"]
