function avarice:item/capsule/vfx
tellraw @a {translate: "ui.avarice.redeem_capsule", with: [{selector: "@s"}, {translate: "item.avarice.diamond_upgrade_capsule", color: "gold"}], color: "yellow"}
tag @s add avarice.diamond_upgrade
