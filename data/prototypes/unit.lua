require("util")

GroupTemplate = {GroupID= 0, player=true, unitGroup = true, members = {size = 0}, force = true, surface = true,  currentCommand = "none"} -- empty Group template

function makeCommandTable(cmd_type, pos, dest)
    local command = {}
    command.type = cmd_type
    command.tick = 0
    command.pos = pos or {x = 0, y = 0}
    command.dest = dest or {x = 0, y = 0}
    --command.distance = util.distance(command.pos, command.dest)
    command.state_changed_since_last_command = true
    return command
end

function createNewGroup(entity)
    global.GroupUID = {}
    global.GroupUID[entity.force.name] = global.GroupUID[ent.force.name] or 1

    local groupID = global.GroupUID[entity.force.name]

    global.GroupUID[entity.force.name] = global.GroupUID[ent.force.name] + 1

    local newgroup = global.GroupTemplate

    newgroup.force = entity.force
    newgroup.surface = entity.surface
end