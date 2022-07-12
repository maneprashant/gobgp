#!/bin/sh
set -ex
echo "Running preinst..."
systemctl disable gobgpd.service || true
systemctl stop gobgpd.service || true
systemctl daemon-reload || true
rm -f /etc/gobgpd/gobgpd.conf
rm -f /lib
echo "Done with preinst...