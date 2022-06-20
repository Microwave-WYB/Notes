# Troubleshoot

## Buzzing speaker:

Create a file: `/etc/modprobe.d/local.conf` with the following:

```
options snd_hda_intel power_save=0
```

Then reboot.
