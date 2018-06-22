

Установим пакеты
```{r}
library("dplyr")
library("dummies")
```

```{r}
mml=d
```

```{r}
mml1=dummy(mml$H1)
mml1=as.data.frame(mml1)

mml2=dummy(mml$H2)
mml2=as.data.frame(mml2)

mml3=dummy(mml$H3)
mml3=as.data.frame(mml3)

mml4=dummy(mml$H4)
mml4=as.data.frame(mml4)

mml5=dummy(mml$H5)
mml5=as.data.frame(mml5)
```

```{r}
mml$`Anti-Mage_1`=mml1$H11+mml2$H21+mml3$H31+mml4$H41+mml5$H51
mml$`Anti-Mage_1`=mml1$H11+mml2$H21+mml3$H31+mml4$H41+mml5$H51
mml$`Axe_1`=mml1$H12+mml2$H22+mml3$H32+mml4$H42+mml5$H52
mml$`Bane_1`=mml1$H13+mml2$H23+mml3$H33+mml4$H43+mml5$H53
mml$`Bloodseeker_1`=mml1$H14+mml2$H24+mml3$H34+mml4$H44+mml5$H54
mml$`Crystal Maiden_1`=mml1$H15+mml2$H25+mml3$H35+mml4$H45+mml5$H55
mml$`Drow Ranger_1`=mml1$H16+mml2$H26+mml3$H36+mml4$H46+mml5$H56
mml$`Earthshaker_1`=mml1$H17+mml2$H27+mml3$H37+mml4$H47+mml5$H57
mml$`Juggernaut_1`=mml1$H18+mml2$H28+mml3$H38+mml4$H48+mml5$H58
mml$`Mirana_1`=mml1$H19+mml2$H29+mml3$H39+mml4$H49+mml5$H59
mml$`Shadow Fiend_1`=mml1$H111+mml2$H211+mml3$H311+mml4$H411+mml5$H511
mml$`Morphling_1`=mml1$H110+mml2$H210+mml3$H310+mml4$H410+mml5$H510
mml$`Phantom Lancer_1`=mml1$H112+mml2$H212+mml3$H312+mml4$H412+mml5$H512
mml$`Puck_1`=mml1$H113+mml2$H213+mml3$H313+mml4$H413+mml5$H513
mml$`Pudge_1`=mml1$H114+mml2$H214+mml3$H314+mml4$H414+mml5$H514
mml$`Razor_1`=mml1$H115+mml2$H215+mml3$H315+mml4$H415+mml5$H515
mml$`Sand King_1`=mml1$H116+mml2$H216+mml3$H316+mml4$H416+mml5$H516
mml$`Storm Spirit_1`=mml1$H117+mml2$H217+mml3$H317+mml4$H417+mml5$H517
mml$`Sven_1`=mml1$H118+mml2$H218+mml3$H318+mml4$H418+mml5$H518
mml$`Tiny_1`=mml1$H119+mml2$H219+mml3$H319+mml4$H419+mml5$H519
mml$`Vengeful Spirit_1`=mml1$H120+mml2$H220+mml3$H320+mml4$H420+mml5$H520
mml$`Windranger_1`=mml1$H121+mml2$H221+mml3$H321+mml4$H421+mml5$H521
mml$`Zeus_1`=mml1$H122+mml2$H222+mml3$H322+mml4$H422+mml5$H522
mml$`Kunkka_1`=mml1$H123+mml2$H223+mml3$H323+mml4$H423+mml5$H523
mml$`Lina_1`=mml1$H125+mml2$H225+mml3$H325+mml4$H425+mml5$H525
mml$`Lich_1`=mml1$H131+mml2$H231+mml3$H331+mml4$H431+mml5$H531
mml$`Lion_1`=mml1$H126+mml2$H226+mml3$H326+mml4$H426+mml5$H526
mml$`Shadow Shaman_1`=mml1$H127+mml2$H227+mml3$H327+mml4$H427+mml5$H527
mml$`Slardar_1`=mml1$H128+mml2$H228+mml3$H328+mml4$H428+mml5$H528
mml$`Tidehunter_1`=mml1$H129+mml2$H229+mml3$H329+mml4$H429+mml5$H529
mml$`Witch Doctor_1`=mml1$H130+mml2$H230+mml3$H330+mml4$H430+mml5$H530
mml$`Riki_1`=mml1$H132+mml2$H232+mml3$H332+mml4$H432+mml5$H532
mml$`Enigma_1`=mml1$H133+mml2$H233+mml3$H333+mml4$H433+mml5$H533
mml$`Tinker_1`=mml1$H134+mml2$H234+mml3$H334+mml4$H434+mml5$H534
mml$`Sniper_1`=mml1$H135+mml2$H235+mml3$H335+mml4$H435+mml5$H535
mml$`Necrophos_1`=mml1$H136+mml2$H236+mml3$H336+mml4$H436+mml5$H536
mml$`Warlock_1`=mml1$H137+mml2$H237+mml3$H337+mml4$H437+mml5$H537
mml$`Beastmaster_1`=mml1$H138+mml2$H238+mml3$H338+mml4$H438+mml5$H538
mml$`Queen of Pain_1`=mml1$H139+mml2$H239+mml3$H339+mml4$H439+mml5$H539
mml$`Venomancer_1`=mml1$H140+mml2$H240+mml3$H340+mml4$H440+mml5$H540
mml$`Faceless Void_1`=mml1$H141+mml2$H241+mml3$H341+mml4$H441+mml5$H541
mml$`Wraith King_1`=mml1$H142+mml2$H242+mml3$H342+mml4$H442+mml5$H542
mml$`Death Prophet_1`=mml1$H143+mml2$H243+mml3$H343+mml4$H443+mml5$H543
mml$`Phantom Assassin_1`=mml1$H144+mml2$H244+mml3$H344+mml4$H444+mml5$H544
mml$`Pugna_1`=mml1$H145+mml2$H245+mml3$H345+mml4$H445+mml5$H545
mml$`Templar Assassin_1`=mml1$H146+mml2$H246+mml3$H346+mml4$H446+mml5$H546
mml$`Viper_1`=mml1$H147+mml2$H247+mml3$H347+mml4$H447+mml5$H547
mml$`Luna_1`=mml1$H148+mml2$H248+mml3$H348+mml4$H448+mml5$H548
mml$`Dragon Knight_1`=mml1$H149+mml2$H249+mml3$H349+mml4$H449+mml5$H549
mml$`Dazzle_1`=mml1$H150+mml2$H250+mml3$H350+mml4$H450+mml5$H550
mml$`Clockwerk_1`=mml1$H151+mml2$H251+mml3$H351+mml4$H451+mml5$H551
mml$`Leshrac_1`=mml1$H152+mml2$H252+mml3$H352+mml4$H452+mml5$H552
mml$`Nature's Prophet_1`=mml1$H153+mml2$H253+mml3$H353+mml4$H453+mml5$H553
mml$`Lifestealer_1`=mml1$H154+mml2$H254+mml3$H354+mml4$H454+mml5$H554
mml$`Dark Seer_1`=mml1$H155+mml2$H255+mml3$H355+mml4$H455+mml5$H555
mml$`Clinkz_1`=mml1$H156+mml2$H256+mml3$H356+mml4$H456+mml5$H556
mml$`Omniknight_1`=mml1$H157+mml2$H257+mml3$H357+mml4$H457+mml5$H557
mml$`Enchantress_1`=mml1$H158+mml2$H258+mml3$H358+mml4$H458+mml5$H558
mml$`Huskar_1`=mml1$H159+mml2$H259+mml3$H359+mml4$H459+mml5$H559
mml$`Night Stalker_1`=mml1$H160+mml2$H260+mml3$H360+mml4$H460+mml5$H560
mml$`Broodmother_1`=mml1$H161+mml2$H261+mml3$H361+mml4$H461+mml5$H561
mml$`Bounty Hunter_1`=mml1$H162+mml2$H262+mml3$H362+mml4$H462+mml5$H562
mml$`Weaver_1`=mml1$H163+mml2$H263+mml3$H363+mml4$H463+mml5$H563
mml$`Jakiro_1`=mml1$H164+mml2$H264+mml3$H364+mml4$H464+mml5$H564
mml$`Batrider_1`=mml1$H165+mml2$H265+mml3$H365+mml4$H465+mml5$H565
mml$`Chen_1`=mml1$H166+mml2$H266+mml3$H366+mml4$H466+mml5$H566
mml$`Spectre_1`=mml1$H167+mml2$H267+mml3$H367+mml4$H467+mml5$H567
mml$`Doom_1`=mml1$H169+mml2$H269+mml3$H369+mml4$H469+mml5$H569
mml$`Ancient Apparition_1`=mml1$H168+mml2$H268+mml3$H368+mml4$H468+mml5$H568
mml$`Ursa_1`=mml1$H170+mml2$H270+mml3$H370+mml4$H470+mml5$H570
mml$`Spirit Breaker_1`=mml1$H171+mml2$H271+mml3$H371+mml4$H471+mml5$H571
mml$`Gyrocopter_1`=mml1$H172+mml2$H272+mml3$H372+mml4$H472+mml5$H572
mml$`Alchemist_1`=mml1$H173+mml2$H273+mml3$H373+mml4$H473+mml5$H573
mml$`Invoker_1`=mml1$H174+mml2$H274+mml3$H374+mml4$H474+mml5$H574
mml$`Silencer_1`=mml1$H175+mml2$H275+mml3$H375+mml4$H475+mml5$H575
mml$`Outworld Devourer_1`=mml1$H176+mml2$H276+mml3$H376+mml4$H476+mml5$H576
mml$`Lycan_1`=mml1$H177+mml2$H277+mml3$H377+mml4$H477+mml5$H577
mml$`Brewmaster_1`=mml1$H178+mml2$H278+mml3$H378+mml4$H478+mml5$H578
mml$`Shadow Demon_1`=mml1$H179+mml2$H279+mml3$H379+mml4$H479+mml5$H579
mml$`Lone Druid_1`=mml1$H180+mml2$H280+mml3$H380+mml4$H480+mml5$H580
mml$`Chaos Knight_1`=mml1$H181+mml2$H281+mml3$H381+mml4$H481+mml5$H581
mml$`Meepo_1`=mml1$H182+mml2$H282+mml3$H382+mml4$H482+mml5$H582
mml$`Treant Protector_1`=mml1$H183+mml2$H283+mml3$H383+mml4$H483+mml5$H583
mml$`Ogre Magi_1`=mml1$H184+mml2$H284+mml3$H384+mml4$H484+mml5$H584
mml$`Undying_1`=mml1$H185+mml2$H285+mml3$H385+mml4$H485+mml5$H585
mml$`Rubick_1`=mml1$H186+mml2$H286+mml3$H386+mml4$H486+mml5$H586
mml$`Disruptor_1`=mml1$H187+mml2$H287+mml3$H387+mml4$H487+mml5$H587
mml$`Nyx Assassin_1`=mml1$H188+mml2$H288+mml3$H388+mml4$H488+mml5$H588
mml$`Naga Siren_1`=mml1$H189+mml2$H289+mml3$H389+mml4$H489+mml5$H589
mml$`Keeper of the Light_1`=mml1$H190+mml2$H290+mml3$H390+mml4$H490+mml5$H590
mml$`Io_1`=mml1$H191+mml2$H291+mml3$H391+mml4$H491+mml5$H591
mml$`Visage_1`=mml1$H192+mml2$H292+mml3$H392+mml4$H492+mml5$H592
mml$`Slark_1`=mml1$H193+mml2$H293+mml3$H393+mml4$H493+mml5$H593
mml$`Medusa_1`=mml1$H194+mml2$H294+mml3$H394+mml4$H494+mml5$H594
mml$`Troll Warlord_1`=mml1$H195+mml2$H295+mml3$H395+mml4$H495+mml5$H595
mml$`Centaur Warrunner_1`=mml1$H196+mml2$H296+mml3$H396+mml4$H496+mml5$H596
mml$`Magnus_1`=mml1$H197+mml2$H297+mml3$H397+mml4$H497+mml5$H597
mml$`Timbersaw_1`=mml1$H198+mml2$H298+mml3$H398+mml4$H498+mml5$H598
mml$`Bristleback_1`=mml1$H199+mml2$H299+mml3$H399+mml4$H499+mml5$H599
mml$`Tusk_1`=mml1$H1100+mml2$H2100+mml3$H3100+mml4$H4100+mml5$H5100
mml$`Skywrath Mage_1`=mml1$H1101+mml2$H2101+mml3$H3101+mml4$H4101+mml5$H5101
mml$`Abaddon_1`=mml1$H1102+mml2$H2102+mml3$H3102+mml4$H4102+mml5$H5102
mml$`Elder Titan_1`=mml1$H1103+mml2$H2103+mml3$H3103+mml4$H4103+mml5$H5103
mml$`Legion Commander_1`=mml1$H1104+mml2$H2104+mml3$H3104+mml4$H4104+mml5$H5104
mml$`Ember Spirit_1`=mml1$H1106+mml2$H2106+mml3$H3106+mml4$H4106+mml5$H5106
mml$`Earth Spirit_1`=mml1$H1107+mml2$H2107+mml3$H3107+mml4$H4107+mml5$H5107
mml$`Terrorblade_1`=mml1$H1109+mml2$H2109+mml3$H3109+mml4$H4109+mml5$H5109
mml$`Phoenix_1`=mml1$H1110+mml2$H2110+mml3$H3110+mml4$H4110+mml5$H5110
mml$`Oracle_1`=mml1$H1111+mml2$H2111+mml3$H3111+mml4$H4111+mml5$H5111
mml$`Techies_1`=mml1$H1105+mml2$H2105+mml3$H3105+mml4$H4105+mml5$H5105
mml$`Winter Wyvern_1`=mml1$H1112+mml2$H2112+mml3$H3112+mml4$H4112+mml5$H5112
mml$`Arc Warden_1`=mml1$H1113+mml2$H2113+mml3$H3113+mml4$H4113+mml5$H5113
mml$`Underlord_1`=mml1$H1108+mml2$H2108+mml3$H3108+mml4$H4108+mml5$H5108
mml$`Monkey King_1`=mml1$H1114+mml2$H2114+mml3$H3114+mml4$H4114+mml5$H5114
mml$`Pangolier_1`=mml1$H1120+mml2$H2120+mml3$H3120+mml4$H4120+mml5$H5120
mml$`Dark Willow_1`=mml1$H1119+mml2$H2119+mml3$H3119+mml4$H4119+mml5$H5119


