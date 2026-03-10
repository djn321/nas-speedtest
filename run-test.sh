#!/bin/bash

NAS_IP="192.168.1.101"
DURATION=10  # seconds per test

echo "================================================"
echo "  NAS Speed Test - $NAS_IP"
echo "================================================"
echo ""

echo "--- Upload: Mac → NAS ---"
iperf3 -c "$NAS_IP" -t "$DURATION"
echo ""

echo "--- Download: NAS → Mac ---"
iperf3 -c "$NAS_IP" -t "$DURATION" -R
echo ""

echo "--- Upload with parallel streams (4) ---"
iperf3 -c "$NAS_IP" -t "$DURATION" -P 4
echo ""

echo "================================================"
echo "  Done"
echo "================================================"
