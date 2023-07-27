# voice-chat
MTA SA Lua - Voice Chat is a script that allows players to define the range of voice chat communication between players in the Multi Theft Auto: San Andreas environment. By default, voice chat in MTA SA is global, but this script enables limiting the range so that players within a specific area can only hear each other.

# Instructions:
To use this script, follow these steps:

1. Make sure the mtaserver.conf file has the option <voice>1</voice> set to enable voice chat on the MTA SA server.
2. Add this script to your MTA SA project, for example, in the resources/[resource_name]/ directory.
3. Add the appropriate function to call the script in your MTA SA resource.

# Usage Example:

```lua
-- Adding the script to the resource and calling the function in the appropriate place
function onPlayerJoin()
    -- Load the script code from a file or place it directly here
end
addEventHandler("onPlayerJoin", root, onPlayerJoin)
```

# Notes:
* Ensure that you have voice chat enabled in the mtaserver.conf file, as mentioned earlier.
* You can customize the voice chat range by changing the value 50 on the line self.col[self.player] = createColSphere(self.pos, 50). This value represents the radius of the communication area in meters, where players will be able to hear each other.
