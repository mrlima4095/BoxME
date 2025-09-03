--[[

name=BoxME
version=1.0
description=Virtual Machines

api.version=1.16
api.error=execute log add error BoxME requires OpenTTY API 1.14; echo [ BoxME ] Loading failed!; echo [ BoxME ] See logs to more info.;
api.match=minimum

process.name=boxhost2
process.exit=execute 

config=lua boxme.lua
command=boxme

boxme=execute set VM2ME=MAIN_MENU;

shell.name=boxme
shell.args=new,start,help,update

new=execute boxme-new new
start=execute boxme-loader init
help=execute install nano; get .boxme-README; html; get nano;
update=execute clone raw.githubusercontent/mrlima4095/BoxME/main/install.sh;

]]

local g = require("graphics")


local function main()
    local STATE = os.getenv("VM2ME")

    if STATE == nil then
        g.SetTicker("Loading...")
        
        os.execute("execute set BOXME_VERSION=1.0; ")

    elseif STATE == "MAIN_MENU" then
        local menu = {
            title = "BoxME Menu",
            itens = {
                ["New Machine"] = "execute set VM2ME=NEW",
                ["Start a Machine"] = "execute set VM2ME=START",
                ["Settings"] = "execute set VM2ME=SETTINGS",
                ["Documentation"] = "view <title>Documentation</title>",
                ["About"] = "execute set VM2ME=MENU; boxme; set OLD_TITLE=$TITLE; title BoxME $BOXME_VERSION; warn BoxME $BOXME_VERSION\n(C) 2025 - Mr. Lima\n\nBoxME runs Virtual Machines into J2ME Environment!; title $OLD_TITLE; unset $OLD_TITLE;"
            }
        }

        g.BuildList(menu)
    end


end


main()