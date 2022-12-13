#!/usr/bin/bash

# www.reddit.com/r/Realme/comments/w12bbk/realme_rui_20_rui_30_debloat_list/
# forum.xda-developers.com/t/guide-eu-in-rom-realme-ui-debloat-list.4084795/

# Memo
# Uninstall package : pm uninstall --user 0 [package name]
# Re-install package (yes it's "cmd" not "pm") : cmd package install-existing [package name]
# Disable package : pm disable --user 0 [package name]
# Re-enable package : pm enable --user 0 [package name]

# !!! THE LIST BELOW ISN'T THE MOST COMPLETE OR RECOMENDED OR ANYTHING !!!
# !!! IT WAS SPECIFICALLY TAILORED FOR A SPECIFIC DEVICE FOR A SPECIFIC PERSON (NOT ME BTW) !!!
# !!! USE YOUR COMMON SENSE AND THE LINKS ABOVE FOR ANY ADDITINAL INFO !!!
# !!! GOOGLE FOR THE PACKAGE NAMES FIRST TO KNOW WHAT IS IT YOU ACTUALLY UNINSTALLING !!!
# !!! IF ANYTHING YOU CAN ALWAYS REINSTALL THEM BACK USING THE COMMAND ABOVE !!!

# !!! THIS LIST SHOULDN'T BRICK YOUR DEVICE (DIDN'T BRICK MINE AT LEAST) BUT !!!
# !!! BE WARNED YOU ARE ON YOUR OWN AND I CAN'T BE HELD RESPONSIBLE IF ANYTHING HAPPENS !!!

