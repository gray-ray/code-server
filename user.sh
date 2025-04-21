#!/bin/bash


sudo groupadd devgroup && \
sudo useradd -g devgroup -d /approved-projects devuser && \
sudo chown -R devuser:devgroup /approved-projects