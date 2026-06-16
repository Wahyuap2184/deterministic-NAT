# 2026-06-16 04:33:13 by RouterOS 7.14.3
# software id = TWIQ-YM3K
#
/disk
set slot1 slot=slot1
set slot2 slot=slot2
set slot3 slot=slot3
set slot4 slot=slot4
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
set [ find default-name=ether3 ] disable-running-check=no
set [ find default-name=ether4 ] disable-running-check=no
set [ find default-name=ether5 ] disable-running-check=no
/ip pool
add name=pool-pppoe ranges=192.10.1.2-192.10.1.254
/port
set 0 name=serial0
/ppp profile
add change-tcp-mss=yes dns-server=8.8.8.8,1.1.1.1 local-address=192.10.0.1 name=profile-pppoe only-one=yes rate-limit=20M/20M remote-address=pool-pppoe use-compression=no use-encryption=no
/ip settings
set max-neighbor-entries=4096
/ipv6 settings
set max-neighbor-entries=2048
/interface pppoe-server server
add default-profile=profile-pppoe disabled=no interface=ether2 one-session-per-host=yes service-name=PPPOE
/ip address
add address=192.255.1.6/30 interface=ether1 network=192.255.1.4
/ip dns
set allow-remote-requests=yes servers=8.8.8.8,1.1.1.1
/ip route
add dst-address=0.0.0.0/0 gateway=192.255.1.5
/ppp secret
add name=user1 profile=profile-pppoe service=pppoe
add name=user2 profile=profile-pppoe service=pppoe
/system identity
set name=BRAS
/system note
set show-at-login=no
/tool romon
set enabled=yes
