#!/usr/bin/env python
import i3
import os
import sys

def scratchpad_windows():
    containers = i3.filter()
    return i3.filter(containers, nodes=[])

def isAppInFocus(appName):
    windows = scratchpad_windows()
    intsances = []
    for window in windows:
        if window.has_key("window_properties"):
            intsances.append(window["window_properties"]["instance"])

    appIsOpen = [s for s in intsances if appName in s]
    return appIsOpen

def main(argv1):
    currentLang = os.popen("~/softwares/xkblayout-state/xkblayout-state print %n").read()
    
    if currentLang == "Hebrew":
        if argv1 == "whats-app":
            argv1 = "slack"
        else:
            argv1 = "whats-app"
    os.system("setxkbmap us")
    apps = ["slack", "whats-app"]
    if isAppInFocus(argv1):
        i3.focus(instance=argv1)
        i3.move('scratchpad')
        for app in apps:
            if isAppInFocus(app):
                i3.move('scratchpad')
    else:
        if argv1 == "whats-app":
            os.system("setxkbmap il")
        
        i3.scratchpad('show',instance=argv1+".*")

if __name__ == '__main__':
    main(sys.argv[1])