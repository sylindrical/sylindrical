#!/bin/bash

echo "power" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference

