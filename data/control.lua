VERSION = "0.1.7"

function makeBoom(entity)
    local damage = 300
    local radius = 6
    local ents =
        entity.surface.find_entities(
        {
            {entity.position.x - radius, entity.position.y - radius},
            {entity.position.x + radius, entity.position.y + radius}
        }

    )
    for _, enty in pairs(ents) do
        if (enty and enty.valid and enty.destructible and enty.health ~= nil and enty.health > 0) then
            enty.damage(damage, entity.force, "explosion")
        end
    end
    entity.surface.create_entity{name="uranium-cannon-shell-explosion", position=entity.position}
end

function onDie(event)
    local ent = event.entity

    if (ent.name == 'nukebot') then        
        makeBoom(ent)
    end
end

script.on_event(defines.events.on_entity_died, onDie)

