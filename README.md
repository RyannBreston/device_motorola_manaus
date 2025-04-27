# Device Tree for Motorola Edge 40 Neo (manaus)

Welcome to the **device tree** repository for the **Motorola Edge 40 Neo** (codename: *manaus*). This project provides the necessary files to build custom ROMs, such as **LineageOS 22** (based on Android 15), for the Motorola Edge 40 Neo. The goal is to empower developers and enthusiasts to customize the software experience on this device.

⚠️ **Disclaimer**:
- Unlocking the bootloader **voids the warranty** and wipes all data. Back up your device before proceeding.
- Building and flashing custom ROMs may cause instability or brick your device if not done correctly.
- The Motorola Edge 40 Neo uses a **MediaTek Dimensity 7030**, which has limited bootloader unlock support and sparse documentation, posing additional challenges.

---

## Table of Contents
1. [Device Specifications](#device-specifications)
2. [Repository Structure](#repository-structure)
3. [Cloning the Repository](#cloning-the-repository)
4. [Prerequisites](#prerequisites)
5. [Build Instructions](#build-instructions)
   - [Unlocking the Bootloader](#unlocking-the-bootloader)
   - [Collecting Device Information](#collecting-device-information)
   - [Setting Up the Device Tree](#setting-up-the-device-tree)
   - [Setting Up the Build Environment](#setting-up-the-build-environment)
   - [Building the ROM](#building-the-rom)
   - [Installing the ROM](#installing-the-rom)
6. [Testing and Debugging](#testing-and-debugging)
7. [MediaTek Considerations](#mediatek-considerations)
8. [Contributing](#contributing)
9. [License](#license)
10. [Resources](#resources)

---

## Device Specifications

- **Model**: Motorola Edge 40 Neo (XT2307-1)
- **Codename**: manaus
- **SoC**: MediaTek Dimensity 7030 (MT6877)
- **CPU**: Octa-core (2x Cortex-A78 @ 2.5 GHz, 6x Cortex-A55 @ 2.0 GHz)
- **GPU**: Mali-G610 MC3
- **Display**: pOLED 6.55", 1080x2400, 144 Hz
- **RAM**: 8 GB or 12 GB
- **Storage**: 256 GB (UFS 3.1)
- **Battery**: 5000 mAh
- **Cameras**: 50 MP (main), 13 MP (ultra-wide), 32 MP (front)
- **Stock OS**: Android 13 (upgradable to Android 14/15)

---

## Repository Structure

This repository contains the **device tree** for the Motorola Edge 40 Neo. Related repositories:
- [Vendor Tree](https://github.com/RyannBreston/vendor_motorola_manaus)
- [Kernel Source](https://github.com/RyannBreston/kernel_motorola_manaus)

### Files
- `Android.mk`, `AndroidProducts.mk`: Build configuration files.
- `BoardConfig.mk`: Hardware-specific settings.
- `device.mk`, `lineage_manaus.mk`: Device and product definitions.
- `extract-files.sh`, `proprietary-files.txt`: Tools for extracting proprietary blobs.
- `vendorsetup.sh`: Lunch combo for building.

---

## Cloning the Repository

To get started, clone this repository and the related ones:

```bash
git clone https://github.com/RyannBreston/device_motorola_manaus.git device/motorola/manaus
git clone https://github.com/RyannBreston/vendor_motorola_manaus.git vendor/motorola/manaus
git clone https://github.com/RyannBreston/kernel_motorola_manaus.git kernel/motorola/manaus