```


Добавим тёмных

```{r}
mml10=dummy(mml$H10)
mml10=as.data.frame(mml10)

mml9=dummy(mml$H9)
mml9=as.data.frame(mml9)

mml8=dummy(mml$H8)
mml8=as.data.frame(mml8)

mml7=dummy(mml$H7)
mml7=as.data.frame(mml7)

mml6=dummy(mml$H6)
mml6=as.data.frame(mml6)

```


```{r}
mml$`Anti-Mage_0`=mml6$H61+mml7$H71+mml8$H81+mml9$H91+mml10$H101
mml$`Axe_0`=mml6$H62+mml7$H72+mml8$H82+mml9$H92+mml10$H102
mml$`Bane_0`=mml6$H63+mml7$H73+mml8$H83+mml9$H93+mml10$H103
mml$`Bloodseeker_0`=mml6$H64+mml7$H74+mml8$H84+mml9$H94+mml10$H104
mml$`Crystal Maiden_0`=mml6$H65+mml7$H75+mml8$H85+mml9$H95+mml10$H105
mml$`Drow Ranger_0`=mml6$H66+mml7$H76+mml8$H86+mml9$H96+mml10$H106
mml$`Earthshaker_0`=mml6$H67+mml7$H77+mml8$H87+mml9$H97+mml10$H107
mml$`Juggernaut_0`=mml6$H68+mml7$H78+mml8$H88+mml9$H98+mml10$H108
mml$`Mirana_0`=mml6$H69+mml7$H79+mml8$H89+mml9$H99+mml10$H109
mml$`Shadow Fiend_0`=mml6$H611+mml7$H711+mml8$H811+mml9$H911+mml10$H1011
mml$`Morphling_0`=mml6$H610+mml7$H710+mml8$H810+mml9$H910+mml10$H1010
mml$`Phantom Lancer_0`=mml6$H612+mml7$H712+mml8$H812+mml9$H912+mml10$H1012
mml$`Puck_0`=mml6$H613+mml7$H713+mml8$H813+mml9$H913+mml10$H1013
mml$`Pudge_0`=mml6$H614+mml7$H714+mml8$H814+mml9$H914+mml10$H1014
mml$`Razor_0`=mml6$H615+mml7$H715+mml8$H815+mml9$H915+mml10$H1015
mml$`Sand King_0`=mml6$H616+mml7$H716+mml8$H816+mml9$H916+mml10$H1016
mml$`Storm Spirit_0`=mml6$H617+mml7$H717+mml8$H817+mml9$H917+mml10$H1017
mml$`Sven_0`=mml6$H618+mml7$H718+mml8$H818+mml9$H918+mml10$H1018
mml$`Tiny_0`=mml6$H619+mml7$H719+mml8$H819+mml9$H919+mml10$H1019
mml$`Vengeful Spirit_0`=mml6$H620+mml7$H720+mml8$H820+mml9$H920+mml10$H1020
mml$`Windranger_0`=mml6$H621+mml7$H721+mml8$H821+mml9$H921+mml10$H1021
mml$`Zeus_0`=mml6$H622+mml7$H722+mml8$H822+mml9$H922+mml10$H1022
mml$`Kunkka_0`=mml6$H623+mml7$H723+mml8$H823+mml9$H923+mml10$H1023
mml$`Lina_0`=mml6$H625+mml7$H725+mml8$H825+mml9$H925+mml10$H1025
mml$`Lich_0`=mml6$H631+mml7$H731+mml8$H831+mml9$H931+mml10$H1031
mml$`Lion_0`=mml6$H626+mml7$H726+mml8$H826+mml9$H926+mml10$H1026
mml$`Shadow Shaman_0`=mml6$H627+mml7$H727+mml8$H827+mml9$H927+mml10$H1027
mml$`Slardar_0`=mml6$H628+mml7$H728+mml8$H828+mml9$H928+mml10$H1028
mml$`Tidehunter_0`=mml6$H629+mml7$H729+mml8$H829+mml9$H929+mml10$H1029
mml$`Witch Doctor_0`=mml6$H630+mml7$H730+mml8$H830+mml9$H930+mml10$H1030
mml$`Riki_0`=mml6$H632+mml7$H732+mml8$H832+mml9$H932+mml10$H1032
mml$`Enigma_0`=mml6$H633+mml7$H733+mml8$H833+mml9$H933+mml10$H1033
mml$`Tinker_0`=mml6$H634+mml7$H734+mml8$H834+mml9$H934+mml10$H1034
mml$`Sniper_0`=mml6$H635+mml7$H735+mml8$H835+mml9$H935+mml10$H1035
mml$`Necrophos_0`=mml6$H636+mml7$H736+mml8$H836+mml9$H936+mml10$H1036
mml$`Warlock_0`=mml6$H637+mml7$H737+mml8$H837+mml9$H937+mml10$H1037
mml$`Beastmaster_0`=mml6$H638+mml7$H738+mml8$H838+mml9$H938+mml10$H1038
mml$`Queen of Pain_0`=mml6$H639+mml7$H739+mml8$H839+mml9$H939+mml10$H1039
mml$`Venomancer_0`=mml6$H640+mml7$H740+mml8$H840+mml9$H940+mml10$H1040
mml$`Faceless Void_0`=mml6$H641+mml7$H741+mml8$H841+mml9$H941+mml10$H1041
mml$`Wraith King_0`=mml6$H642+mml7$H742+mml8$H842+mml9$H942+mml10$H1042
mml$`Death Prophet_0`=mml6$H643+mml7$H743+mml8$H843+mml9$H943+mml10$H1043
mml$`Phantom Assassin_0`=mml6$H644+mml7$H744+mml8$H844+mml9$H944+mml10$H1044
mml$`Pugna_0`=mml6$H645+mml7$H745+mml8$H845+mml9$H945+mml10$H1045
mml$`Templar Assassin_0`=mml6$H646+mml7$H746+mml8$H846+mml9$H946+mml10$H1046
mml$`Viper_0`=mml6$H647+mml7$H747+mml8$H847+mml9$H947+mml10$H1047
mml$`Luna_0`=mml6$H648+mml7$H748+mml8$H848+mml9$H948+mml10$H1048
mml$`Dragon Knight_0`=mml6$H649+mml7$H749+mml8$H849+mml9$H949+mml10$H1049
mml$`Dazzle_0`=mml6$H650+mml7$H750+mml8$H850+mml9$H950+mml10$H1050
mml$`Clockwerk_0`=mml6$H651+mml7$H751+mml8$H851+mml9$H951+mml10$H1051
mml$`Leshrac_0`=mml6$H652+mml7$H752+mml8$H852+mml9$H952+mml10$H1052
mml$`Nature's Prophet_0`=mml6$H653+mml7$H753+mml8$H853+mml9$H953+mml10$H1053
mml$`Lifestealer_0`=mml6$H654+mml7$H754+mml8$H854+mml9$H954+mml10$H1054
mml$`Dark Seer_0`=mml6$H655+mml7$H755+mml8$H855+mml9$H955+mml10$H1055
mml$`Clinkz_0`=mml6$H656+mml7$H756+mml8$H856+mml9$H956+mml10$H1056
mml$`Omniknight_0`=mml6$H657+mml7$H757+mml8$H857+mml9$H957+mml10$H1057
mml$`Enchantress_0`=mml6$H658+mml7$H758+mml8$H858+mml9$H958+mml10$H1058
mml$`Huskar_0`=mml6$H659+mml7$H759+mml8$H859+mml9$H959+mml10$H1059
mml$`Night Stalker_0`=mml6$H660+mml7$H760+mml8$H860+mml9$H960+mml10$H1060
mml$`Broodmother_0`=mml6$H661+mml7$H761+mml8$H861+mml9$H961+mml10$H1061
mml$`Bounty Hunter_0`=mml6$H662+mml7$H762+mml8$H862+mml9$H962+mml10$H1062
mml$`Weaver_0`=mml6$H663+mml7$H763+mml8$H863+mml9$H963+mml10$H1063
mml$`Jakiro_0`=mml6$H664+mml7$H764+mml8$H864+mml9$H964+mml10$H1064
mml$`Batrider_0`=mml6$H665+mml7$H765+mml8$H865+mml9$H965+mml10$H1065
mml$`Chen_0`=mml6$H666+mml7$H766+mml8$H866+mml9$H966+mml10$H1066
mml$`Spectre_0`=mml6$H667+mml7$H767+mml8$H867+mml9$H967+mml10$H1067
mml$`Doom_0`=mml6$H669+mml7$H769+mml8$H869+mml9$H969+mml10$H1069
mml$`Ancient Apparition_0`=mml6$H668+mml7$H768+mml8$H868+mml9$H968+mml10$H1068
mml$`Ursa_0`=mml6$H670+mml7$H770+mml8$H870+mml9$H970+mml10$H1070
mml$`Spirit Breaker_0`=mml6$H671+mml7$H771+mml8$H871+mml9$H971+mml10$H1071
mml$`Gyrocopter_0`=mml6$H672+mml7$H772+mml8$H872+mml9$H972+mml10$H1072
mml$`Alchemist_0`=mml6$H673+mml7$H773+mml8$H873+mml9$H973+mml10$H1073
mml$`Invoker_0`=mml6$H674+mml7$H774+mml8$H874+mml9$H974+mml10$H1074
mml$`Silencer_0`=mml6$H675+mml7$H775+mml8$H875+mml9$H975+mml10$H1075
mml$`Outworld Devourer_0`=mml6$H676+mml7$H776+mml8$H876+mml9$H976+mml10$H1076
mml$`Lycan_0`=mml6$H677+mml7$H777+mml8$H877+mml9$H977+mml10$H1077
mml$`Brewmaster_0`=mml6$H678+mml7$H778+mml8$H878+mml9$H978+mml10$H1078
mml$`Shadow Demon_0`=mml6$H679+mml7$H779+mml8$H879+mml9$H979+mml10$H1079
mml$`Lone Druid_0`=mml6$H680+mml7$H780+mml8$H880+mml9$H980+mml10$H1080
mml$`Chaos Knight_0`=mml6$H681+mml7$H781+mml8$H881+mml9$H981+mml10$H1081
mml$`Meepo_0`=mml6$H682+mml7$H782+mml8$H882+mml9$H982+mml10$H1082
mml$`Treant Protector_0`=mml6$H683+mml7$H783+mml8$H883+mml9$H983+mml10$H1083
mml$`Ogre Magi_0`=mml6$H684+mml7$H784+mml8$H884+mml9$H984+mml10$H1084
mml$`Undying_0`=mml6$H685+mml7$H785+mml8$H885+mml9$H985+mml10$H1085
mml$`Rubick_0`=mml6$H686+mml7$H786+mml8$H886+mml9$H986+mml10$H1086
mml$`Disruptor_0`=mml6$H687+mml7$H787+mml8$H887+mml9$H987+mml10$H1087
mml$`Nyx Assassin_0`=mml6$H688+mml7$H788+mml8$H888+mml9$H988+mml10$H1088
mml$`Naga Siren_0`=mml6$H689+mml7$H789+mml8$H889+mml9$H989+mml10$H1089
mml$`Keeper of the Light_0`=mml6$H690+mml7$H790+mml8$H890+mml9$H990+mml10$H1090
mml$`Io_0`=mml6$H691+mml7$H791+mml8$H891+mml9$H991+mml10$H1091
mml$`Visage_0`=mml6$H692+mml7$H792+mml8$H892+mml9$H992+mml10$H1092
mml$`Slark_0`=mml6$H693+mml7$H793+mml8$H893+mml9$H993+mml10$H1093
mml$`Medusa_0`=mml6$H694+mml7$H794+mml8$H894+mml9$H994+mml10$H1094
mml$`Troll Warlord_0`=mml6$H695+mml7$H795+mml8$H895+mml9$H995+mml10$H1095
mml$`Centaur Warrunner_0`=mml6$H696+mml7$H796+mml8$H896+mml9$H996+mml10$H1096
mml$`Magnus_0`=mml6$H697+mml7$H797+mml8$H897+mml9$H997+mml10$H1097
mml$`Timbersaw_0`=mml6$H698+mml7$H798+mml8$H898+mml9$H998+mml10$H1098
mml$`Bristleback_0`=mml6$H699+mml7$H799+mml8$H899+mml9$H999+mml10$H1099
mml$`Tusk_0`=mml6$H6100+mml7$H7100+mml8$H8100+mml9$H9100+mml10$H10100
mml$`Skywrath Mage_0`=mml6$H6101+mml7$H7101+mml8$H8101+mml9$H9101+mml10$H10101
mml$`Abaddon_0`=mml6$H6102+mml7$H7102+mml8$H8102+mml9$H9102+mml10$H10102
mml$`Elder Titan_0`=mml6$H6103+mml7$H7103+mml8$H8103+mml9$H9103+mml10$H10103
mml$`Legion Commander_0`=mml6$H6104+mml7$H7104+mml8$H8104+mml9$H9104+mml10$H10104
mml$`Ember Spirit_0`=mml6$H6106+mml7$H7106+mml8$H8106+mml9$H9106+mml10$H10106
mml$`Earth Spirit_0`=mml6$H6107+mml7$H7107+mml8$H8107+mml9$H9107+mml10$H10107
mml$`Terrorblade_0`=mml6$H6109+mml7$H7109+mml8$H8109+mml9$H9109+mml10$H10109
mml$`Phoenix_0`=mml6$H6110+mml7$H7110+mml8$H8110+mml9$H9110+mml10$H10110
mml$`Oracle_0`=mml6$H6111+mml7$H7111+mml8$H8111+mml9$H9111+mml10$H10111
mml$`Techies_0`=mml6$H6105+mml7$H7105+mml8$H8105+mml9$H9105+mml10$H10105
mml$`Winter Wyvern_0`=mml6$H6112+mml7$H7112+mml8$H8112+mml9$H9112+mml10$H10112
mml$`Arc Warden_0`=mml6$H6113+mml7$H7113+mml8$H8113+mml9$H9113+mml10$H10113
mml$`Underlord_0`=mml6$H6108+mml7$H7108+mml8$H8108+mml9$H9108+mml10$H10108
mml$`Monkey King_0`=mml6$H6114+mml7$H7114+mml8$H8114+mml9$H9114+mml10$H10114
mml$`Pangolier_0`=mml6$H6120+mml7$H7120+mml8$H8120+mml9$H9120+mml10$H10120
mml$`Dark Willow_0`=mml6$H6119+mml7$H7119+mml8$H8119+mml9$H9119+mml10$H10119

