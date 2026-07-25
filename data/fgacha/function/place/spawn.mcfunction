# 시각적 모델: item_display (중심 기준 → 모서리 기준으로 보정)
summon item_display ~ ~ ~ {Tags: ["fgacha_machine"], billboard:"fixed", item:{id:"minecraft:paper", count:1, components:{item_model:"fgacha:gacha_machine"}}, transformation:{translation:[0.5f,1f,0.5f], left_rotation:[0f,0f,0f,1f], right_rotation:[0f,0f,0f,1f], scale:[1f,1f,1f]}}

# 충돌 / 우클릭 판정용 히트박스 (interaction 엔티티)
summon interaction ~0.5 ~1 ~0.5 {Tags:["fgacha_machine_hitbox"], width:1.0,height:1.8}

# 사용한 종이 1개 소모
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand fgacha:decrement