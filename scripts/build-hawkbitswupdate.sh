#!/bin/sh

cd /opt
make hawkbit-debupdate_defconfig && make && make install
rm -rf /opt/*
