-- change in mtaserver.conf <voice>1</voice>

addEventHandler("onPlayerVoiceStart", root, function()
    self.col = {}

    self.player = source 
    self.pos = getElementPosition(self.player)
    self.col[self.player] = createColSphere(self.pos, 50)
    
    attachElements(self.col[self.player], self.player)
    self.getCol = getElementsWithinColShape(self.col[self.player], "player")

    setPlayerVoiceBroadcastTo(self.player, self.getCol[self.player])
    addEventHandler("onColShapeHit", self.col[self.player], function()
    if (getElementType(element) == "player") then 
        table.insert(self.getCol[self.player], element)
        setPlayerVoiceBroadcastTo(self.player, self.getCol[self.player])
    end
end)

    addEventHandler("onColShapeLeave", self.col[self.player], function()
        if (getElementType(element) == "player") then 
            for key, player in pairs(self.getCol[self.player]) do 
                if (element == player) then 
                    table.remove(self.getCol[self.player], key)
                    break 
                end
            end
            setPlayerVoiceBroadcastTo(self.player, self.getCol[self.player])
        end
    end)
end)

addEventHandler("onPlayerVoiceStop", root, function()
    if isElement(self.col[self.player]) then 
        destroyElement(self.col[self.player])
    end

    if (self.getCol[self.player]) then 
        table.remove(self.getCol, self.player)
    end

    setPlayerVoiceBroadcastTo(self.player)
end

