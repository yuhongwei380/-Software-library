#!/bin/bash
sudo mkdir -p /var/lib/node_exporter/textfile_collector
sudo chmod a+x /opt/exporter/*.sh
sudo touch /var/lib/node_exporter/textfile_collector/smartmon.prom
sudo touch /var/lib/node_exporter/textfile_collector/nvme_metrics.prom
(sudo crontab -l; echo "*/30 * * * * /opt/exporter/smartmon.sh > /var/lib/node_exporter/textfile_collector/smartmon.prom") | sudo crontab -
(sudo crontab -l; echo "*/30 * * * * /opt/exporter/nvme_metrics.sh > /var/lib/node_exporter/textfile_collector/nvme_metrics.prom") | sudo crontab -

