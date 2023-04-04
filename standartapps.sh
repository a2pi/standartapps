#!/bin/bash

# Function to download an app's installation file
download_app() {
    app_name="$1"
    app_url="$2"
    echo "Downloading $app_name..."
    curl -L -o "$app_name.dmg" "$app_url"
    echo "Downloaded $app_name!"
}

# Menu to select which apps to download
while true; do
    echo "Which apps do you want to download?"
    echo "1. Firefox"
    echo "2. Chrome"
    echo "3. Creative Cloud"
    echo "4. Microsoft Office 365"
    echo "5. Zoom"
    echo "6. VLC"
    echo "7. Zotero"
    echo "8. AnyDesk"
    echo "9. Quit"

    read -p "Enter selection [1-9]: " choice

    case $choice in
        1)
            download_app "Firefox" "https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
            ;;
        2)
            download_app "Chrome" "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
            ;;
        3)
            download_app "Creative Cloud" "https://ccmdl.adobe.com/AdobeProducts/KCCC/1/osx10/CreativeCloudInstaller.dmg"
            ;;
        4)
            download_app "Microsoft Office 365" "https://go.microsoft.com/fwlink/?linkid=525133"
            ;;
        5)
            download_app "Zoom" "https://zoom.us/client/latest/Zoom.pkg"
            ;;
        6)
            download_app "VLC" "https://get.videolan.org/vlc/3.0.16/macosx/vlc-3.0.16.dmg"
            ;;
        7)
            download_app "Zotero" "https://download.zotero.org/client/release/5.0.96/Zotero-5.0.96.dmg"
            ;;
        8)
            download_app "AnyDesk" "https://download.anydesk.com/AnyDesk.dmg"
            ;;
        9)
            exit 0
            ;;
        *)
            echo "Invalid selection"
            ;;
    esac
done

