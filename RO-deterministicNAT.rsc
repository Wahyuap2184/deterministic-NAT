# 2026-06-16 03:36:21 by RouterOS 7.14.3
# software id = TWIQ-YM3K
#
/disk
set slot1 slot=slot1
set slot2 slot=slot2
set slot3 slot=slot3
set slot4 slot=slot4
set slot5 slot=slot5
/interface ethernet
set [ find default-name=ether3 ] disable-running-check=no name=ether1
set [ find default-name=ether1 ] disable-running-check=no name=ether2
set [ find default-name=ether2 ] disable-running-check=no name=ether3
set [ find default-name=ether4 ] disable-running-check=no
set [ find default-name=ether5 ] disable-running-check=no
/port
set 0 name=serial0
/ip firewall connection tracking
set tcp-established-timeout=1h udp-stream-timeout=30s udp-timeout=10s
/ip settings
set max-neighbor-entries=4096
/ipv6 settings
set max-neighbor-entries=2048
/ip address
add address=202.1.1.1 interface=lo network=202.1.1.1
add address=202.1.1.2 interface=lo network=202.1.1.2
add address=202.1.1.3 interface=lo network=202.1.1.3
add address=202.1.1.4 interface=lo network=202.1.1.4
add address=202.1.1.5 interface=lo network=202.1.1.5
add address=202.1.1.6 interface=lo network=202.1.1.6
add address=202.1.1.7 interface=lo network=202.1.1.7
add address=202.1.1.8 interface=lo network=202.1.1.8
add address=202.1.1.9 interface=lo network=202.1.1.9
add address=202.1.1.10 interface=lo network=202.1.1.10
add address=202.1.1.11 interface=lo network=202.1.1.11
add address=202.1.1.12 interface=lo network=202.1.1.12
add address=202.1.1.13 interface=lo network=202.1.1.13
add address=202.1.1.14 interface=lo network=202.1.1.14
add address=202.1.1.15 interface=lo network=202.1.1.15
add address=192.255.1.2/30 interface=ether1 network=192.255.1.0
add address=192.255.1.5/30 interface=ether2 network=192.255.1.4
/ip dhcp-client
add interface=ether1
/ip firewall nat
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.2 protocol=tcp \
    src-address=192.10.1.2 to-addresses=202.1.1.1 to-ports=1024-1171
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.2 protocol=udp \
    src-address=192.10.1.2 to-addresses=202.1.1.1 to-ports=1024-1171
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.2 protocol=icmp \
    src-address=192.10.1.2 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.3 protocol=tcp \
    src-address=192.10.1.3 to-addresses=202.1.1.2 to-ports=1172-1319
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.3 protocol=udp \
    src-address=192.10.1.3 to-addresses=202.1.1.2 to-ports=1172-1319
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.3 protocol=icmp \
    src-address=192.10.1.3 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.4 protocol=tcp \
    src-address=192.10.1.4 to-addresses=202.1.1.3 to-ports=1320-1467
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.4 protocol=udp \
    src-address=192.10.1.4 to-addresses=202.1.1.3 to-ports=1320-1467
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.4 protocol=icmp \
    src-address=192.10.1.4 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.5 protocol=tcp \
    src-address=192.10.1.5 to-addresses=202.1.1.4 to-ports=1468-1615
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.5 protocol=udp \
    src-address=192.10.1.5 to-addresses=202.1.1.4 to-ports=1468-1615
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.5 protocol=icmp \
    src-address=192.10.1.5 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.6 protocol=tcp \
    src-address=192.10.1.6 to-addresses=202.1.1.5 to-ports=1616-1763
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.6 protocol=udp \
    src-address=192.10.1.6 to-addresses=202.1.1.5 to-ports=1616-1763
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.6 protocol=icmp \
    src-address=192.10.1.6 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.7 protocol=tcp \
    src-address=192.10.1.7 to-addresses=202.1.1.6 to-ports=1764-1911
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.7 protocol=udp \
    src-address=192.10.1.7 to-addresses=202.1.1.6 to-ports=1764-1911
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.7 protocol=icmp \
    src-address=192.10.1.7 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.8 protocol=tcp \
    src-address=192.10.1.8 to-addresses=202.1.1.7 to-ports=1912-2059
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.8 protocol=udp \
    src-address=192.10.1.8 to-addresses=202.1.1.7 to-ports=1912-2059
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.8 protocol=icmp \
    src-address=192.10.1.8 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.9 protocol=tcp \
    src-address=192.10.1.9 to-addresses=202.1.1.8 to-ports=2060-2207
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.9 protocol=udp \
    src-address=192.10.1.9 to-addresses=202.1.1.8 to-ports=2060-2207
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.9 protocol=icmp \
    src-address=192.10.1.9 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.10 protocol=tcp \
    src-address=192.10.1.10 to-addresses=202.1.1.9 to-ports=2208-2355
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.10 protocol=udp \
    src-address=192.10.1.10 to-addresses=202.1.1.9 to-ports=2208-2355
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.10 protocol=icmp \
    src-address=192.10.1.10 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.11 protocol=tcp \
    src-address=192.10.1.11 to-addresses=202.1.1.10 to-ports=2356-2503
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.11 protocol=udp \
    src-address=192.10.1.11 to-addresses=202.1.1.10 to-ports=2356-2503
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.11 protocol=icmp \
    src-address=192.10.1.11 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.12 protocol=tcp \
    src-address=192.10.1.12 to-addresses=202.1.1.11 to-ports=2504-2651
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.12 protocol=udp \
    src-address=192.10.1.12 to-addresses=202.1.1.11 to-ports=2504-2651
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.12 protocol=icmp \
    src-address=192.10.1.12 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.13 protocol=tcp \
    src-address=192.10.1.13 to-addresses=202.1.1.12 to-ports=2652-2799
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.13 protocol=udp \
    src-address=192.10.1.13 to-addresses=202.1.1.12 to-ports=2652-2799
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.13 protocol=icmp \
    src-address=192.10.1.13 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.14 protocol=tcp \
    src-address=192.10.1.14 to-addresses=202.1.1.13 to-ports=2800-2947
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.14 protocol=udp \
    src-address=192.10.1.14 to-addresses=202.1.1.13 to-ports=2800-2947
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.14 protocol=icmp \
    src-address=192.10.1.14 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.15 protocol=tcp \
    src-address=192.10.1.15 to-addresses=202.1.1.14 to-ports=2948-3095
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.15 protocol=udp \
    src-address=192.10.1.15 to-addresses=202.1.1.14 to-ports=2948-3095
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.15 protocol=icmp \
    src-address=192.10.1.15 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.16 protocol=tcp \
    src-address=192.10.1.16 to-addresses=202.1.1.15 to-ports=3096-3243
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.16 protocol=udp \
    src-address=192.10.1.16 to-addresses=202.1.1.15 to-ports=3096-3243
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.16 protocol=icmp \
    src-address=192.10.1.16 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.17 protocol=tcp \
    src-address=192.10.1.17 to-addresses=202.1.1.1 to-ports=3244-3391
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.17 protocol=udp \
    src-address=192.10.1.17 to-addresses=202.1.1.1 to-ports=3244-3391
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.17 protocol=icmp \
    src-address=192.10.1.17 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.18 protocol=tcp \
    src-address=192.10.1.18 to-addresses=202.1.1.2 to-ports=3392-3539
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.18 protocol=udp \
    src-address=192.10.1.18 to-addresses=202.1.1.2 to-ports=3392-3539
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.18 protocol=icmp \
    src-address=192.10.1.18 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.19 protocol=tcp \
    src-address=192.10.1.19 to-addresses=202.1.1.3 to-ports=3540-3687
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.19 protocol=udp \
    src-address=192.10.1.19 to-addresses=202.1.1.3 to-ports=3540-3687
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.19 protocol=icmp \
    src-address=192.10.1.19 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.20 protocol=tcp \
    src-address=192.10.1.20 to-addresses=202.1.1.4 to-ports=3688-3835
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.20 protocol=udp \
    src-address=192.10.1.20 to-addresses=202.1.1.4 to-ports=3688-3835
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.20 protocol=icmp \
    src-address=192.10.1.20 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.21 protocol=tcp \
    src-address=192.10.1.21 to-addresses=202.1.1.5 to-ports=3836-3983
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.21 protocol=udp \
    src-address=192.10.1.21 to-addresses=202.1.1.5 to-ports=3836-3983
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.21 protocol=icmp \
    src-address=192.10.1.21 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.22 protocol=tcp \
    src-address=192.10.1.22 to-addresses=202.1.1.6 to-ports=3984-4131
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.22 protocol=udp \
    src-address=192.10.1.22 to-addresses=202.1.1.6 to-ports=3984-4131
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.22 protocol=icmp \
    src-address=192.10.1.22 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.23 protocol=tcp \
    src-address=192.10.1.23 to-addresses=202.1.1.7 to-ports=4132-4279
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.23 protocol=udp \
    src-address=192.10.1.23 to-addresses=202.1.1.7 to-ports=4132-4279
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.23 protocol=icmp \
    src-address=192.10.1.23 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.24 protocol=tcp \
    src-address=192.10.1.24 to-addresses=202.1.1.8 to-ports=4280-4427
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.24 protocol=udp \
    src-address=192.10.1.24 to-addresses=202.1.1.8 to-ports=4280-4427
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.24 protocol=icmp \
    src-address=192.10.1.24 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.25 protocol=tcp \
    src-address=192.10.1.25 to-addresses=202.1.1.9 to-ports=4428-4575
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.25 protocol=udp \
    src-address=192.10.1.25 to-addresses=202.1.1.9 to-ports=4428-4575
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.25 protocol=icmp \
    src-address=192.10.1.25 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.26 protocol=tcp \
    src-address=192.10.1.26 to-addresses=202.1.1.10 to-ports=4576-4723
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.26 protocol=udp \
    src-address=192.10.1.26 to-addresses=202.1.1.10 to-ports=4576-4723
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.26 protocol=icmp \
    src-address=192.10.1.26 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.27 protocol=tcp \
    src-address=192.10.1.27 to-addresses=202.1.1.11 to-ports=4724-4871
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.27 protocol=udp \
    src-address=192.10.1.27 to-addresses=202.1.1.11 to-ports=4724-4871
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.27 protocol=icmp \
    src-address=192.10.1.27 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.28 protocol=tcp \
    src-address=192.10.1.28 to-addresses=202.1.1.12 to-ports=4872-5019
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.28 protocol=udp \
    src-address=192.10.1.28 to-addresses=202.1.1.12 to-ports=4872-5019
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.28 protocol=icmp \
    src-address=192.10.1.28 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.29 protocol=tcp \
    src-address=192.10.1.29 to-addresses=202.1.1.13 to-ports=5020-5167
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.29 protocol=udp \
    src-address=192.10.1.29 to-addresses=202.1.1.13 to-ports=5020-5167
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.29 protocol=icmp \
    src-address=192.10.1.29 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.30 protocol=tcp \
    src-address=192.10.1.30 to-addresses=202.1.1.14 to-ports=5168-5315
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.30 protocol=udp \
    src-address=192.10.1.30 to-addresses=202.1.1.14 to-ports=5168-5315
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.30 protocol=icmp \
    src-address=192.10.1.30 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.31 protocol=tcp \
    src-address=192.10.1.31 to-addresses=202.1.1.15 to-ports=5316-5463
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.31 protocol=udp \
    src-address=192.10.1.31 to-addresses=202.1.1.15 to-ports=5316-5463
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.31 protocol=icmp \
    src-address=192.10.1.31 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.32 protocol=tcp \
    src-address=192.10.1.32 to-addresses=202.1.1.1 to-ports=5464-5611
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.32 protocol=udp \
    src-address=192.10.1.32 to-addresses=202.1.1.1 to-ports=5464-5611
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.32 protocol=icmp \
    src-address=192.10.1.32 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.33 protocol=tcp \
    src-address=192.10.1.33 to-addresses=202.1.1.2 to-ports=5612-5759
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.33 protocol=udp \
    src-address=192.10.1.33 to-addresses=202.1.1.2 to-ports=5612-5759
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.33 protocol=icmp \
    src-address=192.10.1.33 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.34 protocol=tcp \
    src-address=192.10.1.34 to-addresses=202.1.1.3 to-ports=5760-5907
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.34 protocol=udp \
    src-address=192.10.1.34 to-addresses=202.1.1.3 to-ports=5760-5907
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.34 protocol=icmp \
    src-address=192.10.1.34 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.35 protocol=tcp \
    src-address=192.10.1.35 to-addresses=202.1.1.4 to-ports=5908-6055
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.35 protocol=udp \
    src-address=192.10.1.35 to-addresses=202.1.1.4 to-ports=5908-6055
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.35 protocol=icmp \
    src-address=192.10.1.35 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.36 protocol=tcp \
    src-address=192.10.1.36 to-addresses=202.1.1.5 to-ports=6056-6203
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.36 protocol=udp \
    src-address=192.10.1.36 to-addresses=202.1.1.5 to-ports=6056-6203
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.36 protocol=icmp \
    src-address=192.10.1.36 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.37 protocol=tcp \
    src-address=192.10.1.37 to-addresses=202.1.1.6 to-ports=6204-6351
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.37 protocol=udp \
    src-address=192.10.1.37 to-addresses=202.1.1.6 to-ports=6204-6351
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.37 protocol=icmp \
    src-address=192.10.1.37 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.38 protocol=tcp \
    src-address=192.10.1.38 to-addresses=202.1.1.7 to-ports=6352-6499
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.38 protocol=udp \
    src-address=192.10.1.38 to-addresses=202.1.1.7 to-ports=6352-6499
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.38 protocol=icmp \
    src-address=192.10.1.38 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.39 protocol=tcp \
    src-address=192.10.1.39 to-addresses=202.1.1.8 to-ports=6500-6647
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.39 protocol=udp \
    src-address=192.10.1.39 to-addresses=202.1.1.8 to-ports=6500-6647
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.39 protocol=icmp \
    src-address=192.10.1.39 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.40 protocol=tcp \
    src-address=192.10.1.40 to-addresses=202.1.1.9 to-ports=6648-6795
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.40 protocol=udp \
    src-address=192.10.1.40 to-addresses=202.1.1.9 to-ports=6648-6795
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.40 protocol=icmp \
    src-address=192.10.1.40 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.41 protocol=tcp \
    src-address=192.10.1.41 to-addresses=202.1.1.10 to-ports=6796-6943
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.41 protocol=udp \
    src-address=192.10.1.41 to-addresses=202.1.1.10 to-ports=6796-6943
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.41 protocol=icmp \
    src-address=192.10.1.41 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.42 protocol=tcp \
    src-address=192.10.1.42 to-addresses=202.1.1.11 to-ports=6944-7091
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.42 protocol=udp \
    src-address=192.10.1.42 to-addresses=202.1.1.11 to-ports=6944-7091
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.42 protocol=icmp \
    src-address=192.10.1.42 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.43 protocol=tcp \
    src-address=192.10.1.43 to-addresses=202.1.1.12 to-ports=7092-7239
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.43 protocol=udp \
    src-address=192.10.1.43 to-addresses=202.1.1.12 to-ports=7092-7239
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.43 protocol=icmp \
    src-address=192.10.1.43 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.44 protocol=tcp \
    src-address=192.10.1.44 to-addresses=202.1.1.13 to-ports=7240-7387
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.44 protocol=udp \
    src-address=192.10.1.44 to-addresses=202.1.1.13 to-ports=7240-7387
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.44 protocol=icmp \
    src-address=192.10.1.44 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.45 protocol=tcp \
    src-address=192.10.1.45 to-addresses=202.1.1.14 to-ports=7388-7535
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.45 protocol=udp \
    src-address=192.10.1.45 to-addresses=202.1.1.14 to-ports=7388-7535
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.45 protocol=icmp \
    src-address=192.10.1.45 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.46 protocol=tcp \
    src-address=192.10.1.46 to-addresses=202.1.1.15 to-ports=7536-7683
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.46 protocol=udp \
    src-address=192.10.1.46 to-addresses=202.1.1.15 to-ports=7536-7683
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.46 protocol=icmp \
    src-address=192.10.1.46 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.47 protocol=tcp \
    src-address=192.10.1.47 to-addresses=202.1.1.1 to-ports=7684-7831
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.47 protocol=udp \
    src-address=192.10.1.47 to-addresses=202.1.1.1 to-ports=7684-7831
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.47 protocol=icmp \
    src-address=192.10.1.47 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.48 protocol=tcp \
    src-address=192.10.1.48 to-addresses=202.1.1.2 to-ports=7832-7979
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.48 protocol=udp \
    src-address=192.10.1.48 to-addresses=202.1.1.2 to-ports=7832-7979
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.48 protocol=icmp \
    src-address=192.10.1.48 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.49 protocol=tcp \
    src-address=192.10.1.49 to-addresses=202.1.1.3 to-ports=7980-8127
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.49 protocol=udp \
    src-address=192.10.1.49 to-addresses=202.1.1.3 to-ports=7980-8127
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.49 protocol=icmp \
    src-address=192.10.1.49 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.50 protocol=tcp \
    src-address=192.10.1.50 to-addresses=202.1.1.4 to-ports=8128-8275
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.50 protocol=udp \
    src-address=192.10.1.50 to-addresses=202.1.1.4 to-ports=8128-8275
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.50 protocol=icmp \
    src-address=192.10.1.50 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.51 protocol=tcp \
    src-address=192.10.1.51 to-addresses=202.1.1.5 to-ports=8276-8423
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.51 protocol=udp \
    src-address=192.10.1.51 to-addresses=202.1.1.5 to-ports=8276-8423
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.51 protocol=icmp \
    src-address=192.10.1.51 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.52 protocol=tcp \
    src-address=192.10.1.52 to-addresses=202.1.1.6 to-ports=8424-8571
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.52 protocol=udp \
    src-address=192.10.1.52 to-addresses=202.1.1.6 to-ports=8424-8571
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.52 protocol=icmp \
    src-address=192.10.1.52 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.53 protocol=tcp \
    src-address=192.10.1.53 to-addresses=202.1.1.7 to-ports=8572-8719
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.53 protocol=udp \
    src-address=192.10.1.53 to-addresses=202.1.1.7 to-ports=8572-8719
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.53 protocol=icmp \
    src-address=192.10.1.53 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.54 protocol=tcp \
    src-address=192.10.1.54 to-addresses=202.1.1.8 to-ports=8720-8867
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.54 protocol=udp \
    src-address=192.10.1.54 to-addresses=202.1.1.8 to-ports=8720-8867
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.54 protocol=icmp \
    src-address=192.10.1.54 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.55 protocol=tcp \
    src-address=192.10.1.55 to-addresses=202.1.1.9 to-ports=8868-9015
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.55 protocol=udp \
    src-address=192.10.1.55 to-addresses=202.1.1.9 to-ports=8868-9015
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.55 protocol=icmp \
    src-address=192.10.1.55 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.56 protocol=tcp \
    src-address=192.10.1.56 to-addresses=202.1.1.10 to-ports=9016-9163
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.56 protocol=udp \
    src-address=192.10.1.56 to-addresses=202.1.1.10 to-ports=9016-9163
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.56 protocol=icmp \
    src-address=192.10.1.56 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.57 protocol=tcp \
    src-address=192.10.1.57 to-addresses=202.1.1.11 to-ports=9164-9311
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.57 protocol=udp \
    src-address=192.10.1.57 to-addresses=202.1.1.11 to-ports=9164-9311
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.57 protocol=icmp \
    src-address=192.10.1.57 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.58 protocol=tcp \
    src-address=192.10.1.58 to-addresses=202.1.1.12 to-ports=9312-9459
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.58 protocol=udp \
    src-address=192.10.1.58 to-addresses=202.1.1.12 to-ports=9312-9459
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.58 protocol=icmp \
    src-address=192.10.1.58 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.59 protocol=tcp \
    src-address=192.10.1.59 to-addresses=202.1.1.13 to-ports=9460-9607
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.59 protocol=udp \
    src-address=192.10.1.59 to-addresses=202.1.1.13 to-ports=9460-9607
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.59 protocol=icmp \
    src-address=192.10.1.59 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.60 protocol=tcp \
    src-address=192.10.1.60 to-addresses=202.1.1.14 to-ports=9608-9755
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.60 protocol=udp \
    src-address=192.10.1.60 to-addresses=202.1.1.14 to-ports=9608-9755
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.60 protocol=icmp \
    src-address=192.10.1.60 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.61 protocol=tcp \
    src-address=192.10.1.61 to-addresses=202.1.1.15 to-ports=9756-9903
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.61 protocol=udp \
    src-address=192.10.1.61 to-addresses=202.1.1.15 to-ports=9756-9903
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.61 protocol=icmp \
    src-address=192.10.1.61 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.62 protocol=tcp \
    src-address=192.10.1.62 to-addresses=202.1.1.1 to-ports=9904-10051
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.62 protocol=udp \
    src-address=192.10.1.62 to-addresses=202.1.1.1 to-ports=9904-10051
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.62 protocol=icmp \
    src-address=192.10.1.62 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.63 protocol=tcp \
    src-address=192.10.1.63 to-addresses=202.1.1.2 to-ports=10052-10199
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.63 protocol=udp \
    src-address=192.10.1.63 to-addresses=202.1.1.2 to-ports=10052-10199
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.63 protocol=icmp \
    src-address=192.10.1.63 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.64 protocol=tcp \
    src-address=192.10.1.64 to-addresses=202.1.1.3 to-ports=10200-10347
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.64 protocol=udp \
    src-address=192.10.1.64 to-addresses=202.1.1.3 to-ports=10200-10347
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.64 protocol=icmp \
    src-address=192.10.1.64 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.65 protocol=tcp \
    src-address=192.10.1.65 to-addresses=202.1.1.4 to-ports=10348-10495
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.65 protocol=udp \
    src-address=192.10.1.65 to-addresses=202.1.1.4 to-ports=10348-10495
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.65 protocol=icmp \
    src-address=192.10.1.65 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.66 protocol=tcp \
    src-address=192.10.1.66 to-addresses=202.1.1.5 to-ports=10496-10643
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.66 protocol=udp \
    src-address=192.10.1.66 to-addresses=202.1.1.5 to-ports=10496-10643
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.66 protocol=icmp \
    src-address=192.10.1.66 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.67 protocol=tcp \
    src-address=192.10.1.67 to-addresses=202.1.1.6 to-ports=10644-10791
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.67 protocol=udp \
    src-address=192.10.1.67 to-addresses=202.1.1.6 to-ports=10644-10791
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.67 protocol=icmp \
    src-address=192.10.1.67 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.68 protocol=tcp \
    src-address=192.10.1.68 to-addresses=202.1.1.7 to-ports=10792-10939
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.68 protocol=udp \
    src-address=192.10.1.68 to-addresses=202.1.1.7 to-ports=10792-10939
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.68 protocol=icmp \
    src-address=192.10.1.68 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.69 protocol=tcp \
    src-address=192.10.1.69 to-addresses=202.1.1.8 to-ports=10940-11087
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.69 protocol=udp \
    src-address=192.10.1.69 to-addresses=202.1.1.8 to-ports=10940-11087
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.69 protocol=icmp \
    src-address=192.10.1.69 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.70 protocol=tcp \
    src-address=192.10.1.70 to-addresses=202.1.1.9 to-ports=11088-11235
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.70 protocol=udp \
    src-address=192.10.1.70 to-addresses=202.1.1.9 to-ports=11088-11235
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.70 protocol=icmp \
    src-address=192.10.1.70 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.71 protocol=tcp \
    src-address=192.10.1.71 to-addresses=202.1.1.10 to-ports=11236-11383
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.71 protocol=udp \
    src-address=192.10.1.71 to-addresses=202.1.1.10 to-ports=11236-11383
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.71 protocol=icmp \
    src-address=192.10.1.71 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.72 protocol=tcp \
    src-address=192.10.1.72 to-addresses=202.1.1.11 to-ports=11384-11531
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.72 protocol=udp \
    src-address=192.10.1.72 to-addresses=202.1.1.11 to-ports=11384-11531
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.72 protocol=icmp \
    src-address=192.10.1.72 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.73 protocol=tcp \
    src-address=192.10.1.73 to-addresses=202.1.1.12 to-ports=11532-11679
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.73 protocol=udp \
    src-address=192.10.1.73 to-addresses=202.1.1.12 to-ports=11532-11679
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.73 protocol=icmp \
    src-address=192.10.1.73 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.74 protocol=tcp \
    src-address=192.10.1.74 to-addresses=202.1.1.13 to-ports=11680-11827
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.74 protocol=udp \
    src-address=192.10.1.74 to-addresses=202.1.1.13 to-ports=11680-11827
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.74 protocol=icmp \
    src-address=192.10.1.74 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.75 protocol=tcp \
    src-address=192.10.1.75 to-addresses=202.1.1.14 to-ports=11828-11975
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.75 protocol=udp \
    src-address=192.10.1.75 to-addresses=202.1.1.14 to-ports=11828-11975
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.75 protocol=icmp \
    src-address=192.10.1.75 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.76 protocol=tcp \
    src-address=192.10.1.76 to-addresses=202.1.1.15 to-ports=11976-12123
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.76 protocol=udp \
    src-address=192.10.1.76 to-addresses=202.1.1.15 to-ports=11976-12123
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.76 protocol=icmp \
    src-address=192.10.1.76 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.77 protocol=tcp \
    src-address=192.10.1.77 to-addresses=202.1.1.1 to-ports=12124-12271
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.77 protocol=udp \
    src-address=192.10.1.77 to-addresses=202.1.1.1 to-ports=12124-12271
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.77 protocol=icmp \
    src-address=192.10.1.77 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.78 protocol=tcp \
    src-address=192.10.1.78 to-addresses=202.1.1.2 to-ports=12272-12419
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.78 protocol=udp \
    src-address=192.10.1.78 to-addresses=202.1.1.2 to-ports=12272-12419
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.78 protocol=icmp \
    src-address=192.10.1.78 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.79 protocol=tcp \
    src-address=192.10.1.79 to-addresses=202.1.1.3 to-ports=12420-12567
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.79 protocol=udp \
    src-address=192.10.1.79 to-addresses=202.1.1.3 to-ports=12420-12567
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.79 protocol=icmp \
    src-address=192.10.1.79 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.80 protocol=tcp \
    src-address=192.10.1.80 to-addresses=202.1.1.4 to-ports=12568-12715
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.80 protocol=udp \
    src-address=192.10.1.80 to-addresses=202.1.1.4 to-ports=12568-12715
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.80 protocol=icmp \
    src-address=192.10.1.80 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.81 protocol=tcp \
    src-address=192.10.1.81 to-addresses=202.1.1.5 to-ports=12716-12863
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.81 protocol=udp \
    src-address=192.10.1.81 to-addresses=202.1.1.5 to-ports=12716-12863
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.81 protocol=icmp \
    src-address=192.10.1.81 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.82 protocol=tcp \
    src-address=192.10.1.82 to-addresses=202.1.1.6 to-ports=12864-13011
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.82 protocol=udp \
    src-address=192.10.1.82 to-addresses=202.1.1.6 to-ports=12864-13011
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.82 protocol=icmp \
    src-address=192.10.1.82 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.83 protocol=tcp \
    src-address=192.10.1.83 to-addresses=202.1.1.7 to-ports=13012-13159
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.83 protocol=udp \
    src-address=192.10.1.83 to-addresses=202.1.1.7 to-ports=13012-13159
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.83 protocol=icmp \
    src-address=192.10.1.83 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.84 protocol=tcp \
    src-address=192.10.1.84 to-addresses=202.1.1.8 to-ports=13160-13307
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.84 protocol=udp \
    src-address=192.10.1.84 to-addresses=202.1.1.8 to-ports=13160-13307
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.84 protocol=icmp \
    src-address=192.10.1.84 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.85 protocol=tcp \
    src-address=192.10.1.85 to-addresses=202.1.1.9 to-ports=13308-13455
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.85 protocol=udp \
    src-address=192.10.1.85 to-addresses=202.1.1.9 to-ports=13308-13455
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.85 protocol=icmp \
    src-address=192.10.1.85 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.86 protocol=tcp \
    src-address=192.10.1.86 to-addresses=202.1.1.10 to-ports=13456-13603
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.86 protocol=udp \
    src-address=192.10.1.86 to-addresses=202.1.1.10 to-ports=13456-13603
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.86 protocol=icmp \
    src-address=192.10.1.86 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.87 protocol=tcp \
    src-address=192.10.1.87 to-addresses=202.1.1.11 to-ports=13604-13751
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.87 protocol=udp \
    src-address=192.10.1.87 to-addresses=202.1.1.11 to-ports=13604-13751
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.87 protocol=icmp \
    src-address=192.10.1.87 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.88 protocol=tcp \
    src-address=192.10.1.88 to-addresses=202.1.1.12 to-ports=13752-13899
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.88 protocol=udp \
    src-address=192.10.1.88 to-addresses=202.1.1.12 to-ports=13752-13899
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.88 protocol=icmp \
    src-address=192.10.1.88 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.89 protocol=tcp \
    src-address=192.10.1.89 to-addresses=202.1.1.13 to-ports=13900-14047
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.89 protocol=udp \
    src-address=192.10.1.89 to-addresses=202.1.1.13 to-ports=13900-14047
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.89 protocol=icmp \
    src-address=192.10.1.89 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.90 protocol=tcp \
    src-address=192.10.1.90 to-addresses=202.1.1.14 to-ports=14048-14195
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.90 protocol=udp \
    src-address=192.10.1.90 to-addresses=202.1.1.14 to-ports=14048-14195
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.90 protocol=icmp \
    src-address=192.10.1.90 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.91 protocol=tcp \
    src-address=192.10.1.91 to-addresses=202.1.1.15 to-ports=14196-14343
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.91 protocol=udp \
    src-address=192.10.1.91 to-addresses=202.1.1.15 to-ports=14196-14343
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.91 protocol=icmp \
    src-address=192.10.1.91 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.92 protocol=tcp \
    src-address=192.10.1.92 to-addresses=202.1.1.1 to-ports=14344-14491
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.92 protocol=udp \
    src-address=192.10.1.92 to-addresses=202.1.1.1 to-ports=14344-14491
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.92 protocol=icmp \
    src-address=192.10.1.92 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.93 protocol=tcp \
    src-address=192.10.1.93 to-addresses=202.1.1.2 to-ports=14492-14639
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.93 protocol=udp \
    src-address=192.10.1.93 to-addresses=202.1.1.2 to-ports=14492-14639
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.93 protocol=icmp \
    src-address=192.10.1.93 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.94 protocol=tcp \
    src-address=192.10.1.94 to-addresses=202.1.1.3 to-ports=14640-14787
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.94 protocol=udp \
    src-address=192.10.1.94 to-addresses=202.1.1.3 to-ports=14640-14787
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.94 protocol=icmp \
    src-address=192.10.1.94 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.95 protocol=tcp \
    src-address=192.10.1.95 to-addresses=202.1.1.4 to-ports=14788-14935
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.95 protocol=udp \
    src-address=192.10.1.95 to-addresses=202.1.1.4 to-ports=14788-14935
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.95 protocol=icmp \
    src-address=192.10.1.95 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.96 protocol=tcp \
    src-address=192.10.1.96 to-addresses=202.1.1.5 to-ports=14936-15083
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.96 protocol=udp \
    src-address=192.10.1.96 to-addresses=202.1.1.5 to-ports=14936-15083
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.96 protocol=icmp \
    src-address=192.10.1.96 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.97 protocol=tcp \
    src-address=192.10.1.97 to-addresses=202.1.1.6 to-ports=15084-15231
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.97 protocol=udp \
    src-address=192.10.1.97 to-addresses=202.1.1.6 to-ports=15084-15231
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.97 protocol=icmp \
    src-address=192.10.1.97 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.98 protocol=tcp \
    src-address=192.10.1.98 to-addresses=202.1.1.7 to-ports=15232-15379
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.98 protocol=udp \
    src-address=192.10.1.98 to-addresses=202.1.1.7 to-ports=15232-15379
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.98 protocol=icmp \
    src-address=192.10.1.98 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.99 protocol=tcp \
    src-address=192.10.1.99 to-addresses=202.1.1.8 to-ports=15380-15527
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.99 protocol=udp \
    src-address=192.10.1.99 to-addresses=202.1.1.8 to-ports=15380-15527
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.99 protocol=icmp \
    src-address=192.10.1.99 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.100 protocol=tcp \
    src-address=192.10.1.100 to-addresses=202.1.1.9 to-ports=15528-15675
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.100 protocol=udp \
    src-address=192.10.1.100 to-addresses=202.1.1.9 to-ports=15528-15675
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.100 protocol=\
    icmp src-address=192.10.1.100 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.101 protocol=tcp \
    src-address=192.10.1.101 to-addresses=202.1.1.10 to-ports=15676-15823
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.101 protocol=udp \
    src-address=192.10.1.101 to-addresses=202.1.1.10 to-ports=15676-15823
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.101 protocol=\
    icmp src-address=192.10.1.101 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.102 protocol=tcp \
    src-address=192.10.1.102 to-addresses=202.1.1.11 to-ports=15824-15971
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.102 protocol=udp \
    src-address=192.10.1.102 to-addresses=202.1.1.11 to-ports=15824-15971
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.102 protocol=\
    icmp src-address=192.10.1.102 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.103 protocol=tcp \
    src-address=192.10.1.103 to-addresses=202.1.1.12 to-ports=15972-16119
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.103 protocol=udp \
    src-address=192.10.1.103 to-addresses=202.1.1.12 to-ports=15972-16119
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.103 protocol=\
    icmp src-address=192.10.1.103 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.104 protocol=tcp \
    src-address=192.10.1.104 to-addresses=202.1.1.13 to-ports=16120-16267
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.104 protocol=udp \
    src-address=192.10.1.104 to-addresses=202.1.1.13 to-ports=16120-16267
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.104 protocol=\
    icmp src-address=192.10.1.104 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.105 protocol=tcp \
    src-address=192.10.1.105 to-addresses=202.1.1.14 to-ports=16268-16415
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.105 protocol=udp \
    src-address=192.10.1.105 to-addresses=202.1.1.14 to-ports=16268-16415
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.105 protocol=\
    icmp src-address=192.10.1.105 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.106 protocol=tcp \
    src-address=192.10.1.106 to-addresses=202.1.1.15 to-ports=16416-16563
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.106 protocol=udp \
    src-address=192.10.1.106 to-addresses=202.1.1.15 to-ports=16416-16563
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.106 protocol=\
    icmp src-address=192.10.1.106 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.107 protocol=tcp \
    src-address=192.10.1.107 to-addresses=202.1.1.1 to-ports=16564-16711
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.107 protocol=udp \
    src-address=192.10.1.107 to-addresses=202.1.1.1 to-ports=16564-16711
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.107 protocol=\
    icmp src-address=192.10.1.107 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.108 protocol=tcp \
    src-address=192.10.1.108 to-addresses=202.1.1.2 to-ports=16712-16859
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.108 protocol=udp \
    src-address=192.10.1.108 to-addresses=202.1.1.2 to-ports=16712-16859
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.108 protocol=\
    icmp src-address=192.10.1.108 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.109 protocol=tcp \
    src-address=192.10.1.109 to-addresses=202.1.1.3 to-ports=16860-17007
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.109 protocol=udp \
    src-address=192.10.1.109 to-addresses=202.1.1.3 to-ports=16860-17007
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.109 protocol=\
    icmp src-address=192.10.1.109 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.110 protocol=tcp \
    src-address=192.10.1.110 to-addresses=202.1.1.4 to-ports=17008-17155
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.110 protocol=udp \
    src-address=192.10.1.110 to-addresses=202.1.1.4 to-ports=17008-17155
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.110 protocol=\
    icmp src-address=192.10.1.110 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.111 protocol=tcp \
    src-address=192.10.1.111 to-addresses=202.1.1.5 to-ports=17156-17303
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.111 protocol=udp \
    src-address=192.10.1.111 to-addresses=202.1.1.5 to-ports=17156-17303
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.111 protocol=\
    icmp src-address=192.10.1.111 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.112 protocol=tcp \
    src-address=192.10.1.112 to-addresses=202.1.1.6 to-ports=17304-17451
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.112 protocol=udp \
    src-address=192.10.1.112 to-addresses=202.1.1.6 to-ports=17304-17451
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.112 protocol=\
    icmp src-address=192.10.1.112 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.113 protocol=tcp \
    src-address=192.10.1.113 to-addresses=202.1.1.7 to-ports=17452-17599
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.113 protocol=udp \
    src-address=192.10.1.113 to-addresses=202.1.1.7 to-ports=17452-17599
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.113 protocol=\
    icmp src-address=192.10.1.113 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.114 protocol=tcp \
    src-address=192.10.1.114 to-addresses=202.1.1.8 to-ports=17600-17747
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.114 protocol=udp \
    src-address=192.10.1.114 to-addresses=202.1.1.8 to-ports=17600-17747
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.114 protocol=\
    icmp src-address=192.10.1.114 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.115 protocol=tcp \
    src-address=192.10.1.115 to-addresses=202.1.1.9 to-ports=17748-17895
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.115 protocol=udp \
    src-address=192.10.1.115 to-addresses=202.1.1.9 to-ports=17748-17895
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.115 protocol=\
    icmp src-address=192.10.1.115 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.116 protocol=tcp \
    src-address=192.10.1.116 to-addresses=202.1.1.10 to-ports=17896-18043
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.116 protocol=udp \
    src-address=192.10.1.116 to-addresses=202.1.1.10 to-ports=17896-18043
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.116 protocol=\
    icmp src-address=192.10.1.116 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.117 protocol=tcp \
    src-address=192.10.1.117 to-addresses=202.1.1.11 to-ports=18044-18191
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.117 protocol=udp \
    src-address=192.10.1.117 to-addresses=202.1.1.11 to-ports=18044-18191
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.117 protocol=\
    icmp src-address=192.10.1.117 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.118 protocol=tcp \
    src-address=192.10.1.118 to-addresses=202.1.1.12 to-ports=18192-18339
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.118 protocol=udp \
    src-address=192.10.1.118 to-addresses=202.1.1.12 to-ports=18192-18339
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.118 protocol=\
    icmp src-address=192.10.1.118 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.119 protocol=tcp \
    src-address=192.10.1.119 to-addresses=202.1.1.13 to-ports=18340-18487
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.119 protocol=udp \
    src-address=192.10.1.119 to-addresses=202.1.1.13 to-ports=18340-18487
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.119 protocol=\
    icmp src-address=192.10.1.119 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.120 protocol=tcp \
    src-address=192.10.1.120 to-addresses=202.1.1.14 to-ports=18488-18635
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.120 protocol=udp \
    src-address=192.10.1.120 to-addresses=202.1.1.14 to-ports=18488-18635
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.120 protocol=\
    icmp src-address=192.10.1.120 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.121 protocol=tcp \
    src-address=192.10.1.121 to-addresses=202.1.1.15 to-ports=18636-18783
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.121 protocol=udp \
    src-address=192.10.1.121 to-addresses=202.1.1.15 to-ports=18636-18783
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.121 protocol=\
    icmp src-address=192.10.1.121 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.122 protocol=tcp \
    src-address=192.10.1.122 to-addresses=202.1.1.1 to-ports=18784-18931
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.122 protocol=udp \
    src-address=192.10.1.122 to-addresses=202.1.1.1 to-ports=18784-18931
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.122 protocol=\
    icmp src-address=192.10.1.122 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.123 protocol=tcp \
    src-address=192.10.1.123 to-addresses=202.1.1.2 to-ports=18932-19079
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.123 protocol=udp \
    src-address=192.10.1.123 to-addresses=202.1.1.2 to-ports=18932-19079
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.123 protocol=\
    icmp src-address=192.10.1.123 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.124 protocol=tcp \
    src-address=192.10.1.124 to-addresses=202.1.1.3 to-ports=19080-19227
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.124 protocol=udp \
    src-address=192.10.1.124 to-addresses=202.1.1.3 to-ports=19080-19227
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.124 protocol=\
    icmp src-address=192.10.1.124 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.125 protocol=tcp \
    src-address=192.10.1.125 to-addresses=202.1.1.4 to-ports=19228-19375
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.125 protocol=udp \
    src-address=192.10.1.125 to-addresses=202.1.1.4 to-ports=19228-19375
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.125 protocol=\
    icmp src-address=192.10.1.125 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.126 protocol=tcp \
    src-address=192.10.1.126 to-addresses=202.1.1.5 to-ports=19376-19523
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.126 protocol=udp \
    src-address=192.10.1.126 to-addresses=202.1.1.5 to-ports=19376-19523
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.126 protocol=\
    icmp src-address=192.10.1.126 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.127 protocol=tcp \
    src-address=192.10.1.127 to-addresses=202.1.1.6 to-ports=19524-19671
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.127 protocol=udp \
    src-address=192.10.1.127 to-addresses=202.1.1.6 to-ports=19524-19671
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.127 protocol=\
    icmp src-address=192.10.1.127 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.128 protocol=tcp \
    src-address=192.10.1.128 to-addresses=202.1.1.7 to-ports=19672-19819
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.128 protocol=udp \
    src-address=192.10.1.128 to-addresses=202.1.1.7 to-ports=19672-19819
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.128 protocol=\
    icmp src-address=192.10.1.128 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.129 protocol=tcp \
    src-address=192.10.1.129 to-addresses=202.1.1.8 to-ports=19820-19967
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.129 protocol=udp \
    src-address=192.10.1.129 to-addresses=202.1.1.8 to-ports=19820-19967
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.129 protocol=\
    icmp src-address=192.10.1.129 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.130 protocol=tcp \
    src-address=192.10.1.130 to-addresses=202.1.1.9 to-ports=19968-20115
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.130 protocol=udp \
    src-address=192.10.1.130 to-addresses=202.1.1.9 to-ports=19968-20115
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.130 protocol=\
    icmp src-address=192.10.1.130 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.131 protocol=tcp \
    src-address=192.10.1.131 to-addresses=202.1.1.10 to-ports=20116-20263
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.131 protocol=udp \
    src-address=192.10.1.131 to-addresses=202.1.1.10 to-ports=20116-20263
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.131 protocol=\
    icmp src-address=192.10.1.131 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.132 protocol=tcp \
    src-address=192.10.1.132 to-addresses=202.1.1.11 to-ports=20264-20411
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.132 protocol=udp \
    src-address=192.10.1.132 to-addresses=202.1.1.11 to-ports=20264-20411
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.132 protocol=\
    icmp src-address=192.10.1.132 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.133 protocol=tcp \
    src-address=192.10.1.133 to-addresses=202.1.1.12 to-ports=20412-20559
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.133 protocol=udp \
    src-address=192.10.1.133 to-addresses=202.1.1.12 to-ports=20412-20559
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.133 protocol=\
    icmp src-address=192.10.1.133 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.134 protocol=tcp \
    src-address=192.10.1.134 to-addresses=202.1.1.13 to-ports=20560-20707
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.134 protocol=udp \
    src-address=192.10.1.134 to-addresses=202.1.1.13 to-ports=20560-20707
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.134 protocol=\
    icmp src-address=192.10.1.134 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.135 protocol=tcp \
    src-address=192.10.1.135 to-addresses=202.1.1.14 to-ports=20708-20855
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.135 protocol=udp \
    src-address=192.10.1.135 to-addresses=202.1.1.14 to-ports=20708-20855
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.135 protocol=\
    icmp src-address=192.10.1.135 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.136 protocol=tcp \
    src-address=192.10.1.136 to-addresses=202.1.1.15 to-ports=20856-21003
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.136 protocol=udp \
    src-address=192.10.1.136 to-addresses=202.1.1.15 to-ports=20856-21003
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.136 protocol=\
    icmp src-address=192.10.1.136 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.137 protocol=tcp \
    src-address=192.10.1.137 to-addresses=202.1.1.1 to-ports=21004-21151
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.137 protocol=udp \
    src-address=192.10.1.137 to-addresses=202.1.1.1 to-ports=21004-21151
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.137 protocol=\
    icmp src-address=192.10.1.137 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.138 protocol=tcp \
    src-address=192.10.1.138 to-addresses=202.1.1.2 to-ports=21152-21299
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.138 protocol=udp \
    src-address=192.10.1.138 to-addresses=202.1.1.2 to-ports=21152-21299
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.138 protocol=\
    icmp src-address=192.10.1.138 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.139 protocol=tcp \
    src-address=192.10.1.139 to-addresses=202.1.1.3 to-ports=21300-21447
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.139 protocol=udp \
    src-address=192.10.1.139 to-addresses=202.1.1.3 to-ports=21300-21447
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.139 protocol=\
    icmp src-address=192.10.1.139 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.140 protocol=tcp \
    src-address=192.10.1.140 to-addresses=202.1.1.4 to-ports=21448-21595
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.140 protocol=udp \
    src-address=192.10.1.140 to-addresses=202.1.1.4 to-ports=21448-21595
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.140 protocol=\
    icmp src-address=192.10.1.140 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.141 protocol=tcp \
    src-address=192.10.1.141 to-addresses=202.1.1.5 to-ports=21596-21743
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.141 protocol=udp \
    src-address=192.10.1.141 to-addresses=202.1.1.5 to-ports=21596-21743
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.141 protocol=\
    icmp src-address=192.10.1.141 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.142 protocol=tcp \
    src-address=192.10.1.142 to-addresses=202.1.1.6 to-ports=21744-21891
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.142 protocol=udp \
    src-address=192.10.1.142 to-addresses=202.1.1.6 to-ports=21744-21891
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.142 protocol=\
    icmp src-address=192.10.1.142 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.143 protocol=tcp \
    src-address=192.10.1.143 to-addresses=202.1.1.7 to-ports=21892-22039
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.143 protocol=udp \
    src-address=192.10.1.143 to-addresses=202.1.1.7 to-ports=21892-22039
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.143 protocol=\
    icmp src-address=192.10.1.143 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.144 protocol=tcp \
    src-address=192.10.1.144 to-addresses=202.1.1.8 to-ports=22040-22187
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.144 protocol=udp \
    src-address=192.10.1.144 to-addresses=202.1.1.8 to-ports=22040-22187
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.144 protocol=\
    icmp src-address=192.10.1.144 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.145 protocol=tcp \
    src-address=192.10.1.145 to-addresses=202.1.1.9 to-ports=22188-22335
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.145 protocol=udp \
    src-address=192.10.1.145 to-addresses=202.1.1.9 to-ports=22188-22335
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.145 protocol=\
    icmp src-address=192.10.1.145 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.146 protocol=tcp \
    src-address=192.10.1.146 to-addresses=202.1.1.10 to-ports=22336-22483
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.146 protocol=udp \
    src-address=192.10.1.146 to-addresses=202.1.1.10 to-ports=22336-22483
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.146 protocol=\
    icmp src-address=192.10.1.146 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.147 protocol=tcp \
    src-address=192.10.1.147 to-addresses=202.1.1.11 to-ports=22484-22631
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.147 protocol=udp \
    src-address=192.10.1.147 to-addresses=202.1.1.11 to-ports=22484-22631
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.147 protocol=\
    icmp src-address=192.10.1.147 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.148 protocol=tcp \
    src-address=192.10.1.148 to-addresses=202.1.1.12 to-ports=22632-22779
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.148 protocol=udp \
    src-address=192.10.1.148 to-addresses=202.1.1.12 to-ports=22632-22779
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.148 protocol=\
    icmp src-address=192.10.1.148 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.149 protocol=tcp \
    src-address=192.10.1.149 to-addresses=202.1.1.13 to-ports=22780-22927
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.149 protocol=udp \
    src-address=192.10.1.149 to-addresses=202.1.1.13 to-ports=22780-22927
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.149 protocol=\
    icmp src-address=192.10.1.149 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.150 protocol=tcp \
    src-address=192.10.1.150 to-addresses=202.1.1.14 to-ports=22928-23075
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.150 protocol=udp \
    src-address=192.10.1.150 to-addresses=202.1.1.14 to-ports=22928-23075
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.150 protocol=\
    icmp src-address=192.10.1.150 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.151 protocol=tcp \
    src-address=192.10.1.151 to-addresses=202.1.1.15 to-ports=23076-23223
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.151 protocol=udp \
    src-address=192.10.1.151 to-addresses=202.1.1.15 to-ports=23076-23223
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.151 protocol=\
    icmp src-address=192.10.1.151 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.152 protocol=tcp \
    src-address=192.10.1.152 to-addresses=202.1.1.1 to-ports=23224-23371
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.152 protocol=udp \
    src-address=192.10.1.152 to-addresses=202.1.1.1 to-ports=23224-23371
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.152 protocol=\
    icmp src-address=192.10.1.152 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.153 protocol=tcp \
    src-address=192.10.1.153 to-addresses=202.1.1.2 to-ports=23372-23519
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.153 protocol=udp \
    src-address=192.10.1.153 to-addresses=202.1.1.2 to-ports=23372-23519
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.153 protocol=\
    icmp src-address=192.10.1.153 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.154 protocol=tcp \
    src-address=192.10.1.154 to-addresses=202.1.1.3 to-ports=23520-23667
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.154 protocol=udp \
    src-address=192.10.1.154 to-addresses=202.1.1.3 to-ports=23520-23667
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.154 protocol=\
    icmp src-address=192.10.1.154 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.155 protocol=tcp \
    src-address=192.10.1.155 to-addresses=202.1.1.4 to-ports=23668-23815
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.155 protocol=udp \
    src-address=192.10.1.155 to-addresses=202.1.1.4 to-ports=23668-23815
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.155 protocol=\
    icmp src-address=192.10.1.155 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.156 protocol=tcp \
    src-address=192.10.1.156 to-addresses=202.1.1.5 to-ports=23816-23963
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.156 protocol=udp \
    src-address=192.10.1.156 to-addresses=202.1.1.5 to-ports=23816-23963
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.156 protocol=\
    icmp src-address=192.10.1.156 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.157 protocol=tcp \
    src-address=192.10.1.157 to-addresses=202.1.1.6 to-ports=23964-24111
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.157 protocol=udp \
    src-address=192.10.1.157 to-addresses=202.1.1.6 to-ports=23964-24111
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.157 protocol=\
    icmp src-address=192.10.1.157 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.158 protocol=tcp \
    src-address=192.10.1.158 to-addresses=202.1.1.7 to-ports=24112-24259
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.158 protocol=udp \
    src-address=192.10.1.158 to-addresses=202.1.1.7 to-ports=24112-24259
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.158 protocol=\
    icmp src-address=192.10.1.158 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.159 protocol=tcp \
    src-address=192.10.1.159 to-addresses=202.1.1.8 to-ports=24260-24407
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.159 protocol=udp \
    src-address=192.10.1.159 to-addresses=202.1.1.8 to-ports=24260-24407
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.159 protocol=\
    icmp src-address=192.10.1.159 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.160 protocol=tcp \
    src-address=192.10.1.160 to-addresses=202.1.1.9 to-ports=24408-24555
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.160 protocol=udp \
    src-address=192.10.1.160 to-addresses=202.1.1.9 to-ports=24408-24555
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.160 protocol=\
    icmp src-address=192.10.1.160 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.161 protocol=tcp \
    src-address=192.10.1.161 to-addresses=202.1.1.10 to-ports=24556-24703
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.161 protocol=udp \
    src-address=192.10.1.161 to-addresses=202.1.1.10 to-ports=24556-24703
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.161 protocol=\
    icmp src-address=192.10.1.161 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.162 protocol=tcp \
    src-address=192.10.1.162 to-addresses=202.1.1.11 to-ports=24704-24851
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.162 protocol=udp \
    src-address=192.10.1.162 to-addresses=202.1.1.11 to-ports=24704-24851
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.162 protocol=\
    icmp src-address=192.10.1.162 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.163 protocol=tcp \
    src-address=192.10.1.163 to-addresses=202.1.1.12 to-ports=24852-24999
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.163 protocol=udp \
    src-address=192.10.1.163 to-addresses=202.1.1.12 to-ports=24852-24999
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.163 protocol=\
    icmp src-address=192.10.1.163 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.164 protocol=tcp \
    src-address=192.10.1.164 to-addresses=202.1.1.13 to-ports=25000-25147
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.164 protocol=udp \
    src-address=192.10.1.164 to-addresses=202.1.1.13 to-ports=25000-25147
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.164 protocol=\
    icmp src-address=192.10.1.164 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.165 protocol=tcp \
    src-address=192.10.1.165 to-addresses=202.1.1.14 to-ports=25148-25295
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.165 protocol=udp \
    src-address=192.10.1.165 to-addresses=202.1.1.14 to-ports=25148-25295
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.165 protocol=\
    icmp src-address=192.10.1.165 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.166 protocol=tcp \
    src-address=192.10.1.166 to-addresses=202.1.1.15 to-ports=25296-25443
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.166 protocol=udp \
    src-address=192.10.1.166 to-addresses=202.1.1.15 to-ports=25296-25443
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.166 protocol=\
    icmp src-address=192.10.1.166 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.167 protocol=tcp \
    src-address=192.10.1.167 to-addresses=202.1.1.1 to-ports=25444-25591
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.167 protocol=udp \
    src-address=192.10.1.167 to-addresses=202.1.1.1 to-ports=25444-25591
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.167 protocol=\
    icmp src-address=192.10.1.167 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.168 protocol=tcp \
    src-address=192.10.1.168 to-addresses=202.1.1.2 to-ports=25592-25739
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.168 protocol=udp \
    src-address=192.10.1.168 to-addresses=202.1.1.2 to-ports=25592-25739
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.168 protocol=\
    icmp src-address=192.10.1.168 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.169 protocol=tcp \
    src-address=192.10.1.169 to-addresses=202.1.1.3 to-ports=25740-25887
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.169 protocol=udp \
    src-address=192.10.1.169 to-addresses=202.1.1.3 to-ports=25740-25887
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.169 protocol=\
    icmp src-address=192.10.1.169 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.170 protocol=tcp \
    src-address=192.10.1.170 to-addresses=202.1.1.4 to-ports=25888-26035
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.170 protocol=udp \
    src-address=192.10.1.170 to-addresses=202.1.1.4 to-ports=25888-26035
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.170 protocol=\
    icmp src-address=192.10.1.170 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.171 protocol=tcp \
    src-address=192.10.1.171 to-addresses=202.1.1.5 to-ports=26036-26183
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.171 protocol=udp \
    src-address=192.10.1.171 to-addresses=202.1.1.5 to-ports=26036-26183
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.171 protocol=\
    icmp src-address=192.10.1.171 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.172 protocol=tcp \
    src-address=192.10.1.172 to-addresses=202.1.1.6 to-ports=26184-26331
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.172 protocol=udp \
    src-address=192.10.1.172 to-addresses=202.1.1.6 to-ports=26184-26331
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.172 protocol=\
    icmp src-address=192.10.1.172 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.173 protocol=tcp \
    src-address=192.10.1.173 to-addresses=202.1.1.7 to-ports=26332-26479
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.173 protocol=udp \
    src-address=192.10.1.173 to-addresses=202.1.1.7 to-ports=26332-26479
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.173 protocol=\
    icmp src-address=192.10.1.173 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.174 protocol=tcp \
    src-address=192.10.1.174 to-addresses=202.1.1.8 to-ports=26480-26627
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.174 protocol=udp \
    src-address=192.10.1.174 to-addresses=202.1.1.8 to-ports=26480-26627
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.174 protocol=\
    icmp src-address=192.10.1.174 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.175 protocol=tcp \
    src-address=192.10.1.175 to-addresses=202.1.1.9 to-ports=26628-26775
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.175 protocol=udp \
    src-address=192.10.1.175 to-addresses=202.1.1.9 to-ports=26628-26775
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.175 protocol=\
    icmp src-address=192.10.1.175 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.176 protocol=tcp \
    src-address=192.10.1.176 to-addresses=202.1.1.10 to-ports=26776-26923
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.176 protocol=udp \
    src-address=192.10.1.176 to-addresses=202.1.1.10 to-ports=26776-26923
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.176 protocol=\
    icmp src-address=192.10.1.176 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.177 protocol=tcp \
    src-address=192.10.1.177 to-addresses=202.1.1.11 to-ports=26924-27071
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.177 protocol=udp \
    src-address=192.10.1.177 to-addresses=202.1.1.11 to-ports=26924-27071
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.177 protocol=\
    icmp src-address=192.10.1.177 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.178 protocol=tcp \
    src-address=192.10.1.178 to-addresses=202.1.1.12 to-ports=27072-27219
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.178 protocol=udp \
    src-address=192.10.1.178 to-addresses=202.1.1.12 to-ports=27072-27219
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.178 protocol=\
    icmp src-address=192.10.1.178 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.179 protocol=tcp \
    src-address=192.10.1.179 to-addresses=202.1.1.13 to-ports=27220-27367
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.179 protocol=udp \
    src-address=192.10.1.179 to-addresses=202.1.1.13 to-ports=27220-27367
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.179 protocol=\
    icmp src-address=192.10.1.179 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.180 protocol=tcp \
    src-address=192.10.1.180 to-addresses=202.1.1.14 to-ports=27368-27515
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.180 protocol=udp \
    src-address=192.10.1.180 to-addresses=202.1.1.14 to-ports=27368-27515
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.180 protocol=\
    icmp src-address=192.10.1.180 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.181 protocol=tcp \
    src-address=192.10.1.181 to-addresses=202.1.1.15 to-ports=27516-27663
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.181 protocol=udp \
    src-address=192.10.1.181 to-addresses=202.1.1.15 to-ports=27516-27663
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.181 protocol=\
    icmp src-address=192.10.1.181 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.182 protocol=tcp \
    src-address=192.10.1.182 to-addresses=202.1.1.1 to-ports=27664-27811
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.182 protocol=udp \
    src-address=192.10.1.182 to-addresses=202.1.1.1 to-ports=27664-27811
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.182 protocol=\
    icmp src-address=192.10.1.182 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.183 protocol=tcp \
    src-address=192.10.1.183 to-addresses=202.1.1.2 to-ports=27812-27959
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.183 protocol=udp \
    src-address=192.10.1.183 to-addresses=202.1.1.2 to-ports=27812-27959
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.183 protocol=\
    icmp src-address=192.10.1.183 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.184 protocol=tcp \
    src-address=192.10.1.184 to-addresses=202.1.1.3 to-ports=27960-28107
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.184 protocol=udp \
    src-address=192.10.1.184 to-addresses=202.1.1.3 to-ports=27960-28107
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.184 protocol=\
    icmp src-address=192.10.1.184 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.185 protocol=tcp \
    src-address=192.10.1.185 to-addresses=202.1.1.4 to-ports=28108-28255
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.185 protocol=udp \
    src-address=192.10.1.185 to-addresses=202.1.1.4 to-ports=28108-28255
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.185 protocol=\
    icmp src-address=192.10.1.185 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.186 protocol=tcp \
    src-address=192.10.1.186 to-addresses=202.1.1.5 to-ports=28256-28403
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.186 protocol=udp \
    src-address=192.10.1.186 to-addresses=202.1.1.5 to-ports=28256-28403
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.186 protocol=\
    icmp src-address=192.10.1.186 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.187 protocol=tcp \
    src-address=192.10.1.187 to-addresses=202.1.1.6 to-ports=28404-28551
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.187 protocol=udp \
    src-address=192.10.1.187 to-addresses=202.1.1.6 to-ports=28404-28551
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.187 protocol=\
    icmp src-address=192.10.1.187 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.188 protocol=tcp \
    src-address=192.10.1.188 to-addresses=202.1.1.7 to-ports=28552-28699
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.188 protocol=udp \
    src-address=192.10.1.188 to-addresses=202.1.1.7 to-ports=28552-28699
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.188 protocol=\
    icmp src-address=192.10.1.188 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.189 protocol=tcp \
    src-address=192.10.1.189 to-addresses=202.1.1.8 to-ports=28700-28847
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.189 protocol=udp \
    src-address=192.10.1.189 to-addresses=202.1.1.8 to-ports=28700-28847
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.189 protocol=\
    icmp src-address=192.10.1.189 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.190 protocol=tcp \
    src-address=192.10.1.190 to-addresses=202.1.1.9 to-ports=28848-28995
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.190 protocol=udp \
    src-address=192.10.1.190 to-addresses=202.1.1.9 to-ports=28848-28995
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.190 protocol=\
    icmp src-address=192.10.1.190 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.191 protocol=tcp \
    src-address=192.10.1.191 to-addresses=202.1.1.10 to-ports=28996-29143
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.191 protocol=udp \
    src-address=192.10.1.191 to-addresses=202.1.1.10 to-ports=28996-29143
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.191 protocol=\
    icmp src-address=192.10.1.191 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.192 protocol=tcp \
    src-address=192.10.1.192 to-addresses=202.1.1.11 to-ports=29144-29291
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.192 protocol=udp \
    src-address=192.10.1.192 to-addresses=202.1.1.11 to-ports=29144-29291
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.192 protocol=\
    icmp src-address=192.10.1.192 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.193 protocol=tcp \
    src-address=192.10.1.193 to-addresses=202.1.1.12 to-ports=29292-29439
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.193 protocol=udp \
    src-address=192.10.1.193 to-addresses=202.1.1.12 to-ports=29292-29439
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.193 protocol=\
    icmp src-address=192.10.1.193 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.194 protocol=tcp \
    src-address=192.10.1.194 to-addresses=202.1.1.13 to-ports=29440-29587
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.194 protocol=udp \
    src-address=192.10.1.194 to-addresses=202.1.1.13 to-ports=29440-29587
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.194 protocol=\
    icmp src-address=192.10.1.194 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.195 protocol=tcp \
    src-address=192.10.1.195 to-addresses=202.1.1.14 to-ports=29588-29735
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.195 protocol=udp \
    src-address=192.10.1.195 to-addresses=202.1.1.14 to-ports=29588-29735
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.195 protocol=\
    icmp src-address=192.10.1.195 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.196 protocol=tcp \
    src-address=192.10.1.196 to-addresses=202.1.1.15 to-ports=29736-29883
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.196 protocol=udp \
    src-address=192.10.1.196 to-addresses=202.1.1.15 to-ports=29736-29883
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.196 protocol=\
    icmp src-address=192.10.1.196 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.197 protocol=tcp \
    src-address=192.10.1.197 to-addresses=202.1.1.1 to-ports=29884-30031
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.197 protocol=udp \
    src-address=192.10.1.197 to-addresses=202.1.1.1 to-ports=29884-30031
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.197 protocol=\
    icmp src-address=192.10.1.197 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.198 protocol=tcp \
    src-address=192.10.1.198 to-addresses=202.1.1.2 to-ports=30032-30179
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.198 protocol=udp \
    src-address=192.10.1.198 to-addresses=202.1.1.2 to-ports=30032-30179
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.198 protocol=\
    icmp src-address=192.10.1.198 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.199 protocol=tcp \
    src-address=192.10.1.199 to-addresses=202.1.1.3 to-ports=30180-30327
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.199 protocol=udp \
    src-address=192.10.1.199 to-addresses=202.1.1.3 to-ports=30180-30327
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.199 protocol=\
    icmp src-address=192.10.1.199 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.200 protocol=tcp \
    src-address=192.10.1.200 to-addresses=202.1.1.4 to-ports=30328-30475
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.200 protocol=udp \
    src-address=192.10.1.200 to-addresses=202.1.1.4 to-ports=30328-30475
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.200 protocol=\
    icmp src-address=192.10.1.200 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.201 protocol=tcp \
    src-address=192.10.1.201 to-addresses=202.1.1.5 to-ports=30476-30623
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.201 protocol=udp \
    src-address=192.10.1.201 to-addresses=202.1.1.5 to-ports=30476-30623
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.201 protocol=\
    icmp src-address=192.10.1.201 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.202 protocol=tcp \
    src-address=192.10.1.202 to-addresses=202.1.1.6 to-ports=30624-30771
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.202 protocol=udp \
    src-address=192.10.1.202 to-addresses=202.1.1.6 to-ports=30624-30771
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.202 protocol=\
    icmp src-address=192.10.1.202 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.203 protocol=tcp \
    src-address=192.10.1.203 to-addresses=202.1.1.7 to-ports=30772-30919
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.203 protocol=udp \
    src-address=192.10.1.203 to-addresses=202.1.1.7 to-ports=30772-30919
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.203 protocol=\
    icmp src-address=192.10.1.203 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.204 protocol=tcp \
    src-address=192.10.1.204 to-addresses=202.1.1.8 to-ports=30920-31067
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.204 protocol=udp \
    src-address=192.10.1.204 to-addresses=202.1.1.8 to-ports=30920-31067
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.204 protocol=\
    icmp src-address=192.10.1.204 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.205 protocol=tcp \
    src-address=192.10.1.205 to-addresses=202.1.1.9 to-ports=31068-31215
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.205 protocol=udp \
    src-address=192.10.1.205 to-addresses=202.1.1.9 to-ports=31068-31215
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.205 protocol=\
    icmp src-address=192.10.1.205 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.206 protocol=tcp \
    src-address=192.10.1.206 to-addresses=202.1.1.10 to-ports=31216-31363
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.206 protocol=udp \
    src-address=192.10.1.206 to-addresses=202.1.1.10 to-ports=31216-31363
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.206 protocol=\
    icmp src-address=192.10.1.206 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.207 protocol=tcp \
    src-address=192.10.1.207 to-addresses=202.1.1.11 to-ports=31364-31511
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.207 protocol=udp \
    src-address=192.10.1.207 to-addresses=202.1.1.11 to-ports=31364-31511
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.207 protocol=\
    icmp src-address=192.10.1.207 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.208 protocol=tcp \
    src-address=192.10.1.208 to-addresses=202.1.1.12 to-ports=31512-31659
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.208 protocol=udp \
    src-address=192.10.1.208 to-addresses=202.1.1.12 to-ports=31512-31659
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.208 protocol=\
    icmp src-address=192.10.1.208 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.209 protocol=tcp \
    src-address=192.10.1.209 to-addresses=202.1.1.13 to-ports=31660-31807
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.209 protocol=udp \
    src-address=192.10.1.209 to-addresses=202.1.1.13 to-ports=31660-31807
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.209 protocol=\
    icmp src-address=192.10.1.209 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.210 protocol=tcp \
    src-address=192.10.1.210 to-addresses=202.1.1.14 to-ports=31808-31955
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.210 protocol=udp \
    src-address=192.10.1.210 to-addresses=202.1.1.14 to-ports=31808-31955
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.210 protocol=\
    icmp src-address=192.10.1.210 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.211 protocol=tcp \
    src-address=192.10.1.211 to-addresses=202.1.1.15 to-ports=31956-32103
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.211 protocol=udp \
    src-address=192.10.1.211 to-addresses=202.1.1.15 to-ports=31956-32103
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.211 protocol=\
    icmp src-address=192.10.1.211 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.212 protocol=tcp \
    src-address=192.10.1.212 to-addresses=202.1.1.1 to-ports=32104-32251
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.212 protocol=udp \
    src-address=192.10.1.212 to-addresses=202.1.1.1 to-ports=32104-32251
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.212 protocol=\
    icmp src-address=192.10.1.212 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.213 protocol=tcp \
    src-address=192.10.1.213 to-addresses=202.1.1.2 to-ports=32252-32399
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.213 protocol=udp \
    src-address=192.10.1.213 to-addresses=202.1.1.2 to-ports=32252-32399
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.213 protocol=\
    icmp src-address=192.10.1.213 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.214 protocol=tcp \
    src-address=192.10.1.214 to-addresses=202.1.1.3 to-ports=32400-32547
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.214 protocol=udp \
    src-address=192.10.1.214 to-addresses=202.1.1.3 to-ports=32400-32547
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.214 protocol=\
    icmp src-address=192.10.1.214 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.215 protocol=tcp \
    src-address=192.10.1.215 to-addresses=202.1.1.4 to-ports=32548-32695
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.215 protocol=udp \
    src-address=192.10.1.215 to-addresses=202.1.1.4 to-ports=32548-32695
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.215 protocol=\
    icmp src-address=192.10.1.215 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.216 protocol=tcp \
    src-address=192.10.1.216 to-addresses=202.1.1.5 to-ports=32696-32843
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.216 protocol=udp \
    src-address=192.10.1.216 to-addresses=202.1.1.5 to-ports=32696-32843
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.216 protocol=\
    icmp src-address=192.10.1.216 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.217 protocol=tcp \
    src-address=192.10.1.217 to-addresses=202.1.1.6 to-ports=32844-32991
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.217 protocol=udp \
    src-address=192.10.1.217 to-addresses=202.1.1.6 to-ports=32844-32991
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.217 protocol=\
    icmp src-address=192.10.1.217 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.218 protocol=tcp \
    src-address=192.10.1.218 to-addresses=202.1.1.7 to-ports=32992-33139
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.218 protocol=udp \
    src-address=192.10.1.218 to-addresses=202.1.1.7 to-ports=32992-33139
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.218 protocol=\
    icmp src-address=192.10.1.218 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.219 protocol=tcp \
    src-address=192.10.1.219 to-addresses=202.1.1.8 to-ports=33140-33287
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.219 protocol=udp \
    src-address=192.10.1.219 to-addresses=202.1.1.8 to-ports=33140-33287
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.219 protocol=\
    icmp src-address=192.10.1.219 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.220 protocol=tcp \
    src-address=192.10.1.220 to-addresses=202.1.1.9 to-ports=33288-33435
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.220 protocol=udp \
    src-address=192.10.1.220 to-addresses=202.1.1.9 to-ports=33288-33435
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.220 protocol=\
    icmp src-address=192.10.1.220 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.221 protocol=tcp \
    src-address=192.10.1.221 to-addresses=202.1.1.10 to-ports=33436-33583
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.221 protocol=udp \
    src-address=192.10.1.221 to-addresses=202.1.1.10 to-ports=33436-33583
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.221 protocol=\
    icmp src-address=192.10.1.221 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.222 protocol=tcp \
    src-address=192.10.1.222 to-addresses=202.1.1.11 to-ports=33584-33731
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.222 protocol=udp \
    src-address=192.10.1.222 to-addresses=202.1.1.11 to-ports=33584-33731
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.222 protocol=\
    icmp src-address=192.10.1.222 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.223 protocol=tcp \
    src-address=192.10.1.223 to-addresses=202.1.1.12 to-ports=33732-33879
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.223 protocol=udp \
    src-address=192.10.1.223 to-addresses=202.1.1.12 to-ports=33732-33879
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.223 protocol=\
    icmp src-address=192.10.1.223 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.224 protocol=tcp \
    src-address=192.10.1.224 to-addresses=202.1.1.13 to-ports=33880-34027
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.224 protocol=udp \
    src-address=192.10.1.224 to-addresses=202.1.1.13 to-ports=33880-34027
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.224 protocol=\
    icmp src-address=192.10.1.224 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.225 protocol=tcp \
    src-address=192.10.1.225 to-addresses=202.1.1.14 to-ports=34028-34175
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.225 protocol=udp \
    src-address=192.10.1.225 to-addresses=202.1.1.14 to-ports=34028-34175
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.225 protocol=\
    icmp src-address=192.10.1.225 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.226 protocol=tcp \
    src-address=192.10.1.226 to-addresses=202.1.1.15 to-ports=34176-34323
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.226 protocol=udp \
    src-address=192.10.1.226 to-addresses=202.1.1.15 to-ports=34176-34323
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.226 protocol=\
    icmp src-address=192.10.1.226 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.227 protocol=tcp \
    src-address=192.10.1.227 to-addresses=202.1.1.1 to-ports=34324-34471
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.227 protocol=udp \
    src-address=192.10.1.227 to-addresses=202.1.1.1 to-ports=34324-34471
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.227 protocol=\
    icmp src-address=192.10.1.227 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.228 protocol=tcp \
    src-address=192.10.1.228 to-addresses=202.1.1.2 to-ports=34472-34619
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.228 protocol=udp \
    src-address=192.10.1.228 to-addresses=202.1.1.2 to-ports=34472-34619
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.228 protocol=\
    icmp src-address=192.10.1.228 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.229 protocol=tcp \
    src-address=192.10.1.229 to-addresses=202.1.1.3 to-ports=34620-34767
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.229 protocol=udp \
    src-address=192.10.1.229 to-addresses=202.1.1.3 to-ports=34620-34767
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.229 protocol=\
    icmp src-address=192.10.1.229 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.230 protocol=tcp \
    src-address=192.10.1.230 to-addresses=202.1.1.4 to-ports=34768-34915
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.230 protocol=udp \
    src-address=192.10.1.230 to-addresses=202.1.1.4 to-ports=34768-34915
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.230 protocol=\
    icmp src-address=192.10.1.230 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.231 protocol=tcp \
    src-address=192.10.1.231 to-addresses=202.1.1.5 to-ports=34916-35063
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.231 protocol=udp \
    src-address=192.10.1.231 to-addresses=202.1.1.5 to-ports=34916-35063
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.231 protocol=\
    icmp src-address=192.10.1.231 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.232 protocol=tcp \
    src-address=192.10.1.232 to-addresses=202.1.1.6 to-ports=35064-35211
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.232 protocol=udp \
    src-address=192.10.1.232 to-addresses=202.1.1.6 to-ports=35064-35211
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.232 protocol=\
    icmp src-address=192.10.1.232 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.233 protocol=tcp \
    src-address=192.10.1.233 to-addresses=202.1.1.7 to-ports=35212-35359
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.233 protocol=udp \
    src-address=192.10.1.233 to-addresses=202.1.1.7 to-ports=35212-35359
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.233 protocol=\
    icmp src-address=192.10.1.233 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.234 protocol=tcp \
    src-address=192.10.1.234 to-addresses=202.1.1.8 to-ports=35360-35507
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.234 protocol=udp \
    src-address=192.10.1.234 to-addresses=202.1.1.8 to-ports=35360-35507
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.234 protocol=\
    icmp src-address=192.10.1.234 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.235 protocol=tcp \
    src-address=192.10.1.235 to-addresses=202.1.1.9 to-ports=35508-35655
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.235 protocol=udp \
    src-address=192.10.1.235 to-addresses=202.1.1.9 to-ports=35508-35655
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.235 protocol=\
    icmp src-address=192.10.1.235 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.236 protocol=tcp \
    src-address=192.10.1.236 to-addresses=202.1.1.10 to-ports=35656-35803
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.236 protocol=udp \
    src-address=192.10.1.236 to-addresses=202.1.1.10 to-ports=35656-35803
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.236 protocol=\
    icmp src-address=192.10.1.236 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.237 protocol=tcp \
    src-address=192.10.1.237 to-addresses=202.1.1.11 to-ports=35804-35951
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.237 protocol=udp \
    src-address=192.10.1.237 to-addresses=202.1.1.11 to-ports=35804-35951
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.237 protocol=\
    icmp src-address=192.10.1.237 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.238 protocol=tcp \
    src-address=192.10.1.238 to-addresses=202.1.1.12 to-ports=35952-36099
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.238 protocol=udp \
    src-address=192.10.1.238 to-addresses=202.1.1.12 to-ports=35952-36099
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.238 protocol=\
    icmp src-address=192.10.1.238 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.239 protocol=tcp \
    src-address=192.10.1.239 to-addresses=202.1.1.13 to-ports=36100-36247
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.239 protocol=udp \
    src-address=192.10.1.239 to-addresses=202.1.1.13 to-ports=36100-36247
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.239 protocol=\
    icmp src-address=192.10.1.239 to-addresses=202.1.1.13
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.240 protocol=tcp \
    src-address=192.10.1.240 to-addresses=202.1.1.14 to-ports=36248-36395
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.240 protocol=udp \
    src-address=192.10.1.240 to-addresses=202.1.1.14 to-ports=36248-36395
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.240 protocol=\
    icmp src-address=192.10.1.240 to-addresses=202.1.1.14
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.241 protocol=tcp \
    src-address=192.10.1.241 to-addresses=202.1.1.15 to-ports=36396-36543
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.241 protocol=udp \
    src-address=192.10.1.241 to-addresses=202.1.1.15 to-ports=36396-36543
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.241 protocol=\
    icmp src-address=192.10.1.241 to-addresses=202.1.1.15
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.242 protocol=tcp \
    src-address=192.10.1.242 to-addresses=202.1.1.1 to-ports=36544-36691
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.242 protocol=udp \
    src-address=192.10.1.242 to-addresses=202.1.1.1 to-ports=36544-36691
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.242 protocol=\
    icmp src-address=192.10.1.242 to-addresses=202.1.1.1
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.243 protocol=tcp \
    src-address=192.10.1.243 to-addresses=202.1.1.2 to-ports=36692-36839
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.243 protocol=udp \
    src-address=192.10.1.243 to-addresses=202.1.1.2 to-ports=36692-36839
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.243 protocol=\
    icmp src-address=192.10.1.243 to-addresses=202.1.1.2
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.244 protocol=tcp \
    src-address=192.10.1.244 to-addresses=202.1.1.3 to-ports=36840-36987
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.244 protocol=udp \
    src-address=192.10.1.244 to-addresses=202.1.1.3 to-ports=36840-36987
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.244 protocol=\
    icmp src-address=192.10.1.244 to-addresses=202.1.1.3
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.245 protocol=tcp \
    src-address=192.10.1.245 to-addresses=202.1.1.4 to-ports=36988-37135
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.245 protocol=udp \
    src-address=192.10.1.245 to-addresses=202.1.1.4 to-ports=36988-37135
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.245 protocol=\
    icmp src-address=192.10.1.245 to-addresses=202.1.1.4
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.246 protocol=tcp \
    src-address=192.10.1.246 to-addresses=202.1.1.5 to-ports=37136-37283
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.246 protocol=udp \
    src-address=192.10.1.246 to-addresses=202.1.1.5 to-ports=37136-37283
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.246 protocol=\
    icmp src-address=192.10.1.246 to-addresses=202.1.1.5
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.247 protocol=tcp \
    src-address=192.10.1.247 to-addresses=202.1.1.6 to-ports=37284-37431
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.247 protocol=udp \
    src-address=192.10.1.247 to-addresses=202.1.1.6 to-ports=37284-37431
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.247 protocol=\
    icmp src-address=192.10.1.247 to-addresses=202.1.1.6
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.248 protocol=tcp \
    src-address=192.10.1.248 to-addresses=202.1.1.7 to-ports=37432-37579
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.248 protocol=udp \
    src-address=192.10.1.248 to-addresses=202.1.1.7 to-ports=37432-37579
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.248 protocol=\
    icmp src-address=192.10.1.248 to-addresses=202.1.1.7
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.249 protocol=tcp \
    src-address=192.10.1.249 to-addresses=202.1.1.8 to-ports=37580-37727
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.249 protocol=udp \
    src-address=192.10.1.249 to-addresses=202.1.1.8 to-ports=37580-37727
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.249 protocol=\
    icmp src-address=192.10.1.249 to-addresses=202.1.1.8
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.250 protocol=tcp \
    src-address=192.10.1.250 to-addresses=202.1.1.9 to-ports=37728-37875
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.250 protocol=udp \
    src-address=192.10.1.250 to-addresses=202.1.1.9 to-ports=37728-37875
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.250 protocol=\
    icmp src-address=192.10.1.250 to-addresses=202.1.1.9
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.251 protocol=tcp \
    src-address=192.10.1.251 to-addresses=202.1.1.10 to-ports=37876-38023
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.251 protocol=udp \
    src-address=192.10.1.251 to-addresses=202.1.1.10 to-ports=37876-38023
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.251 protocol=\
    icmp src-address=192.10.1.251 to-addresses=202.1.1.10
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.252 protocol=tcp \
    src-address=192.10.1.252 to-addresses=202.1.1.11 to-ports=38024-38171
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.252 protocol=udp \
    src-address=192.10.1.252 to-addresses=202.1.1.11 to-ports=38024-38171
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.252 protocol=\
    icmp src-address=192.10.1.252 to-addresses=202.1.1.11
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.253 protocol=tcp \
    src-address=192.10.1.253 to-addresses=202.1.1.12 to-ports=38172-38319
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.253 protocol=udp \
    src-address=192.10.1.253 to-addresses=202.1.1.12 to-ports=38172-38319
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.253 protocol=\
    icmp src-address=192.10.1.253 to-addresses=202.1.1.12
