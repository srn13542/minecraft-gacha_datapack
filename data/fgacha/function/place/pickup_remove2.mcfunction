$execute as @e[type=item_display,tag=fgacha_machine,nbt={UUID:$(link)}] run kill @s
$execute as @e[type=player,nbt={UUID:$(player)}] run function fgacha:place/pickup_give
kill @s