echo "Do you want to Debloat your Device?[y/n]"
read input
if [[ "$input" == "y" ]] || [[ "$input" == "yes" ]] || [[ "$input" == "Y" ]]; then
    adb wait-for-any-device
    adb reconnect
    adb wait-for-any-device
    
    # ColorOS
    #adb shell pm uninstall -k --user 0 com.coloros.systemclone
    #adb shell pm uninstall -k --user 0 com.coloros.phonemanager
    adb shell pm uninstall -k --user 0 com.coloros.oppomultiapp
    #adb shell pm uninstall -k --user 0 com.coloros.gamespace
    # adb shell pm uninstall -k --user 0 com.coloros.gamespaceui
    #adb shell pm uninstall -k --user 0 com.coloros.backuprestore
    #adb shell pm uninstall -k --user 0 com.coloros.oshare
    adb shell pm uninstall -k --user 0 com.coloros.assistantscreen
    adb shell pm uninstall -k --user 0 com.coloros.videoeditor
    adb shell pm uninstall -k --user 0 com.coloros.video
    #adb shell pm uninstall -k --user 0 com.coloros.onekeylockscreen
    adb shell pm uninstall -k --user 0 com.coloros.childrenspace
    #adb shell pm uninstall -k --user 0 com.coloros.focusmode
    #adb shell pm uninstall -k --user 0 com.coloros.karaoke
    adb shell pm uninstall -k --user 0 com.coloros.scenemode
    adb shell pm uninstall -k --user 0 com.coloros.securepay
    adb shell pm uninstall -k --user 0 com.coloros.smartdrive
    adb shell pm disable-user com.coloros.smartdrive
    adb shell pm disable-user com.coloros.securepay
    adb shell pm disable-user com.coloros.scenemode
    #adb shell pm disable-user com.coloros.karaoke
    #adb shell pm disable-user com.coloros.focusmode
    adb shell pm disable-user com.coloros.childrenspace
    
    
    # Realme
    adb shell pm uninstall -k --user 0 com.realme.link
    adb shell pm uninstall -k --user 0 com.realmepay.payments
    adb shell pm uninstall -k --user 0 com.realme.securitycheck
    adb shell pm uninstall -k --user 0 com.realmecomm.app
    adb shell pm uninstall -k --user 0 com.realmestore.app
    adb shell pm uninstall -k --user 0 com.realme.movieshot
    adb shell pm uninstall -k --user 0 com.realme.securitycheck
    #adb shell pm uninstall -k --user 0 com.realme.wellbeing
    #adb shell pm disable-user com.realme.wellbeing
    adb shell pm disable-user com.realme.securitycheck
    adb shell pm disable-user com.realme.movieshot
    
    
    # Just cancer
    adb shell pm uninstall -k --user 0 com.facebook.katana
    adb shell pm uninstall -k --user 0 com.facebook.system
    adb shell pm uninstall -k --user 0 com.facebook.appmanager
    adb shell pm uninstall -k --user 0 com.facebook.services
    
    
    # Google
    # (Kinda cancer too but if I admit it I have to burn my phone so let's pretend you didn't see this text.)
    adb shell pm uninstall -k --user 0 com.android.chrome
    adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
    adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
    adb shell pm uninstall -k --user 0 com.google.android.apps.subscriptions.red
    adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.files
    adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.paisa.user
    adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle
    adb shell pm uninstall -k --user 0 com.google.android.videos
    
    
    # Not as bad but still imposed
    adb shell pm uninstall -k --user 0 com.netflix.partner.activation
    adb shell pm uninstall -k --user 0 com.netflix.mediaclient
    adb shell pm uninstall -k --user 0 cn.wps.moffice_eng


    # Oneplus
    adb shell pm uninstall -k --user 0 com.oplus.athena
    adb shell pm uninstall -k --user 0 com.oplus.games
    #adb shell pm uninstall -k --user 0 com.oplus.apprecover
    adb shell pm uninstall -k --user 0 com.oplus.atlas
    #adb shell pm uninstall -k --user 0 com.oplus.blacklistapp
    adb shell pm uninstall -k --user 0 com.oplus.crashbox
    adb shell pm uninstall -k --user 0 com.oplus.pay
    adb shell pm disable-user com.oplus.pay
    adb shell pm disable-user com.oplus.crashbox
    adb shell pm disable-user com.oplus.atlas
    #adb shell pm disable-user com.oplus.apprecover
    
    # Phone black list (You might want to keep it.)
    #adb shell pm disable-user com.oplus.blacklistapp
    
    
    # Heytap (Who are they anyway?)
    adb shell pm uninstall -k --user 0 com.heytap.music
    #adb shell pm uninstall -k --user 0 com.heytap.themestore
    #adb shell pm uninstall -k --user 0 com.heytap.pictorial
    adb shell pm uninstall -k --user 0 com.heytap.habit.analysis
    adb shell pm uninstall -k --user 0 com.heytap.browser
    adb shell pm uninstall -k --user 0 com.heytap.quickgame
    adb shell pm uninstall -k --user 0 com.heytap.cloud
    adb shell pm uninstall -k --user 0 com.heytap.usercenter
    adb shell pm disable-user com.heytap.market
    adb shell pm disable-user com.heytap.accessory
    
    # They weren't present on my particular phone
    #adb shell pm uninstall -k --user 0 com.opos.cs
    #adb shell pm uninstall -k --user 0 com.oppo.quicksearchbox
    #adb shell pm uninstall -k --user 0 com.os.docvault
    #adb shell pm uninstall -k --user 0 com.finshell.fin
    #adb shell pm uninstall -k --user 0 com.redteamobile.roaming
    #adb shell pm uninstall -k --user 0 com.daemon.shelper
    #adb shell pm uninstall -k --user 0 com.rongcard.eidapi
    #adb shell pm uninstall -k --user 0 com.ses.entitlement.o2
    #adb shell pm uninstall -k --user 0 com.ted.number
    #adb shell pm uninstall -k --user 0 com.tencent.soter.soterserver
    #adb shell pm uninstall -k --user 0 com.wapi.wapicertmanage
    #adb shell pm uninstall -k --user 0 com.oppo.opperationManual
    #adb shell pm disable-user com.oppo.opperationManual
    #adb shell pm disable-user com.wapi.wapicertmanage
    #adb shell pm disable-user com.tencent.soter.soterserver
    #adb shell pm disable-user com.ted.number
    #adb shell pm disable-user com.ses.entitlement.o2
    #adb shell pm disable-user com.rongcard.eidapi
    #adb shell pm disable-user com.daemon.shelper
    #adb shell pm disable-user com.rongcard.eidapi
    #adb shell pm disable-user com.android.fmradio
    #adb shell pm disable-user com.nearme.statistics.rom
    #adb shell pm disable-user com.glance.internet
     echo "Your realme device has been Debloated"
else
    echo "Abort."
fi

