scoreboard players set @s fg.click 10
advancement revoke @s only fgacha:on_use
scoreboard players set @s fgacha_ray 0
function fgacha:place/snap_rotation
execute as @s at @s anchored eyes rotated as @s run function fgacha:place/raycast