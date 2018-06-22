
Загрузим данные(почему то не загружается)
```{r}
library(readr)
main_train <- read_csv("main_train.csv")
```

Установим пакеты
```{r}
library("dplyr")
library("dummies")
```

R не тянет большой объём данных и сбоит, после того как народы схлынет можно будет запустить на всех данных.Выбираем 1001 матч,это 10010 наблюдений.
```{r}
mml=filter(main_train,match_id<=1000)
```

Создадим даммики на персоонажей

```{r}
mml0=mutate(mml,H=paste0(hero,"_",radiant))
mml1=dummy(mml0$H)
mml2=cbind(mml,mml1)
```

Перейдём к матчем
```{r}
mml3 = mml2 %>%
group_by(match_id) %>%
summarise(
g_m_r_600=mean(gold_600[1:5]),
g_m_nr_600=mean(gold_600[6:10]),
g_m_r_540=mean(gold_540[1:5]),
g_m_nr_540=mean(gold_540[6:10]),
g_m_r_120=mean(gold_120[1:5]),
g_m_nr_120=mean(gold_120[6:10]),
g_v_r_600=sd(gold_600[1:5]),
g_v_nr_600=sd(gold_600[5:10]),

xp_m_r_600=mean(xp_600[1:5]),
xp_m_nr_600=mean(xp_600[6:10]),
xp_m_r_540=mean(xp_540[1:5]),
xp_m_nr_540=mean(xp_540[6:10]),
xp_v_r_600=sd(xp_600[1:5]),
xp_v_nr_600=sd(xp_600[5:10]),

lh_m_r_600=mean(lh_600[1:5]),
lh_m_nr_600=mean(lh_600[6:10]),
lh_v_r_600=sd(lh_600[1:5]),
lh_v_nr_600=sd(lh_600[5:10]),
w=mean(radiant_win),

Abaddon_1 =sum(HAbaddon_1 ),
Alchemist_0 =sum(HAlchemist_0 ),
Alchemist_1 =sum(HAlchemist_1 ),
Axe_0 =sum(HAxe_0 ),
Axe_1 =sum(HAxe_1 ),
Bane_0 =sum(HBane_0 ),
Bane_1 =sum(HBane_1 ),
Batrider_0 =sum(HBatrider_0 ),
Batrider_1 =sum(HBatrider_1 ),
Beastmaster_0 =sum(HBeastmaster_0 ),
Beastmaster_1 =sum(HBeastmaster_1 ),
Bloodseeker_0 =sum(HBloodseeker_0 ),
Bloodseeker_1 =sum(HBloodseeker_1 ),
Brewmaster_0 =sum(HBrewmaster_0 ),
Brewmaster_1 =sum(HBrewmaster_1 ),
Bristleback_0 =sum(HBristleback_0 ),
Bristleback_1 =sum(HBristleback_1 ),
Broodmother_0 =sum(HBroodmother_0 ),
Broodmother_1 =sum(HBroodmother_1 ),
Chen_0 =sum(HChen_0 ),
Chen_1 =sum(HChen_1 ),
Clinkz_0 =sum(HClinkz_0 ),
Clinkz_1 =sum(HClinkz_1 ),
Clockwerk_0 =sum(HClockwerk_0 ),
Clockwerk_1 =sum(HClockwerk_1 ),
Dazzle_0 =sum(HDazzle_0 ),
Dazzle_1 =sum(HDazzle_1 ),
Disruptor_0 =sum(HDisruptor_0 ),
Disruptor_1 =sum(HDisruptor_1 ),
Doom_0 =sum(HDoom_0 ),
Doom_1 =sum(HDoom_1 ),
Earthshaker_0 =sum(HEarthshaker_0 ),
Earthshaker_1 =sum(HEarthshaker_1 ),
Enchantress_0 =sum(HEnchantress_0 ),
Enchantress_1 =sum(HEnchantress_1 ),
Enigma_0 =sum(HEnigma_0 ),
Enigma_1 =sum(HEnigma_1 ),
Gyrocopter_0 =sum(HGyrocopter_0 ),
Gyrocopter_1 =sum(HGyrocopter_1 ),
Huskar_0 =sum(HHuskar_0 ),
Huskar_1 =sum(HHuskar_1 ),
Invoker_0 =sum(HInvoker_0 ),
Invoker_1 =sum(HInvoker_1 ),
Io_0 =sum(HIo_0 ),
Io_1 =sum(HIo_1 ),
Jakiro_0 =sum(HJakiro_0 ),
Jakiro_1 =sum(HJakiro_1 ),
Juggernaut_0 =sum(HJuggernaut_0 ),
Juggernaut_1 =sum(HJuggernaut_1 ),
Kunkka_0 =sum(HKunkka_0 ),
Kunkka_1 =sum(HKunkka_1 ),
Leshrac_0 =sum(HLeshrac_0 ),
Leshrac_1 =sum(HLeshrac_1 ),
Lich_0 =sum(HLich_0 ),
Lich_1 =sum(HLich_1 ),
Lifestealer_0 =sum(HLifestealer_0 ),
Lifestealer_1 =sum(HLifestealer_1 ),
Lina_0 =sum(HLina_0 ),
Lina_1 =sum(HLina_1 ),
Lion_0 =sum(HLion_0 ),
Lion_1 =sum(HLion_1 ),
Luna_0 =sum(HLuna_0 ),
Luna_1 =sum(HLuna_1 ),
Lycan_0 =sum(HLycan_0 ),
Lycan_1 =sum(HLycan_1 ),
Magnus_0 =sum(HMagnus_0 ),
Magnus_1 =sum(HMagnus_1 ),
Medusa_0 =sum(HMedusa_0 ),
Medusa_1 =sum(HMedusa_1 ),
Meepo_0 =sum(HMeepo_0 ),
Meepo_1 =sum(HMeepo_1 ),
Mirana_0 =sum(HMirana_0 ),
Mirana_1 =sum(HMirana_1 ),
Morphling_0 =sum(HMorphling_0 ),
Morphling_1 =sum(HMorphling_1 ),
Necrophos_0 =sum(HNecrophos_0 ),
Necrophos_1 =sum(HNecrophos_1 ),
Omniknight_0 =sum(HOmniknight_0 ),
Omniknight_1 =sum(HOmniknight_1 ),
Oracle_0 =sum(HOracle_0 ),
Oracle_1 =sum(HOracle_1 ),
Phoenix_0 =sum(HPhoenix_0 ),
Phoenix_1 =sum(HPhoenix_1 ),
Puck_0 =sum(HPuck_0 ),
Puck_1 =sum(HPuck_1 ),
Pudge_0 =sum(HPudge_0 ),
Pudge_1 =sum(HPudge_1 ),
Pugna_0 =sum(HPugna_0 ),
Pugna_1 =sum(HPugna_1 ),
Razor_0 =sum(HRazor_0 ),
Razor_1 =sum(HRazor_1 ),
Riki_0 =sum(HRiki_0 ),
Riki_1 =sum(HRiki_1 ),
Rubick_0 =sum(HRubick_0 ),
Rubick_1 =sum(HRubick_1 ),
Silencer_0 =sum(HSilencer_0 ),
Silencer_1 =sum(HSilencer_1 ),
Slardar_0 =sum(HSlardar_0 ),
Slardar_1 =sum(HSlardar_1 ),
Slark_0 =sum(HSlark_0 ),
Slark_1 =sum(HSlark_1 ),
Sniper_0 =sum(HSniper_0 ),
Sniper_1 =sum(HSniper_1 ),
Spectre_0 =sum(HSpectre_0 ),
Spectre_1 =sum(HSpectre_1 ),
Sven_0 =sum(HSven_0 ),
Sven_1 =sum(HSven_1 ),
Techies_0 =sum(HTechies_0 ),
Techies_1 =sum(HTechies_1 ),
Terrorblade_0 =sum(HTerrorblade_0 ),
Terrorblade_1 =sum(HTerrorblade_1 ),
Tidehunter_0 =sum(HTidehunter_0 ),
Tidehunter_1 =sum(HTidehunter_1 ),
Timbersaw_0 =sum(HTimbersaw_0 ),
Timbersaw_1 =sum(HTimbersaw_1 ),
Tinker_0 =sum(HTinker_0 ),
Tinker_1 =sum(HTinker_1 ),
Tiny_0 =sum(HTiny_0 ),
Tiny_1 =sum(HTiny_1 ),
Tusk_0 =sum(HTusk_0 ),
Tusk_1 =sum(HTusk_1 ),
Undying_0 =sum(HUndying_0 ),
Undying_1 =sum(HUndying_1 ),
Ursa_0 =sum(HUrsa_0 ),
Ursa_1 =sum(HUrsa_1 ),
Venomancer_0 =sum(HVenomancer_0 ),
Venomancer_1 =sum(HVenomancer_1 ),
Viper_0 =sum(HViper_0 ),
Viper_1 =sum(HViper_1 ),
Visage_0 =sum(HVisage_0 ),
Visage_1 =sum(HVisage_1 ),
Warlock_0 =sum(HWarlock_0 ),
Warlock_1 =sum(HWarlock_1 ),
Weaver_0 =sum(HWeaver_0 ),
Weaver_1 =sum(HWeaver_1 ),
Windranger_0 =sum(HWindranger_0 ),
Windranger_1 =sum(HWindranger_1 ),
Zeus_0 =sum(HZeus_0 ),
Zeus_1 =sum(HZeus_1 )
) 
mml3=select(mml3,-match_id)
```

