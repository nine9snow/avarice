execute if score #curse_display avarice.dummy matches 1 run data merge storage avarice:curse {root:{title: "curse.avarice.anchoring", color: "#6a7b99"}}
execute if score #curse_display avarice.dummy matches 2 run data merge storage avarice:curse {root:{title: "curse.avarice.gigantism", color: "#bd5183"}}
execute if score #curse_display avarice.dummy matches 3 run data merge storage avarice:curse {root:{title: "curse.avarice.doubling", color: "#7051bd"}}
execute if score #curse_display avarice.dummy matches 4 run data merge storage avarice:curse {root:{title: "curse.avarice.toll", color: "#bf9a43"}}
execute if score #curse_display avarice.dummy matches 5 run data merge storage avarice:curse {root:{title: "curse.avarice.forfeit", color: "#76667d"}}
execute if score #curse_display avarice.dummy matches 6 run data merge storage avarice:curse {root:{title: "curse.avarice.burden", color: "#664257"}}
execute if score #curse_display avarice.dummy matches 7 run data merge storage avarice:curse {root:{title: "curse.avarice.debris", color: "#c91a26"}}
execute if score #curse_display avarice.dummy matches 8 run data merge storage avarice:curse {root:{title: "curse.avarice.sun", color: "#f5d442"}}
execute if score #curse_display avarice.dummy matches 9 run data merge storage avarice:curse {root:{title: "curse.avarice.pollen", color: "#bacf9b"}}

execute as @a run function avarice:curse/roll/subtitle with storage avarice:curse root
