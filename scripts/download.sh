#!/bin/bash

# This script is meant to be used with the command 'datalad run'

datalad download-url --nosave \
	https://www.cs.toronto.edu/~kriz/cifar-100-python.tar.gz \
	https://www.cs.toronto.edu/~kriz/cifar-100-matlab.tar.gz \
	https://www.cs.toronto.edu/~kriz/cifar-100-binary.tar.gz
md5sum -c md5sums

