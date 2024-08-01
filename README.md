# Collect-hardware-info

* The following project aims to identify and collect all the main hardware data from each device in the company, such as memory information, available disk space, etc., and in the future integrate this collection with InfluxDB and Grafana to create dynamic interactive dashboards. This would help the IT department have a complete understanding of the physical state of the group's devices, as well as assist in decision-making and define a maintenance and cleaning routine for PCs that exhibit above-average hardware usage

* It will run as a schedule task in the GPMC as a logon script

* After Collecting the data sucessfuly, the data should be sent to a influxdb instance, there it can be used to feed and display some cool dashboards using influxdb buckets, or yet be integrated with grafana as well.

# code preview

![alt text] (https://github.com/Richardbarbosasilva/Collect-hardware-info/screenshot_7.png)
