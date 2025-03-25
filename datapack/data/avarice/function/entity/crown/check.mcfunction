execute store result score #output avarice.dummy run random value 1..1000 avarice:crown
execute if score #output avarice.dummy <= #crown_chance avarice.dummy run function avarice:entity/crown/crowned
