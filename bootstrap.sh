#!/bin/sh
pfexec pkgin -y update &&
    pfexec pkgin -y install rust
