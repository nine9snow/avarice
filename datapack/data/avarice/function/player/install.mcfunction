tellraw @s {"translate": "pack.avarice.introduction", "color": "#FFD800", "with": [{"text": "0", "font": "avarice:icon", "color": "white"}, {"translate": "pack.avarice.introduction.config", "color": "#FFEF94", "italic": true, "clickEvent": {"action": "run_command", "value": "/function avarice:technical/config/main"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "pack.avarice.introduction.config.description", "color": "gray"}]}}, {"translate": "pack.avarice.introduction.wiki", "color": "#FFEF94", "italic": true, "clickEvent": {"action": "open_url", "value": "https://github.com/nine9snow/avarice/wiki/"}}]}

execute if entity @s[team=avarice.dead_players] run gamemode spectator @s

function avarice:curse/reset_effects
tag @s remove avarice.reviving
