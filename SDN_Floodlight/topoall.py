#!/usr/bin/python
"""
This topology is used to test the compatibility of different Docker images.
The images to be tested can be found in 'examples/example-containers'.
They are build with './build.sh'
"""
from mininet.net import Containernet
from mininet.node import RemoteController, Docker
from mininet.cli import CLI
from mininet.link import TCLink
from mininet.log import info, setLogLevel
from mininet.node import OVSKernelSwitch
from mininet.util import irange
from mininet.topo import Topo


setLogLevel( 'info' )

REMOTE_CONTROLLER_IP="127.0.0.1"

net = Containernet(controller=RemoteController,)

info('*** Adding controller\n')
net.addController('c0',controller=RemoteController,
                      ip=REMOTE_CONTROLLER_IP,
                      port=6653)

info('*** Adding switches\n')
s1 = net.addSwitch('s1',protocols='OpenFlow13')
s2 = net.addSwitch('s2',protocols='OpenFlow13')
s3 = net.addSwitch('s3',protocols='OpenFlow13')

info('*** Adding Nat Host\n')
net.addNAT().configDefault()

info('*** Adding docker containers\n')
d1 = net.addDocker('d1', dimage="videoserver:latest")
d2 = net.addDocker('d2', dimage="videoserver:latest")
d3 = net.addDocker('d3', dimage="videoserver:latest")
d4 = net.addDocker('d4', dimage="videoserver:latest")

info('*** Creating links\n')
net.addLink(d1, s2, cls=TCLink, delay='0ms', bw=20)
net.addLink(d2, s2, cls=TCLink, delay='0ms', bw=20)
net.addLink(d3, s3, cls=TCLink, delay='0ms', bw=20)
net.addLink(d4, s3, cls=TCLink, delay='0ms', bw=20)
net.addLink(s1, s2, cls=TCLink, delay='0ms', bw=40)
net.addLink(s1, s3, cls=TCLink, delay='0ms', bw=40)


info('*** Starting network\n')
net.start()

info('*** Testing connectivity\n')
net.ping([d2, d1])
net.ping([d3, d1])
net.ping([d4, d1])

info('*** Running CLI\n')
CLI(net)

info('*** Stopping network')
net.stop()