```{r}
m.logit <- glm(w ~., data = mml3, x = TRUE, family = binomial(link = "logit"))
```



```{r}
mml_pr=filter(main_train,match_id>=1000 & match_id<=2000)
```

Создадим даммики на персоонажей

```{r}
mml0_pr=mutate(mml_pr,H=paste0(hero,"_",radiant))
mml1_pr=dummy(mml0_pr$H)
mml2_pr=cbind(mml_pr,mml1_pr)
```

Перейдём к матчем
```{r}
mml3_pr = mml2_pr %>%
group_by(match_id) %>%
summarise(
g_m_r_600=mean(gold_600[1:5]),
g_m_nr_600=mean(gold_600[6:10]),
g_m_r_540=mean(gold_540[1:5]),
g_m_nr_540=mean(gold_540[6:10]),
g_m_r_120=mean(gold_120[1:5]),
g_m_nr_120=mean(gold_120[6:10]),
g_v_r_600=sd(gold_600[1:5]),
g_v_nr_600=sd(gold_600[5:10]),

xp_m_r_600=mean(xp_600[1:5]),
xp_m_nr_600=mean(xp_600[6:10]),
xp_m_r_540=mean(xp_540[1:5]),
xp_m_nr_540=mean(xp_540[6:10]),
xp_v_r_600=sd(xp_600[1:5]),
xp_v_nr_600=sd(xp_600[5:10]),

lh_m_r_600=mean(lh_600[1:5]),
lh_m_nr_600=mean(lh_600[6:10]),
lh_v_r_600=sd(lh_600[1:5]),
lh_v_nr_600=sd(lh_600[5:10]),
w=mean(radiant_win),

Abaddon_1 =sum(HAbaddon_1 ),
Alchemist_0 =sum(HAlchemist_0 ),
Alchemist_1 =sum(HAlchemist_1 ),
Axe_0 =sum(HAxe_0 ),
Axe_1 =sum(HAxe_1 ),
Bane_0 =sum(HBane_0 ),
Bane_1 =sum(HBane_1 ),
Batrider_0 =sum(HBatrider_0 ),
Batrider_1 =sum(HBatrider_1 ),
Beastmaster_0 =sum(HBeastmaster_0 ),
Beastmaster_1 =sum(HBeastmaster_1 ),
Bloodseeker_0 =sum(HBloodseeker_0 ),
Bloodseeker_1 =sum(HBloodseeker_1 ),
Brewmaster_0 =sum(HBrewmaster_0 ),
Brewmaster_1 =sum(HBrewmaster_1 ),
Bristleback_0 =sum(HBristleback_0 ),
Bristleback_1 =sum(HBristleback_1 ),
Broodmother_0 =sum(HBroodmother_0 ),
Broodmother_1 =sum(HBroodmother_1 ),
Chen_0 =sum(HChen_0 ),
Chen_1 =sum(HChen_1 ),
Clinkz_0 =sum(HClinkz_0 ),
Clinkz_1 =sum(HClinkz_1 ),
Clockwerk_0 =sum(HClockwerk_0 ),
Clockwerk_1 =sum(HClockwerk_1 ),
Dazzle_0 =sum(HDazzle_0 ),
Dazzle_1 =sum(HDazzle_1 ),
Disruptor_0 =sum(HDisruptor_0 ),
Disruptor_1 =sum(HDisruptor_1 ),
Doom_0 =sum(HDoom_0 ),
Doom_1 =sum(HDoom_1 ),
Earthshaker_0 =sum(HEarthshaker_0 ),
Earthshaker_1 =sum(HEarthshaker_1 ),
Enchantress_0 =sum(HEnchantress_0 ),
Enchantress_1 =sum(HEnchantress_1 ),
Enigma_0 =sum(HEnigma_0 ),
Enigma_1 =sum(HEnigma_1 ),
Gyrocopter_0 =sum(HGyrocopter_0 ),
Gyrocopter_1 =sum(HGyrocopter_1 ),
Huskar_0 =sum(HHuskar_0 ),
Huskar_1 =sum(HHuskar_1 ),
Invoker_0 =sum(HInvoker_0 ),
Invoker_1 =sum(HInvoker_1 ),
Io_0 =sum(HIo_0 ),
Io_1 =sum(HIo_1 ),
Jakiro_0 =sum(HJakiro_0 ),
Jakiro_1 =sum(HJakiro_1 ),
Juggernaut_0 =sum(HJuggernaut_0 ),
Juggernaut_1 =sum(HJuggernaut_1 ),
Kunkka_0 =sum(HKunkka_0 ),
Kunkka_1 =sum(HKunkka_1 ),
Leshrac_0 =sum(HLeshrac_0 ),
Leshrac_1 =sum(HLeshrac_1 ),
Lich_0 =sum(HLich_0 ),
Lich_1 =sum(HLich_1 ),
Lifestealer_0 =sum(HLifestealer_0 ),
Lifestealer_1 =sum(HLifestealer_1 ),
Lina_0 =sum(HLina_0 ),
Lina_1 =sum(HLina_1 ),
Lion_0 =sum(HLion_0 ),
Lion_1 =sum(HLion_1 ),
Luna_0 =sum(HLuna_0 ),
Luna_1 =sum(HLuna_1 ),
Lycan_0 =sum(HLycan_0 ),
Lycan_1 =sum(HLycan_1 ),
Magnus_0 =sum(HMagnus_0 ),
Magnus_1 =sum(HMagnus_1 ),
Medusa_0 =sum(HMedusa_0 ),
Medusa_1 =sum(HMedusa_1 ),
Meepo_0 =sum(HMeepo_0 ),
Meepo_1 =sum(HMeepo_1 ),
Mirana_0 =sum(HMirana_0 ),
Mirana_1 =sum(HMirana_1 ),
Morphling_0 =sum(HMorphling_0 ),
Morphling_1 =sum(HMorphling_1 ),
Necrophos_0 =sum(HNecrophos_0 ),
Necrophos_1 =sum(HNecrophos_1 ),
Omniknight_0 =sum(HOmniknight_0 ),
Omniknight_1 =sum(HOmniknight_1 ),
Oracle_0 =sum(HOracle_0 ),
Oracle_1 =sum(HOracle_1 ),
Phoenix_0 =sum(HPhoenix_0 ),
Phoenix_1 =sum(HPhoenix_1 ),
Puck_0 =sum(HPuck_0 ),
Puck_1 =sum(HPuck_1 ),
Pudge_0 =sum(HPudge_0 ),
Pudge_1 =sum(HPudge_1 ),
Pugna_0 =sum(HPugna_0 ),
Pugna_1 =sum(HPugna_1 ),
Razor_0 =sum(HRazor_0 ),
Razor_1 =sum(HRazor_1 ),
Riki_0 =sum(HRiki_0 ),
Riki_1 =sum(HRiki_1 ),
Rubick_0 =sum(HRubick_0 ),
Rubick_1 =sum(HRubick_1 ),
Silencer_0 =sum(HSilencer_0 ),
Silencer_1 =sum(HSilencer_1 ),
Slardar_0 =sum(HSlardar_0 ),
Slardar_1 =sum(HSlardar_1 ),
Slark_0 =sum(HSlark_0 ),
Slark_1 =sum(HSlark_1 ),
Sniper_0 =sum(HSniper_0 ),
Sniper_1 =sum(HSniper_1 ),
Spectre_0 =sum(HSpectre_0 ),
Spectre_1 =sum(HSpectre_1 ),
Sven_0 =sum(HSven_0 ),
Sven_1 =sum(HSven_1 ),
Techies_0 =sum(HTechies_0 ),
Techies_1 =sum(HTechies_1 ),
Terrorblade_0 =sum(HTerrorblade_0 ),
Terrorblade_1 =sum(HTerrorblade_1 ),
Tidehunter_0 =sum(HTidehunter_0 ),
Tidehunter_1 =sum(HTidehunter_1 ),
Timbersaw_0 =sum(HTimbersaw_0 ),
Timbersaw_1 =sum(HTimbersaw_1 ),
Tinker_0 =sum(HTinker_0 ),
Tinker_1 =sum(HTinker_1 ),
Tiny_0 =sum(HTiny_0 ),
Tiny_1 =sum(HTiny_1 ),
Tusk_0 =sum(HTusk_0 ),
Tusk_1 =sum(HTusk_1 ),
Undying_0 =sum(HUndying_0 ),
Undying_1 =sum(HUndying_1 ),
Ursa_0 =sum(HUrsa_0 ),
Ursa_1 =sum(HUrsa_1 ),
Venomancer_0 =sum(HVenomancer_0 ),
Venomancer_1 =sum(HVenomancer_1 ),
Viper_0 =sum(HViper_0 ),
Viper_1 =sum(HViper_1 ),
Visage_0 =sum(HVisage_0 ),
Visage_1 =sum(HVisage_1 ),
Warlock_0 =sum(HWarlock_0 ),
Warlock_1 =sum(HWarlock_1 ),
Weaver_0 =sum(HWeaver_0 ),
Weaver_1 =sum(HWeaver_1 ),
Windranger_0 =sum(HWindranger_0 ),
Windranger_1 =sum(HWindranger_1 ),
Zeus_0 =sum(HZeus_0 ),
Zeus_1 =sum(HZeus_1 )
) 
mml3_pr=select(mml3_pr,-match_id)
```



Предскажем победу
```{r}
predict(m.logit, mml3_pr, type = "response")
```


