## Simple Monitoring Dashboard Automation

This project is a practical implementation of the [Simple Monitoring Dashboard](https://roadmap.sh/projects/simple-monitoring-dashboard) project from **roadmap.sh**. It focuses on automating the lifecycle of a real-time monitoring solution using **Netdata**.

## Overview

The goal is to move away from manual installation and embrace **Automation** and **Infrastructure as Code** principles. This repository contains a suite of Bash scripts to handle the installation, stress testing, and complete removal of the monitoring agent.

---

## Prerequisites

Before you begin, ensure your environment meets the following requirements:
* **Operating System**: A Linux-based distribution (Ubuntu 22.04+ recommended).
* **Tools**: `curl` must be installed on your system.
* **Privileges**: You need `sudo` (administrative) access to install system services.

---

## Project Structure

* `setup.sh`: Automates the Netdata installation using the official kickstart script in non-interactive mode.
* `test_dashboard.sh`: A stress-testing script designed to spike CPU usage and verify that monitoring alerts are working correctly.
* `cleanup.sh`: A safety script to completely uninstall Netdata and revert system changes.

---

## Step-by-Step Instructions

### 1. Preparation
First, download or clone these scripts to your local machine. Open your terminal in the project folder and grant execution permissions to all scripts:
```bash
chmod +x setup.sh test_dashboard.sh cleanup.sh

### 2. Installation
Run the setup script. Note: You must use sudo because the script needs to update system packages and install a background service.
sudo ./setup.sh

### 3. Accessing the Dashboard

Open your web browser and navigate to: 👉 http://localhost:19999

You should see real-time charts for your CPU, RAM, Disk I/O, and Network.

### 4. Stress Testing (The "Moment of Truth")

To see the dashboard in action and test if alerts trigger when CPU usage exceeds 80%:

./test_dashboard.sh

Watch the "System CPU" chart in your browser. It will spike significantly. To stop the test, simply press Ctrl + C in your terminal.

### 5. Uninstallation

If you wish to remove Netdata from your system once you have finished the exercise:

sudo ./cleanup.sh



