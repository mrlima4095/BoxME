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
command=

boxme=execute x11 list boxme;

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
        
        os.execute("execute set V2ME=")

    end


end


main()