# ummon

ummon (from German *Umgebungsmonitor*, "environment monitor") is an ESP32-C6 based environmental sensor board with USB-C power. It reads several environmental sensors over I²C and drives an e-paper display (a 7.5" Waveshare panel in this build). The board is a custom 4-layer PCB designed in KiCad, powered from USB-C with on-board 3.3 V regulation.

## Features

- MCU: ESP32-C6-WROOM-1 (Wi-Fi 6, Bluetooth LE, Zigbee/Thread)
- Sensors over I²C:
  - SHT41 for temperature and humidity
  - SCD41 for CO₂
  - SGP41 for VOC / air quality
- Display: e-paper via an on-board boost converter for the panel supply rails (7.5" Waveshare V2 used here)
- Power: USB-C input, AMS1117 3.3 V LDO, TVS/ESD protection on VBUS and the USB data lines

## Repository structure

```
├── hardware/      KiCad project (schematic, PCB, footprints, datasheets)
├── firmware/      ESP32-C6 firmware (planned)
└── mechanical/    3D-printed enclosure (planned)
```

## Hardware

The PCB uses a 4-layer stackup:

| Layer   | Purpose              |
|---------|----------------------|
| Top     | Signals + components |
| Inner 1 | Continuous GND plane |
| Inner 2 | 3.3 V plane          |
| Bottom  | Signals              |

## Status

- [x] Schematic
- [x] PCB layout
- [ ] Firmware
- [ ] Enclosure
