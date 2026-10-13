#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

main_domain=$(cat /etc/yunohost/current_host)
timezone=$(timedatectl show --value --property=Timezone)

# Set the tile icon (YunoHost only knows catalog logos otherwise)
set_app_logo() {
    yunohost user permission update "$app.main" --logo "$(dirname "$(realpath "${BASH_SOURCE[0]}")")/../conf/logo.png"
}
