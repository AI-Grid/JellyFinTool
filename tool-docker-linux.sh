#!/bin/bash
Vercheck=3.4
echo "        ______________            __"
echo "       / / ____/_  __/___  ____  / /"
echo "  __  / / /_    / / / __ \/ __ \/ / "
echo " / /_/ / __/   / / / /_/ / /_/ / /  "
echo " \____/_/     /_/  \____/\____/_/   "
echo "                     "
echo ""
echo "JFTool v${Vercheck} -- DOCKER LINUX"
echo ""
echo "This is for jellyfin 10.6.x versions"
echo ""
echo "Disclaimer: This tool is provided as-is and I cannot be held"
echo "accountable for any hair-loss, data-loss, broken"
echo "relationships or nuclear winter."
echo ""
echo "============================================================"
echo ""
PS3='Please enter your choice: '
options=("Logo in sidebar" "One custom link in side bar" "Two custom link in side bar" "Three custom link in side bar" "Four custom link in side bar" "Logo and One custom link in side bar" "Logo and Two custom link in side bar" "Logo and Three custom link in side bar" "Logo and Four custom link in side bar" "Change Page Title" "Change Icons" "Add logo above login" "Remove logo above login" "Backup current icons" "Change scenes to ExtraFanart" "Change ExtraFanart back to scenes" "Change Trailer Tab To Requests" "Change Requests back to Trailer Tab" "Return to stock" "Add snow animation" "Add Heart animation" "Add Halloween animation" "Add Fireworks" "Add Pattys day" "Remove Animations" "add Dynamic login background" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	
	"Logo in sidebar")
	  echo "Adding logo to the side bar"
	  sudo cp ./modded/side-menu/libraryMenu0linksjusticon.js ${HOME}/Docker/scripts/libraryMenu.js
	  ;;
    "One custom link in side bar")
	  echo ""
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url: (e.g https://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  sudo cp ./modded/side-menu/libraryMenu1link.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  ;;
    "Two custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  sudo cp ./modded/side-menu/libraryMenu2links.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" ${HOME}/Docker/scripts/libraryMenu.js
	  ;;
    "Three custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  sudo cp ./modded/side-menu/libraryMenu3links.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" ${HOME}/Docker/scripts/libraryMenu.js
   	 ;;
	 "Four custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "3rd Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink4
	  echo "Icon url:"
	  read customlinkicon4
	  echo "Link name:"
	  read customlinkname4
	  echo ""
	  sudo cp ./modded/side-menu/libraryMenu4links.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~4THLINKHERE~$customlink4~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKICONHERE~$customlinkicon4~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKNAMEHERE~$customlinkname4~g" ${HOME}/Docker/scripts/libraryMenu.js
   	 ;;
	 "Logo and One custom link in side bar")
	  echo ""
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
      echo ""
	  sudo cp ./modded/side-menu/libraryMenu1linksandicon.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
   	 ;;
	 "Logo and Two custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  sudo cp ./modded/side-menu/libraryMenu2linksandicon.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" ${HOME}/Docker/scripts/libraryMenu.js
   	 ;;
	 "Logo and Three custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  sudo cp ./modded/side-menu/libraryMenu3linksandicon.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" ${HOME}/Docker/scripts/libraryMenu.js
   	 ;;
	 "Logo and Four custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "3rd Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink4
	  echo "Icon url:"
	  read customlinkicon4
	  echo "Link name:"
	  read customlinkname4
	  echo ""
	  sudo cp ./modded/side-menu/libraryMenu4linksandicon.js ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~4THLINKHERE~$customlink4~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKICONHERE~$customlinkicon4~g" ${HOME}/Docker/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKNAMEHERE~$customlinkname4~g" ${HOME}/Docker/scripts/libraryMenu.js
   	 ;;
	"Change Page Title")
	  echo "what is the current name of your server"
	  echo "(this appears in the top of your browser window as a page title)"
	  echo "this is case-sensitive (Default 'Jellyfin')"
	  read currenttitle
	  echo "What do you want to call your server?"
	  read newtitle
	  echo "One Moment Please"
	  sudo sed -i "s~$currenttitle~$newtitle~g" ${HOME}/Docker/scripts/libraryMenu.js
	  sudo sed -i "s~$currenttitle~$newtitle~g" ${HOME}/Docker/manifest.json
	  sudo sed -i "s~$currenttitle~$newtitle~g" ${HOME}/Docker/index.html
      sudo sed -i "s~$currenttitle~$newtitle~g" ${HOME}/Docker/home.html
	  ;;
	"Change Icons")
	  echo "This has errors, But ignore all these errors, it works.. it doesnt harm your system at all and wont move the files if the dir doesnt exist so it is harmless"
	  echo "favicon.png"
	  sudo cp ./images/favicon.png ${HOME}/Docker/
	  sudo cp ./images/favicon.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/favicon.png ${HOME}/Docker/assets/img/icon-transparent.png
	  echo "favicon180.png"
	  sudo cp ./images/favicon180.png ${HOME}/Docker/
	  sudo cp ./images/favicon180.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/favicon180.png ${HOME}/Docker/assets/img/
	  echo "logodark.png"
	  sudo cp ./images/logodark.png ${HOME}/Docker/
	  sudo cp ./images/logodark.png ${HOME}/Docker/themes/
	  sudo cp ./images/logodark.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/banner-dark.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/icon-transparent.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/touchicon.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/touchicon.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/touchicon72.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/touchicon114.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/touchicon144.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/touchicon512.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/assets/img/banner-dark.png
	  sudo cp ./images/logodark.png ${HOME}/Docker/themes/banner-dark.png
	  echo "logowhite.png"
	  sudo cp ./images/logowhite.png ${HOME}/Docker/themes/banner-light.png
	  sudo cp ./images/logowhite.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/logowhite.png ${HOME}/Docker/
	  sudo cp ./images/logowhite.png ${HOME}/Docker/assets/img/banner-light.png
	  echo "touchicon.png"
	  sudo cp ./images/touchicon.png ${HOME}/Docker/themes/icon-transparent.png
	  sudo cp ./images/touchicon.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/touchicon.png ${HOME}/Docker/themes/
	  sudo cp ./images/touchicon.png ${HOME}/Docker/
	  sudo cp ./images/touchicon.png ${HOME}/Docker/assets/img/
	  echo "touchicon72.png"
	  sudo cp ./images/touchicon72.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/touchicon72.png ${HOME}/Docker/themes/
	  sudo cp ./images/touchicon72.png ${HOME}/Docker/
	  sudo cp ./images/touchicon72.png ${HOME}/Docker/assets/img/
	  echo "touchicon114.png"
	  sudo cp ./images/touchicon114.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/touchicon114.png ${HOME}/Docker/themes/
	  sudo cp ./images/touchicon114.png ${HOME}/Docker/
	  sudo cp ./images/touchicon114.png ${HOME}/Docker/assets/img/
	  echo "touchicon144.png"
	  sudo cp ./images/touchicon144.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/touchicon144.png ${HOME}/Docker/themes/
	  sudo cp ./images/touchicon144.png ${HOME}/Docker/
	  sudo cp ./images/touchicon144.png ${HOME}/Docker/assets/img/
	  echo "touchicons512"
	  sudo cp ./images/touchicon512.png ${HOME}/Docker/components/themes/
	  sudo cp ./images/touchicon512.png ${HOME}/Docker/themes/
	  sudo cp ./images/touchicon512.png ${HOME}/Docker/
	  sudo cp ./images/touchicon512.png ${HOME}/Docker/assets/img/
	  echo "favicon.ico"
	  sudo cp ./images/favicon.ico ${HOME}/Docker/components/themes/
	  sudo cp ./images/favicon.ico ${HOME}/Docker/themes/
	  sudo cp ./images/favicon.ico ${HOME}/Docker/
  	  sudo cp ./images/favicon.ico ${HOME}/Docker/assets/img/
      sudo cp ./images/favicon.ico ${HOME}/Docker/assets/favicon.ico
      sudo cp ./images/favicon.ico ${HOME}/Docker/components/themes/favicon.ico
	  ;;
	"Add logo above login")
	  echo "bleep bloop adding the logo"
      sudo cp ./modded/login.html ${HOME}/Docker/login.html
	  ;;
	 "Backup current icons")
	  mkdir ./backedupimages
	  sudo cp ${HOME}/Docker/*.png ./backedupimages/
	  sudo cp ${HOME}/Docker/components/themes/*.png ./backedupimages/
	  sudo cp ${HOME}/Docker/assets/img/*.png ./backedupimages/
	  sudo cp ${HOME}/Docker/favicon.ico ./backedupimages/favicon.ico
	  echo "Done"
	  ;;
#	"Change to original jellyfin icons")
#	  sudo cp ./originalimages/*.png ${HOME}/Docker/
#	  sudo cp ./originalimages/*.png ${HOME}/Docker/components/themes/
#	  sudo cp ./originalimages/*.png ${HOME}/Docker/assets/img/
#	  sudo cp ./originalimages/favicon.ico ${HOME}/Docker/favicon.ico
#	  ;; 
	"Add snow animation")
	   sudo cp ./animation/videoosd.css ${HOME}/Docker/assets/css/videoosd.css
	   sudo cp ./animation/videohtmlplayer/style.css ${HOME}/Docker/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./animation/snow.html ${HOME}/Docker/index.html
	   echo "Added snow (note you may have to change your page title again from 'Jellyfin')"
	   ;;
	 "Add Heart animation")
	   sudo cp ./animation/videoosd.css ${HOME}/Docker/assets/css/videoosd.css
	   sudo cp ./animation/videohtmlplayer/style.css ${HOME}/Docker/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./animation/valentines.html ${HOME}/Docker/index.html
	   echo "Added hearts (note you may have to change your page title again from 'Jellyfin')"
	   ;;
	 "Add Halloween animation")
	   sudo cp ./animation/videohtmlplayer/style.css ${HOME}/Docker/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./animation/videoosd.css ${HOME}/Docker/assets/css/videoosd.css
	   sudo cp ./animation/halloween.html ${HOME}/Docker/index.html
	   sudo cp ./animation/ghost_20x20.png ${HOME}/Docker/
	   sudo cp ./animation/bat_20x20.png ${HOME}/Docker/
  	   sudo cp ./animation/pumpkin_20x20.png ${HOME}/Docker/
  	   echo "Added Halloween animations (note you may have to change your page title again from 'Jellyfin')"
	   ;;
	 "Add Fireworks")
	   sudo cp ./animation/videohtmlplayer/style.css ${HOME}/Docker/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./animation/videoosd.css ${HOME}/Docker/assets/css/videoosd.css
       sudo cp ./animation/fireworks.html ${HOME}/Docker/index.html
       sudo cp ./animation/fireworks.css ${HOME}/Docker/fireworks.css
       echo "Added fireworks (note you may have to change your page title again from 'Jellyfin')"
       ;;
     "Add Pattys day")
	   sudo cp ./animation/videohtmlplayer/style.css ${HOME}/Docker/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./animation/videoosd.css ${HOME}/Docker/assets/css/videoosd.css
       sudo cp ./animation/pattysday.html ${HOME}/Docker/index.html
	   sudo cp ./animation/lep_30x30.png ${HOME}/Docker/
  	   sudo cp ./animation/clover_20x20.png ${HOME}/Docker/
       echo "Added Pattys day (note you may have to change your page title again from 'Jellyfin')"
       ;;
	 "Remove Animations")
	   sudo cp ./stock/videoosd.css ${HOME}/Docker/assets/css/videoosd.css
	   sudo cp ./stock/htmlvideoplayer/stylestock.css ${HOME}/Docker/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./animation/index.html ${HOME}/Docker/index.html
	   echo "Removed animations (note you may have to change your page title again)"
	   ;; 
	"Remove logo above login")
	  echo "bleep bloop Removing the logo"
      sudo cp ./stock/login.html ${HOME}/Docker/login.html
      ;;
	"Change scenes to ExtraFanart")
	  echo "This changes the Scenes in the item page to show extrafanart when clicked these also open a new window to show full size image"
      sudo cp ./modded/extrafanart/index.js ${HOME}/Docker/controllers/itemDetails/
      sudo cp ./modded/extrafanart/index.html ${HOME}/Docker/controllers/itemDetails/
	  ;;
	"Change ExtraFanart back to scenes")
      echo "Changing the itemdetails page back to normal before we touched it"
      sudo cp ./stock/extrafanart/index.js ${HOME}/Docker/controllers/itemDetails/
      sudo cp ./stock/extrafanart/index.html ${HOME}/Docker/controllers/itemDetails/
	  ;;
#	"Force Backdrops")
#	echo ""
#	echo "This forces Backdrops to display at all times, there is no turning them off unless you use the option Remove Forced Backdrops"
    # echo "This will now load the script (One error is normal here)"
	# echo "Now for this to take effect you have to clear the cache on your browser (or your client will have to) or just wait for your cache"
	# echo "to clear itself and reload the .js file we will load in"
    # echo ""
	# sudo cp ./mods/10.4/forcebackdrops.10.4.js ${HOME}/Docker/components/usersettings/usersettingsbuilder.js
    # sudo cp ./mods/10.5/forcedbackdrops.10.5.js ${HOME}/Docker/scripts/settings/userSettingsBuilder.js
	#;;
	# "Remove Forced Backdrops")
    # echo ""
	# echo "This returns forced backdrops to the stock state of 10.4 or 10.5 (the script will figure that out)"
    # echo "This will now load the script (One error is normal here)"
	# echo "Now for this to take effect you have to clear the cache on your browser (or your client will have to) or just wait for your cache"
	# echo "to clear itself and reload the .js file we will load in"
	# echo ""
	# sudo cp ./mods/10.4/usersettingsbuilder.10.4.js ${HOME}/Docker/components/usersettings/usersettingsbuilder.js
    # sudo cp ./mods/10.5/userSettingsBuilder.10.5.js ${HOME}/Docker/scripts/settings/userSettingsBuilder.js
	# ;;
	"Change Trailer Tab To Requests")
	echo ""
	echo "This will change your boring useless broken Trailers Tab to a nice Requests tab to link with ombi (note some people need to change"
	echo "their reverse proxy settings to allow x-frames from other sources if not on the same domain"
	echo ""
	echo "now we will copy the files"
	sudo cp ./modded/movies/*.js ${HOME}/Docker/controllers/movies/
	echo "finished copying files"
	echo ""
	echo "Please Input the URL of your ombi install (e.g. domain.com/ombi without https:// or http://) :"
    read ombiurl
	sudo sed -i "s~REPLACEURLHERE~$ombiurl~g" ${HOME}/Docker/controllers/movies/movietrailers.js
	echo ""
	echo "This may give you an error and a broken page on the requests tab, if so please check your log does not say the following:"
	echo "Refused to display 'https://DOMAINNAMEHERE.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'." 
	echo ""
	echo "That error is an issue with the content security policy please check your reverse proxy documentation for how to fix that"
	;;
	"Change Requests back to Trailer Tab")
	echo ""
	echo "This will restore the stock files for movietrailers.js and moviesrecommended.js making the tab go to the trailers plugin"
	echo ""
	sudo cp ./stock/moviesrecommended.js ${HOME}/Docker/controllers/movies/
	sudo cp ./stock/movietrailers.js ${HOME}/Docker/controllers/movies/
	;;
	"Return to stock")
    echo ""
	echo "This makes your mods go back to stock, incase something messes up or you missed something"
	echo ""
	sudo cp ./stock/home.html ${HOME}/Docker/
	sudo cp ./stock/index.html ${HOME}/Docker/
	sudo cp ./stock/login.html ${HOME}/Docker/
	sudo cp ./stock/manifest.json ${HOME}/Docker/
	sudo cp ./stock/moviesrecommended.js ${HOME}/Docker/controllers/movies/
	sudo cp ./stock/movietrailers.js ${HOME}/Docker/controllers/movies/
	sudo cp ./stock/extrafanart/index.html ${HOME}/Docker/controllers/itemDetails/
	sudo cp ./stock/extrafanart/index.js ${HOME}/Docker/controllers/itemDetails/
	sudo cp ./stock/libraryMenu.js ${HOME}/Docker/scripts/
	;;
	"add Dynamic login background")
	echo ""
	echo "This will make your background on the login page change between 6 pictures in the" 
	echo "${HOME}/Docker/fanart dir and it will be a random one on each reload"
  	echo ""
	echo "copying files now"
	echo ""
	sudo cp -r ./fanart ${HOME}/Docker/fanart
	echo "injecting the cssbuster.js"
    loginbackjs='    <script src="fanart/cssbuster.js"></script>'
    sudo sed -i "/endinject/i \
    ${loginbackjs}" ${HOME}/Docker/index.html
	echo "injection complete"
	echo ""
	echo "done"
    ;;
	"Quit")
	  break
	  ;;
	*) echo "invalid option $REPLY";;
    esac
done
