execute store result storage avarice:macro root.x float 0.01 run random value 0..100 avarice:x_axis
execute store result storage avarice:macro root.y float 0.01 run random value 0..100 avarice:y_axis
execute store result storage avarice:macro root.z float 0.01 run random value 0..100 avarice:z_axis
function avarice:curse/effect/debris/macro with storage avarice:macro root
