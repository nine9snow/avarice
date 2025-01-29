tellraw @s {"translate": "pack.avarice.introduction", "color": "#FFD800", "with": [{"text": "0", "font": "avarice:icon", "color": "white"}, {"translate": "pack.avarice.introduction.config", "color": "#FFEF94", "italic": true, "clickEvent": {"action": "run_command", "value": "/function avarice:technical/config/main"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "pack.avarice.introduction.config.description", "color": "gray"}]}}]}

function avarice:curse/reset_effects
tag @s remove avarice.reviving
