$execute store result score #days_min avarice.dummy run data get storage avarice:requests root.list[$(iterate)].days[0]
$execute store result score #days_max avarice.dummy run data get storage avarice:requests root.list[$(iterate)].days[1]

$execute if score #days_min avarice.dummy <= #day avarice.dummy if score #days_max avarice.dummy >= #day avarice.dummy run data modify storage avarice:requests root.choices append from storage avarice:requests root.list[$(iterate)]
