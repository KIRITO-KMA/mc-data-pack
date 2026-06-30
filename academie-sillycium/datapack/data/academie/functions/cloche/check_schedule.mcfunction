# 6 emplacements d'horaires configurables (staff). Pour chaque emplacement N
# actif (academie.sN_on = 1), si l'heure courante correspond a sN_hh:sN_mm,
# sonne selon sN_type (0 = courte, 1 = normale, 2 = longue).

execute if score game academie.s1_on matches 1 if score game academie.hh = game academie.s1_hh if score game academie.mm = game academie.s1_mm if score game academie.s1_type matches 0 run function academie:cloche/sonner_courte
execute if score game academie.s1_on matches 1 if score game academie.hh = game academie.s1_hh if score game academie.mm = game academie.s1_mm if score game academie.s1_type matches 1 run function academie:cloche/sonner_normale
execute if score game academie.s1_on matches 1 if score game academie.hh = game academie.s1_hh if score game academie.mm = game academie.s1_mm if score game academie.s1_type matches 2 run function academie:cloche/sonner_longue

execute if score game academie.s2_on matches 1 if score game academie.hh = game academie.s2_hh if score game academie.mm = game academie.s2_mm if score game academie.s2_type matches 0 run function academie:cloche/sonner_courte
execute if score game academie.s2_on matches 1 if score game academie.hh = game academie.s2_hh if score game academie.mm = game academie.s2_mm if score game academie.s2_type matches 1 run function academie:cloche/sonner_normale
execute if score game academie.s2_on matches 1 if score game academie.hh = game academie.s2_hh if score game academie.mm = game academie.s2_mm if score game academie.s2_type matches 2 run function academie:cloche/sonner_longue

execute if score game academie.s3_on matches 1 if score game academie.hh = game academie.s3_hh if score game academie.mm = game academie.s3_mm if score game academie.s3_type matches 0 run function academie:cloche/sonner_courte
execute if score game academie.s3_on matches 1 if score game academie.hh = game academie.s3_hh if score game academie.mm = game academie.s3_mm if score game academie.s3_type matches 1 run function academie:cloche/sonner_normale
execute if score game academie.s3_on matches 1 if score game academie.hh = game academie.s3_hh if score game academie.mm = game academie.s3_mm if score game academie.s3_type matches 2 run function academie:cloche/sonner_longue

execute if score game academie.s4_on matches 1 if score game academie.hh = game academie.s4_hh if score game academie.mm = game academie.s4_mm if score game academie.s4_type matches 0 run function academie:cloche/sonner_courte
execute if score game academie.s4_on matches 1 if score game academie.hh = game academie.s4_hh if score game academie.mm = game academie.s4_mm if score game academie.s4_type matches 1 run function academie:cloche/sonner_normale
execute if score game academie.s4_on matches 1 if score game academie.hh = game academie.s4_hh if score game academie.mm = game academie.s4_mm if score game academie.s4_type matches 2 run function academie:cloche/sonner_longue

execute if score game academie.s5_on matches 1 if score game academie.hh = game academie.s5_hh if score game academie.mm = game academie.s5_mm if score game academie.s5_type matches 0 run function academie:cloche/sonner_courte
execute if score game academie.s5_on matches 1 if score game academie.hh = game academie.s5_hh if score game academie.mm = game academie.s5_mm if score game academie.s5_type matches 1 run function academie:cloche/sonner_normale
execute if score game academie.s5_on matches 1 if score game academie.hh = game academie.s5_hh if score game academie.mm = game academie.s5_mm if score game academie.s5_type matches 2 run function academie:cloche/sonner_longue

execute if score game academie.s6_on matches 1 if score game academie.hh = game academie.s6_hh if score game academie.mm = game academie.s6_mm if score game academie.s6_type matches 0 run function academie:cloche/sonner_courte
execute if score game academie.s6_on matches 1 if score game academie.hh = game academie.s6_hh if score game academie.mm = game academie.s6_mm if score game academie.s6_type matches 1 run function academie:cloche/sonner_normale
execute if score game academie.s6_on matches 1 if score game academie.hh = game academie.s6_hh if score game academie.mm = game academie.s6_mm if score game academie.s6_type matches 2 run function academie:cloche/sonner_longue
