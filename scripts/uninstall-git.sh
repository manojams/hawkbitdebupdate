#!/bin/sh

apt-get remove --purge git -y
apt-get autoremove -y
apt-get clean