add action=src-nat chain=srcnat comment=DetNAT-TCP-192.10.1.254 protocol=tcp \
    src-address=192.10.1.254 to-addresses=202.1.1.13 to-ports=38320-38467
add action=src-nat chain=srcnat comment=DetNAT-UDP-192.10.1.254 protocol=udp \
    src-address=192.10.1.254 to-addresses=202.1.1.13 to-ports=38320-38467
add action=src-nat chain=srcnat comment=DetNAT-ICMP-192.10.1.254 protocol=\
    icmp src-address=192.10.1.254 to-addresses=202.1.1.13
/ip route
add dst-address=192.10.1.0/24 gateway=192.255.1.6
add dst-address=0.0.0.0/0 gateway=192.255.1.1
/system note
set show-at-login=no
/system script
add dont-require-permissions=yes name=script1 owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="#\
    \_Daftar IP Publik\r\
    \n:local pubIPs {\"202.1.1.1\"; \"202.1.1.2\"; \"202.1.1.3\"; \"202.1.1.4\
    \"; \"202.1.1.5\"; \\\r\
    \n               \"202.1.1.6\"; \"202.1.1.7\"; \"202.1.1.8\"; \"202.1.1.9\
    \"; \"202.1.1.10\"; \\\r\
    \n               \"202.1.1.11\"; \"202.1.1.12\"; \"202.1.1.13\"; \"202.1.1\
    .14\"; \"202.1.1.15\"}\r\
    \n\r\
    \n# Pengaturan\r\
    \n:local subnet \"192.10.1.\"\r\
    \n:local startIP 2\r\
    \n:local endIP 254\r\
    \n:local portRange 148\r\
    \n:local currentPort 1024\r\
    \n\r\
    \n# Variabel bantu\r\
    \n:local pubIndex 0\r\
    \n:local ipCount [:len \$pubIPs]\r\
    \n\r\
    \n# Loop Utama\r\
    \n:for i from=\$startIP to=\$endIP do={\r\
    \n    :local ip (\$subnet . \$i)\r\
    \n    :local currentPubIP [:pick \$pubIPs \$pubIndex]\r\
    \n    :local portStart \$currentPort\r\
    \n    :local portEnd (\$currentPort + \$portRange - 1)\r\
    \n    \r\
    \n    # 1. Buat NAT Rule untuk TCP\r\
    \n    /ip firewall nat add \\\r\
    \n        chain=srcnat \\\r\
    \n        src-address=\$ip \\\r\
    \n        protocol=tcp \\\r\
    \n        action=src-nat \\\r\
    \n        to-addresses=\$currentPubIP \\\r\
    \n        to-ports=(\$portStart . \"-\" . \$portEnd) \\\r\
    \n        comment=(\"DetNAT-TCP-\" . \$ip)\r\
    \n\r\
    \n    # 2. Buat NAT Rule untuk UDP\r\
    \n    /ip firewall nat add \\\r\
    \n        chain=srcnat \\\r\
    \n        src-address=\$ip \\\r\
    \n        protocol=udp \\\r\
    \n        action=src-nat \\\r\
    \n        to-addresses=\$currentPubIP \\\r\
    \n        to-ports=(\$portStart . \"-\" . \$portEnd) \\\r\
    \n        comment=(\"DetNAT-UDP-\" . \$ip)\r\
    \n #3.ICMP\r\
    \n   /ip firewall nat add \\\
    \n    chain=srcnat \\\
    \n    src-address=\$ip \\\
    \n    protocol=icmp \\\
    \n    action=src-nat \\\
    \n    to-addresses=\$currentPubIP \\\
    \n    comment=(\"DetNAT-ICMP-\" . \$ip)\r\
    \n\r\
    \n    # Increment port dan index IP Publik\r\
    \n    :set currentPort (\$currentPort + \$portRange)\r\
    \n    :set pubIndex (\$pubIndex + 1)\r\
    \n    \r\
    \n    # Reset index jika sudah habis\r\
    \n    :if (\$pubIndex = \$ipCount) do={ :set pubIndex 0 }\r\
    \n}"
/tool romon
set enabled=yes
