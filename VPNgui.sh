if (whiptail --title "VPN" --yesno "Would you like to open the vpn? protonvpn must be setup." 8 78); then
    ./protonVPN.sh
else

function SettingMenu() {
    SettingMenu=$(whiptail --title "Advanced Menu" --fb --menu "Choose an option" 15 60 4 \
        "Exit" "Exits the VPNgui tool." \
        "INIT" "Open The first-use protonVPN setup." \
        "info" "Get version and status info" 3>&1 1>&2 2>&3)
    case $SettingMenu in
        Exit)
            whiptail --title "Exit" --msgbox "Press OK to exit." 8 45
            exit
        ;;
        INIT)
            sudo protonvpn init
        ;;
        info)
            echo "Option 3"
            PV1=$(protonvpn -v)
            PV2=$(protonvpn s)
            whiptail --title "Info" --msgbox " $PV1 $PV2" 8 45
        ;;
    esac
}
SettingMenu
fi