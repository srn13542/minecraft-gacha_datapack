# 티켓 1장 소모
item modify entity @s weapon.mainhand fgacha:decrement

# 첫 가챠 도전과제
execute unless entity @s[advancements={fgacha:do_gacha=true}] run advancement grant @s only fgacha:do_gacha

# 기본 효과
playsound minecraft:entity.experience_orb.pickup player @s
particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0 20 force @s

# 가챠 실행
function fgacha:machine/roll