```


```{r}
library(xlsx)
write.xlsx(perevod, "perevod.xlsx")
```
Выкинем говняшку

```{r}
mml_test=filter(mml,Match_id>3952315527)
```


```{r}
mml_trane=filter(mml,Match_id<=3952315527)
```

```{r}
mml_trane=select(mml_trane,-Match_id,-Lobby_type,-Game_mode,-Leagueid,-H1,-H2,-H3,-H4,-H5,-H6,-H7,-H8,-H9,-H10)
mml_test=select(mml_test,-Match_id,-Lobby_type,-Game_mode,-Leagueid,-H1,-H2,-H3,-H4,-H5,-H6,-H7,-H8,-H9,-H10,-Radiant_wit)
```


```{r}
m.logit <- glm(Radiant_wit~., data = mml_trane, x = TRUE, family = binomial(link = "logit"))
```


Часть с Проверкой на обучающей выборке!

```{r}
pred = predict(m.logit, newdata = prediction1, type = "response")
```

```{r}

pred0.5 <- ifelse(pred > 0.5,1,0)
head(pred0.5)
caret::confusionMatrix(pred0.5, mml_trane$Radiant_wit)
```



```{r}
library(pROC)
ROCfull = roc(response = mml_trane$Radiant_wit, predictor = pred)
plot(ROCfull)
plot(ROCfull, legacy.axes=T)
pROC::auc(ROCfull)
```

Проверка на тетсовой выборке!

```{r}
pred_test = predict(m.logit, newdata = mml_test, type = "response")
```

```{r}
pred0.5 <- ifelse(pred_test > 0.5,1,0)
head(pred0.5)
caret::confusionMatrix(pred0.5, mml_test$Radiant_wit)
```


```{r}
ROCfull = roc(response = mml_test$Radiant_wit, predictor = pred_test)
plot(ROCfull)
plot(ROCfull, legacy.axes=T)
pROC::auc(ROCfull)
```


```{r}
summary(m.logit,max.print=200)
```

Бустинг

```{r}
library(gbm)
boost.boston_3=gbm(Radiant_wit~.,data=mml_trane, distribution="bernoulli", n.trees=2500,                  interaction.depth=5, shrinkage=0.2)
```

```{r}
yhat.boost=predict(boost.boston_3,newdata=mml_test, n.trees=2500)
```


```{r}
ROCfull = roc(response = mml_test$Radiant_wit, predictor = yhat.boost)
plot(ROCfull)
plot(ROCfull, legacy.axes=T)
pROC::auc(ROCfull)
```

```{r}
sup=(yhat.boost+pred_test*2)/3
```

```{r}
ROCfull = roc(response = mml_test$Radiant_wit, predictor = sup)
plot(ROCfull)
plot(ROCfull, legacy.axes=T)
pROC::auc(ROCfull)
```


Stacking

```{r}
dataStack = data.frame(boo = predict(boost.boston_3, newdata = mml_trane,n.trees=2500), 
                       lm = predict(m.logit, newdata = mml_trane), 
                                              Radiant_wit = mml_trane$Radiant_wit)
```

```{r}
library(caret)
model.tree = train(Radiant_wit~., data=dataStack, method = "ctree")
```

```{r}
dataStack.test = data.frame(boo = yhat.boost , lm = pred_test)
pred.tree = predict(model.tree, newdata = dataStack.test)
```

```{r}
save(model.tree, file="edin_v_5_itog_for_ABC.RData")
```



```{r}
ROCfull = roc(response = mml_test$Radiant_wit, predictor =pred.tree)
plot(ROCfull)
plot(ROCfull, legacy.axes=T)
pROC::auc(ROCfull)
```


