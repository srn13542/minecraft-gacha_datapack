# 시각적 모델 (임시 태그 fgacha_fresh 추가)
summon item_display ~ ~ ~ {Tags:["fgacha_machine","fgacha_fresh"], billboard:"fixed", Rotation:[0f,0f], item:{id:"minecraft:paper",count:1,components:{item_model:"fgacha:gacha_machine"}}, transformation:{translation:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}

# 히트박스 (크기/위치 수정 + 임시 태그)
# summon interaction ~0.5 ~0 ~0.5 {Tags:["fgacha_machine_hitbox","fgacha_fresh"], Rotation:[0f,0f], width:1.0,height:2.0}

summon interaction ~0.5 ~0 ~0.5 {Tags:["fgacha_machine_hitbox","fgacha_fresh"],width:1.0,height:2.0}

function fgacha:place/apply_rotation

# execute store result entity @e[type=item_display,tag=fgacha_fresh,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s fg.yaw

# 회전 적용 (fgacha_fresh 태그로 정확히 이번에 만든 엔티티만 특정)
# execute store result entity @e[type=item_display,tag=fgacha_fresh,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s fg.yaw
# execute store result entity @e[type=interaction,tag=fgacha_fresh,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s fg.yaw

# 두 엔티티를 서로의 UUID로 연결
data modify entity @e[type=interaction,tag=fgacha_fresh,limit=1,sort=nearest] data.fgacha_link set from entity @e[type=item_display,tag=fgacha_fresh,limit=1,sort=nearest] UUID
data modify entity @e[type=item_display,tag=fgacha_fresh,limit=1,sort=nearest] data.fgacha_link set from entity @e[type=interaction,tag=fgacha_fresh,limit=1,sort=nearest] UUID

# 임시 태그 제거 (다음 설치 때 혼선 없도록)
tag @e[tag=fgacha_fresh] remove fgacha_fresh

# 아이템 소모
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand fgacha:decrement