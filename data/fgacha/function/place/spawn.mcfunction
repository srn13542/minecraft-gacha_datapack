# 시각적 모델
summon item_display ~ ~ ~ {Tags:["fgacha_machine"], billboard:"fixed", Rotation:[0f,0f], item:{id:"minecraft:paper",count:1,components:{item_model:"fgacha:gacha_machine"}}, transformation:{translation:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}

# 히트박스
summon interaction ~0.5 ~0 ~0.5 {Tags:["fgacha_machine_hitbox"], Rotation:[0f,0f], width:1.2,height:2.0}

# 회전 적용
execute store result entity @e[type=item_display,tag=fgacha_machine,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s fg.yaw
execute store result entity @e[type=interaction,tag=fgacha_machine_hitbox,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s fg.yaw

# 두 엔티티를 서로의 UUID로 연결 (거리와 무관하게 정확한 짝을 찾기 위함)
data modify entity @e[type=interaction,tag=fgacha_machine_hitbox,limit=1,sort=nearest] data.fgacha_link set from entity @e[type=item_display,tag=fgacha_machine,limit=1,sort=nearest] UUID
data modify entity @e[type=item_display,tag=fgacha_machine,limit=1,sort=nearest] data.fgacha_link set from entity @e[type=interaction,tag=fgacha_machine_hitbox,limit=1,sort=nearest] UUID

# 아이템 소모
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand fgacha:decrement