#!/usr/bin/env zsh

# Servers:
# - Beanfield
# - Bell Canada
# - UofT
# - Telus
# - Rogers
# - Teksavvy
# - Speedtes, NYC
# - Hivelogictyt, Dallas
servers=(
    "3025"
    "17394"
    "22138"
    "3575"
    "19249"
    "2565"
    "10390"
    "22288"
)

for i in $servers; do
    speedtest --no-upload --server $i
done

