tellraw @s {translate: "pack.avarice.introduction", color: "#FFD800", with: [{text: "0", font: "avarice:icon", color: "white"}, {translate: "pack.avarice.introduction.config", color: "#FFEF94", "italic": true, "click_event": {"action": "run_command", "command": "/function avarice:technical/config/main"}, "hover_event": {"action": "show_text", "value": [{translate: "pack.avarice.introduction.config.description", color: "gray"}, "\n\n", {"text": "/function avarice:config", "color": "dark_gray"}]}}, {translate: "pack.avarice.introduction.wiki", color: "#FFEF94", "italic": true, "click_event": {"action": "open_url", "url": "https://github.com/nine9snow/avarice/wiki/"}}]}

execute if entity @s[team=avarice.dead_players] run gamemode spectator @s

function avarice:curse/reset_effects
tag @s remove avarice.reviving
