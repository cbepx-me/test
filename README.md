# Stock OS Mod Updater - Professional Edition

## Overview

Stock OS Mod Updater is a professional-grade firmware update tool designed for custom handheld gaming devices. It provides a sleek, user-friendly interface for checking and installing system updates with robust verification mechanisms.

## Features

- **Professional UI Design**: Modern dark theme with gradient effects and smooth animations
- **Multi-language Support**: Supports 10 languages including English, Chinese, Japanese, Korean, Spanish, Russian, German, French, and Portuguese
- **Hardware Compatibility**: Works with various Anbernic and similar handheld devices
- **Secure Updates**: MD5 verification ensures file integrity before installation
- **Progress Tracking**: Real-time download and extraction progress indicators
- **Network Diagnostics**: Built-in connectivity testing before attempting updates

## Supported Devices

- RGcubexx
- RG34xx / RG34xxSP
- RG28xx
- RG35xx+_P
- RG35xxH
- RG35xxSP
- RG40xxH
- RG40xxV
- RG35xxPRO

## Usage

### Prerequisites
- Python 3 installed on your device
- Internet connection for checking and downloading updates
- Sufficient storage space for update files

### Basic Operation

1. **Running the Updater**:
   - Place the application files in the appropriate directory (typically /mnt/mmc/Roms/PORTS/)
   - The application will automatically detect your hardware model

2. **Navigation**:
   - Use device buttons to interact with the interface
   - Press `A` to confirm updates
   - Press `B` to exit the application

3. **Update Process**:
   - The application automatically checks for updates on startup
   - If an update is available, follow the on-screen instructions
   - The system will reboot automatically after a successful update

### Language Configuration

The application automatically detects system language settings. To manually change the language, modify the `/mnt/vendor/oem/language.ini` file with the appropriate index:

0. zh_CN (Simplified Chinese)
1. zh_TW (Traditional Chinese)
2. en_US (English)
3. ja_JP (Japanese)
4. ko_KR (Korean)
5. es_LA (Spanish)
6. ru_RU (Russian)
7. de_DE (German)
8. fr_FR (French)
9. pt_BR (Portuguese)

## Building and Customization

### Project Structure
- `main.py`: Main application entry point
- `lang/`: Directory containing language JSON files
- `font/`: Directory containing font files

### Adding New Languages

1. Create a new JSON file in the `lang/` directory following the pattern of existing files
2. Add all translation keys with appropriate translations
3. Update the `system_list` in the `Config` class to include your new language code

### Modifying the UI

The UI rendering is handled by the `UIRenderer` class. You can modify:
- Color scheme in the `Config` class
- Layout components in the various UI methods
- Font sizes and positioning

## Troubleshooting

### Common Issues

1. **No Internet Connection**:
   - Ensure your device is connected to Wi-Fi
   - The application tests multiple DNS servers to verify connectivity

2. **Update Verification Failed**:
   - Usually indicates a corrupted download
   - Try again with a stable internet connection

3. **Application Crashes**:
   - Check the log file at `update.log` for error details

### Logs

The application generates detailed logs in `update.log` which can be helpful for debugging issues.

## License

This project is proprietary software. Please check with the developers for licensing information.

## Support

For issues and questions related to this updater tool, please contact the development team through appropriate channels.

## Contributing

As this is a professional edition application, contributions are managed through internal processes. Please contact the development team if you're interested in contributing.

---

*Note: This application is specifically designed for custom handheld gaming devices and may not work on standard computing platforms.*
