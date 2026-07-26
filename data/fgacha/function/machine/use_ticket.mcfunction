# 티켓 검사
item modify entity @s weapon.mainhand fgacha:decrement

playsound minecraft:entity.experience_orb.pickup player @s
particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0 20 force @s

# 가챠 실행
loot give @s loot fgacha:gacha