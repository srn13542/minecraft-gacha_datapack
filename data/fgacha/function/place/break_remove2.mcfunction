$execute at @e[type=item_display,tag=fgacha_machine,nbt={UUID:$(link)}] run particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0 15
$execute at @e[type=item_display,tag=fgacha_machine,nbt={UUID:$(link)}] run playsound minecraft:block.wood.break block @a ~ ~ ~ 1 1
$execute at @e[type=item_display,tag=fgacha_machine,nbt={UUID:$(link)}] run summon item ~ ~1 ~ {Item:{id:"minecraft:paper",count:1,components:{item_model:"fgacha:gacha_machine",consumable:{consume_seconds:999999999,animation:"none"},food:{nutrition:0,saturation:0,can_always_eat:true},custom_data:{fgacha:{gacha_machine:true}},item_name:{text:"가챠 머신",italic:false}}}}
$execute as @e[type=item_display,tag=fgacha_machine,nbt={UUID:$(link)}] run kill @s
kill @s