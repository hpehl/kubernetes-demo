#!/bin/sh

ss -tulnp | grep -E "(kube)|(docker)"
