# battery-calibration-monitor (WIP)

> [!WARNING]
> This script was written for **macOs** and **Apple Macbooks**! <br />
> I don't know how it will work on other machines.

## Description
This is a simple tool written in Bash that allows users to monitor their computer's battery status and log data to a file at specified intervals. 

The script periodically reads the battery charge level and records it, along with the date and time of the reading, to a file. 
Importantly, the script intentionally places a load on the CPU to accelerate battery discharge, simulating real-world usage. If the battery level drops below 5%, the script automatically shuts down the computer to prevent complete battery discharge.
This helps assess the performance and suitability of a newly replaced battery (OEM or replacment part) for customer delivery.


## Features:
- Battery status monitoring with CPU load simulation.
- Configurable number of cores to be loaded.
- Logging the percentage battery status, date, and time to a file.
- Automatic computer shutdown when the battery level falls below 5% to prevent complete discharge.

## Using

1. Clone the repository to your computer.
2. Set the appropriate permissions for the script, e.g.
```bash
 chmod +x battery.sh.
```
3. Run the script.
4. The script will run in the background, monitoring the battery status, simulating CPU load, and logging data to a file.



> [!IMPORTANT]
> Make sure you know how to run Bash scripts and have the necessary permissions to shut down the computer to avoid data loss. The script operates with ***superuser (root)*** privileges to shut down the computer when needed.

## Related articles for battery calibration

- [How to Calibrate a “Smart” Battery - batteryuniversity.com](https://batteryuniversity.com/article/bu-603-how-to-calibrate-a-smart-battery)
- [Battery Calibration - help.ifixit.com](https://help.ifixit.com/article/265-battery-calibration)


## Related images
![file-nxEZB5InKL](https://user-images.githubusercontent.com/43620534/151634671-e7ba6388-dc0b-4ce9-9dc2-817a43e95d2c.jpg)

