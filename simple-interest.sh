#!/usr/bin/env bash
set -euo pipefail

read -rp "Enter principal: " principal
read -rp "Enter rate of interest: " rate
read -rp "Enter time period: " time

# Simple Interest = (P * R * T) / 100
si=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p*r*t)/100 }')

echo "Simple Interest: $si"
