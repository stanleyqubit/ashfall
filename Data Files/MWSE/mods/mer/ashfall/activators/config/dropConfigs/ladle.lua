local common = require ("mer.ashfall.common.common")

return {
    dropText = function(campfire, item, itemData)
        return string.format("Add %s", common.helper.getGenericUtensilName(item))
    end,
    canDrop = function(target, item, itemData)
        local isLadle = common.staticConfigs.ladles[item.id:lower()]
        if not isLadle then
            return false
        end
        local hasCookingPot = target.data.utensil == "cookingPot"
        or common.staticConfigs.cookingPots[target.object.id:lower()]
        if not hasCookingPot then
            return false
        end
        local hasLadle = target.data.ladle
        if hasLadle then
            return false, "Campfire already has a ladle."
        end
        return true
    end,
    onDrop = function(target, reference)
        target.data.ladle = reference.object.id:lower()
        local remaining = common.helper.reduceReferenceStack(reference, 1)
        if remaining > 0 then
            common.helper.pickUp(reference)
        end

        tes3.messageBox("Added %s", common.helper.getGenericUtensilName(reference.object))
        event.trigger("Ashfall:UpdateAttachNodes", { reference = target})
    end
}