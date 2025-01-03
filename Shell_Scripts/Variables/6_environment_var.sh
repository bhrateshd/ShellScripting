#!/bin/bash
read -p "Enter an Environment Variable name:" var
echo "Environment:${!var}"
