--[[

name=BoxME
version=1.0
description=Virtual Machines

api.version=1.16
api.error=execute log add error BoxME requires OpenTTY API 1.14; echo [ BoxME ] Loading failed!; echo [ BoxME ] See logs to more info.;
api.match=minimum

process.name=boxhost2
process.exit=execute unset VM2ME; log add BoxME have been killed; echo [ BoxME ] Host service killed; true

command=boxme

boxme=execute ;

shell.name=boxme
shell.args=new,start,help,update

new=execute boxme-new new
start=execute boxme-loader init
help=execute install nano; get .boxme-README; html; get nano;
update=execute clone raw.githubusercontent/mrlima4095/BoxME/main/install.sh;

]]

local host = os.getpid("boxhost2")

graphics = {
    display = function (screen) end,
    Alert = function (config) end,
    BuildScreen = function (config) end,
    BuildList = function (config) end,
    BuildQuest = function (config) end,
    BuildEdit = function (config) end,
    SetTitle = function (title) end,
    WindowTitle = function (title) end,
    SetTicker = function (text) end
}

local function menu()
    graphics.display(graphics.BuildList({
        title = "BoxME",
        back = { root = os.exit },
        button = {
            label = "Select",
            root = function (option)
                
            end
        },

        fields = { "New Machine", "Start a Machine", "Settings", "About" }
    }))
end

local function main()
    if host == nil then error("BoxME service isn't running!") end

    local state = os.getproc(host, "state")

    if state == nil then
        menu()
    end
end

main()