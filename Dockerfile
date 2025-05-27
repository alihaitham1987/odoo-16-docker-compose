# Use official Odoo 16 image as base
FROM odoo:16.0

# Set environment variables
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Copy your custom addons into the container
COPY ./addons /mnt/extra-addons

# Ensure ownership and permissions
RUN chown -R odoo:odoo /mnt/extra-addons

# Set the default user
USER odoo

# Set custom addons path in the command
CMD ["odoo", "--addons-path=/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons"]
