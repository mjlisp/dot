;;; emoji.el --- Input method for emoji

;; Copyright (C) 2015 Chris Zheng.

;; Author: Chris Zheng <chriszheng99@gmail.com>
;; Created: 2015-09-01
;; Version: 20150901
;; X-Original-Version: 0.1
;; Keywords: Emoji, input method

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; Define an input method for Emoji.

;;; Installation:

;; Make sure to place `emoji.el' somewhere in the load-path and
;; add `(require 'emoji)' to init file.

;;; Code:

(register-input-method
 "emoji" "UTF-8" 'quail-use-package
 "😊" "Emoji input method.")

(require 'quail)

(quail-define-package
 "emoji" "UTF-8" "😊" t
 "An Emoji input method." nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 (":smile:" ["\x1f604"])	; SMILING FACE WITH OPEN MOUTH AND SMILING EYES
 (":smiley:" ["\x1f603"])	; SMILING FACE WITH OPEN MOUTH
 (":grinning:" ["\x1f600"])	; GRINNING FACE
 (":blush:" ["\x1f60a"])	; SMILING FACE WITH SMILING EYES
 (":relaxed:" ["\x263a"])	; WHITE SMILING FACE
 (":wink:" ["\x1f609"])	; WINKING FACE
 (":heart_eyes:" ["\x1f60d"])	; SMILING FACE WITH HEART-SHAPED EYES
 (":kissing_heart:" ["\x1f618"])	; FACE THROWING A KISS
 (":kissing_closed_eyes:" ["\x1f61a"])	; KISSING FACE WITH CLOSED EYES
 (":kissing:" ["\x1f617"])	; KISSING FACE
 (":kissing_smiling_eyes:" ["\x1f619"])	; KISSING FACE WITH SMILING EYES
 (":stuck_out_tongue_winking_eye:" ["\x1f61c"])	; FACE WITH STUCK-OUT TONGUE AND WINKING EYE
 (":stuck_out_tongue_closed_eyes:" ["\x1f61d"])	; FACE WITH STUCK-OUT TONGUE AND TIGHTLY-CLOSED EYES
 (":stuck_out_tongue:" ["\x1f61b"])	; FACE WITH STUCK-OUT TONGUE
 (":flushed:" ["\x1f633"])	; FLUSHED FACE
 (":grin:" ["\x1f601"])	; GRINNING FACE WITH SMILING EYES
 (":pensive:" ["\x1f614"])	; PENSIVE FACE
 (":relieved:" ["\x1f60c"])	; RELIEVED FACE
 (":unamused:" ["\x1f612"])	; UNAMUSED FACE
 (":disappointed:" ["\x1f61e"])	; DISAPPOINTED FACE
 (":persevere:" ["\x1f623"])	; PERSEVERING FACE
 (":cry:" ["\x1f622"])	; CRYING FACE
 (":joy:" ["\x1f602"])	; FACE WITH TEARS OF JOY
 (":sob:" ["\x1f62d"])	; LOUDLY CRYING FACE
 (":sleepy:" ["\x1f62a"])	; SLEEPY FACE
 (":disappointed_relieved:" ["\x1f625"])	; DISAPPOINTED BUT RELIEVED FACE
 (":cold_sweat:" ["\x1f630"])	; FACE WITH OPEN MOUTH AND COLD SWEAT
 (":sweat_smile:" ["\x1f605"])	; SMILING FACE WITH OPEN MOUTH AND COLD SWEAT
 (":sweat:" ["\x1f613"])	; FACE WITH COLD SWEAT
 (":weary:" ["\x1f629"])	; WEARY FACE
 (":tired_face:" ["\x1f62b"])	; TIRED FACE
 (":fearful:" ["\x1f628"])	; FEARFUL FACE
 (":scream:" ["\x1f631"])	; FACE SCREAMING IN FEAR
 (":angry:" ["\x1f620"])	; ANGRY FACE
 (":rage:" ["\x1f621"])	; POUTING FACE
 (":triumph:" ["\x1f624"])	; FACE WITH LOOK OF TRIUMPH
 (":confounded:" ["\x1f616"])	; CONFOUNDED FACE
 (":laughing:" ["\x1f606"])	; SMILING FACE WITH OPEN MOUTH AND TIGHTLY-CLOSED EYES
 (":yum:" ["\x1f60b"])	; FACE SAVOURING DELICIOUS FOOD
 (":mask:" ["\x1f637"])	; FACE WITH MEDICAL MASK
 (":sunglasses:" ["\x1f60e"])	; SMILING FACE WITH SUNGLASSES
 (":sleeping:" ["\x1f634"])	; SLEEPING FACE
 (":dizzy_face:" ["\x1f635"])	; DIZZY FACE
 (":astonished:" ["\x1f632"])	; ASTONISHED FACE
 (":worried:" ["\x1f61f"])	; WORRIED FACE
 (":frowning:" ["\x1f626"])	; FROWNING FACE WITH OPEN MOUTH
 (":anguished:" ["\x1f627"])	; ANGUISHED FACE
 (":smiling_imp:" ["\x1f608"])	; SMILING FACE WITH HORNS
 (":imp:" ["\x1f47f"])	; IMP
 (":open_mouth:" ["\x1f62e"])	; FACE WITH OPEN MOUTH
 (":grimacing:" ["\x1f62c"])	; GRIMACING FACE
 (":neutral_face:" ["\x1f610"])	; NEUTRAL FACE
 (":confused:" ["\x1f615"])	; CONFUSED FACE
 (":hushed:" ["\x1f62f"])	; HUSHED FACE
 (":no_mouth:" ["\x1f636"])	; FACE WITHOUT MOUTH
 (":innocent:" ["\x1f607"])	; SMILING FACE WITH HALO
 (":smirk:" ["\x1f60f"])	; SMIRKING FACE
 (":expressionless:" ["\x1f611"])	; EXPRESSIONLESS FACE
 (":man_with_gua_pi_mao:" ["\x1f472"])	; MAN WITH GUA PI MAO
 (":man_with_turban:" ["\x1f473"])	; MAN WITH TURBAN
 (":cop:" ["\x1f46e"])	; POLICE OFFICER
 (":construction_worker:" ["\x1f477"])	; CONSTRUCTION WORKER
 (":guardsman:" ["\x1f482"])	; GUARDSMAN
 (":baby:" ["\x1f476"])	; BABY
 (":boy:" ["\x1f466"])	; BOY
 (":girl:" ["\x1f467"])	; GIRL
 (":man:" ["\x1f468"])	; MAN
 (":woman:" ["\x1f469"])	; WOMAN
 (":older_man:" ["\x1f474"])	; OLDER MAN
 (":older_woman:" ["\x1f475"])	; OLDER WOMAN
 (":person_with_blond_hair:" ["\x1f471"])	; PERSON WITH BLOND HAIR
 (":angel:" ["\x1f47c"])	; BABY ANGEL
 (":princess:" ["\x1f478"])	; PRINCESS
 (":smiley_cat:" ["\x1f63a"])	; SMILING CAT FACE WITH OPEN MOUTH
 (":smile_cat:" ["\x1f638"])	; GRINNING CAT FACE WITH SMILING EYES
 (":heart_eyes_cat:" ["\x1f63b"])	; SMILING CAT FACE WITH HEART-SHAPED EYES
 (":kissing_cat:" ["\x1f63d"])	; KISSING CAT FACE WITH CLOSED EYES
 (":smirk_cat:" ["\x1f63c"])	; CAT FACE WITH WRY SMILE
 (":scream_cat:" ["\x1f640"])	; WEARY CAT FACE
 (":crying_cat_face:" ["\x1f63f"])	; CRYING CAT FACE
 (":joy_cat:" ["\x1f639"])	; CAT FACE WITH TEARS OF JOY
 (":pouting_cat:" ["\x1f63e"])	; POUTING CAT FACE
 (":japanese_ogre:" ["\x1f479"])	; JAPANESE OGRE
 (":japanese_goblin:" ["\x1f47a"])	; JAPANESE GOBLIN
 (":see_no_evil:" ["\x1f648"])	; SEE-NO-EVIL MONKEY
 (":hear_no_evil:" ["\x1f649"])	; HEAR-NO-EVIL MONKEY
 (":speak_no_evil:" ["\x1f64a"])	; SPEAK-NO-EVIL MONKEY
 (":skull:" ["\x1f480"])	; SKULL
 (":alien:" ["\x1f47d"])	; EXTRATERRESTRIAL ALIEN
 (":hankey:" ["\x1f4a9"])	; PILE OF POO
 (":fire:" ["\x1f525"])	; FIRE
 (":sparkles:" ["\x2728"])	; SPARKLES
 (":star2:" ["\x1f31f"])	; GLOWING STAR
 (":dizzy:" ["\x1f4ab"])	; DIZZY SYMBOL
 (":boom:" ["\x1f4a5"])	; COLLISION SYMBOL
 (":anger:" ["\x1f4a2"])	; ANGER SYMBOL
 (":sweat_drops:" ["\x1f4a6"])	; SPLASHING SWEAT SYMBOL
 (":droplet:" ["\x1f4a7"])	; DROPLET
 (":zzz:" ["\x1f4a4"])	; SLEEPING SYMBOL
 (":dash:" ["\x1f4a8"])	; DASH SYMBOL
 (":ear:" ["\x1f442"])	; EAR
 (":eyes:" ["\x1f440"])	; EYES
 (":nose:" ["\x1f443"])	; NOSE
 (":tongue:" ["\x1f445"])	; TONGUE
 (":lips:" ["\x1f444"])	; MOUTH
 (":+1:" ["\x1f44d"])	; THUMBS UP SIGN
 (":-1:" ["\x1f44e"])	; THUMBS DOWN SIGN
 (":ok_hand:" ["\x1f44c"])	; OK HAND SIGN
 (":facepunch:" ["\x1f44a"])	; FISTED HAND SIGN
 (":fist:" ["\x270a"])	; RAISED FIST
 (":v:" ["\x270c"])	; VICTORY HAND
 (":wave:" ["\x1f44b"])	; WAVING HAND SIGN
 (":hand:" ["\x270b"])	; RAISED HAND
 (":open_hands:" ["\x1f450"])	; OPEN HANDS SIGN
 (":point_up_2:" ["\x1f446"])	; WHITE UP POINTING BACKHAND INDEX
 (":point_down:" ["\x1f447"])	; WHITE DOWN POINTING BACKHAND INDEX
 (":point_right:" ["\x1f449"])	; WHITE RIGHT POINTING BACKHAND INDEX
 (":point_left:" ["\x1f448"])	; WHITE LEFT POINTING BACKHAND INDEX
 (":raised_hands:" ["\x1f64c"])	; PERSON RAISING BOTH HANDS IN CELEBRATION
 (":pray:" ["\x1f64f"])	; PERSON WITH FOLDED HANDS
 (":point_up:" ["\x261d"])	; WHITE UP POINTING INDEX
 (":clap:" ["\x1f44f"])	; CLAPPING HANDS SIGN
 (":muscle:" ["\x1f4aa"])	; FLEXED BICEPS
 (":walking:" ["\x1f6b6"])	; PEDESTRIAN
 (":runner:" ["\x1f3c3"])	; RUNNER
 (":dancer:" ["\x1f483"])	; DANCER
 (":couple:" ["\x1f46b"])	; MAN AND WOMAN HOLDING HANDS
 (":family:" ["\x1f46a"])	; FAMILY
 (":two_men_holding_hands:" ["\x1f46c"])	; TWO MEN HOLDING HANDS
 (":two_women_holding_hands:" ["\x1f46d"])	; TWO WOMEN HOLDING HANDS
 (":couplekiss:" ["\x1f48f"])	; KISS
 (":couple_with_heart:" ["\x1f491"])	; COUPLE WITH HEART
 (":dancers:" ["\x1f46f"])	; WOMAN WITH BUNNY EARS
 (":ok_woman:" ["\x1f646"])	; FACE WITH OK GESTURE
 (":no_good:" ["\x1f645"])	; FACE WITH NO GOOD GESTURE
 (":information_desk_person:" ["\x1f481"])	; INFORMATION DESK PERSON
 (":raising_hand:" ["\x1f64b"])	; HAPPY PERSON RAISING ONE HAND
 (":massage:" ["\x1f486"])	; FACE MASSAGE
 (":haircut:" ["\x1f487"])	; HAIRCUT
 (":nail_care:" ["\x1f485"])	; NAIL POLISH
 (":bride_with_veil:" ["\x1f470"])	; BRIDE WITH VEIL
 (":person_with_pouting_face:" ["\x1f64e"])	; PERSON WITH POUTING FACE
 (":person_frowning:" ["\x1f64d"])	; PERSON FROWNING
 (":bow:" ["\x1f647"])	; PERSON BOWING DEEPLY
 (":tophat:" ["\x1f3a9"])	; TOP HAT
 (":crown:" ["\x1f451"])	; CROWN
 (":womans_hat:" ["\x1f452"])	; WOMANS HAT
 (":athletic_shoe:" ["\x1f45f"])	; ATHLETIC SHOE
 (":mans_shoe:" ["\x1f45e"])	; MANS SHOE
 (":sandal:" ["\x1f461"])	; WOMANS SANDAL
 (":high_heel:" ["\x1f460"])	; HIGH-HEELED SHOE
 (":boot:" ["\x1f462"])	; WOMANS BOOTS
 (":shirt:" ["\x1f455"])	; T-SHIRT
 (":necktie:" ["\x1f454"])	; NECKTIE
 (":womans_clothes:" ["\x1f45a"])	; WOMANS CLOTHES
 (":dress:" ["\x1f457"])	; DRESS
 (":running_shirt_with_sash:" ["\x1f3bd"])	; RUNNING SHIRT WITH SASH
 (":jeans:" ["\x1f456"])	; JEANS
 (":kimono:" ["\x1f458"])	; KIMONO
 (":bikini:" ["\x1f459"])	; BIKINI
 (":briefcase:" ["\x1f4bc"])	; BRIEFCASE
 (":handbag:" ["\x1f45c"])	; HANDBAG
 (":pouch:" ["\x1f45d"])	; POUCH
 (":purse:" ["\x1f45b"])	; PURSE
 (":eyeglasses:" ["\x1f453"])	; EYEGLASSES
 (":ribbon:" ["\x1f380"])	; RIBBON
 (":closed_umbrella:" ["\x1f302"])	; CLOSED UMBRELLA
 (":lipstick:" ["\x1f484"])	; LIPSTICK
 (":yellow_heart:" ["\x1f49b"])	; YELLOW HEART
 (":blue_heart:" ["\x1f499"])	; BLUE HEART
 (":purple_heart:" ["\x1f49c"])	; PURPLE HEART
 (":green_heart:" ["\x1f49a"])	; GREEN HEART
 (":heart:" ["\x2764"])	; HEAVY BLACK HEART
 (":broken_heart:" ["\x1f494"])	; BROKEN HEART
 (":heartpulse:" ["\x1f497"])	; GROWING HEART
 (":heartbeat:" ["\x1f493"])	; BEATING HEART
 (":two_hearts:" ["\x1f495"])	; TWO HEARTS
 (":sparkling_heart:" ["\x1f496"])	; SPARKLING HEART
 (":revolving_hearts:" ["\x1f49e"])	; REVOLVING HEARTS
 (":cupid:" ["\x1f498"])	; HEART WITH ARROW
 (":love_letter:" ["\x1f48c"])	; LOVE LETTER
 (":kiss:" ["\x1f48b"])	; KISS MARK
 (":ring:" ["\x1f48d"])	; RING
 (":gem:" ["\x1f48e"])	; GEM STONE
 (":bust_in_silhouette:" ["\x1f464"])	; BUST IN SILHOUETTE
 (":busts_in_silhouette:" ["\x1f465"])	; BUSTS IN SILHOUETTE
 (":speech_balloon:" ["\x1f4ac"])	; SPEECH BALLOON
 (":footprints:" ["\x1f463"])	; FOOTPRINTS
 (":thought_balloon:" ["\x1f4ad"])	; THOUGHT BALLOON
 (":dog:" ["\x1f436"])	; DOG FACE
 (":wolf:" ["\x1f43a"])	; WOLF FACE
 (":cat:" ["\x1f431"])	; CAT FACE
 (":mouse:" ["\x1f42d"])	; MOUSE FACE
 (":hamster:" ["\x1f439"])	; HAMSTER FACE
 (":rabbit:" ["\x1f430"])	; RABBIT FACE
 (":frog:" ["\x1f438"])	; FROG FACE
 (":tiger:" ["\x1f42f"])	; TIGER FACE
 (":koala:" ["\x1f428"])	; KOALA
 (":bear:" ["\x1f43b"])	; BEAR FACE
 (":pig:" ["\x1f437"])	; PIG FACE
 (":pig_nose:" ["\x1f43d"])	; PIG NOSE
 (":cow:" ["\x1f42e"])	; COW FACE
 (":boar:" ["\x1f417"])	; BOAR
 (":monkey_face:" ["\x1f435"])	; MONKEY FACE
 (":monkey:" ["\x1f412"])	; MONKEY
 (":horse:" ["\x1f434"])	; HORSE FACE
 (":sheep:" ["\x1f411"])	; SHEEP
 (":elephant:" ["\x1f418"])	; ELEPHANT
 (":panda_face:" ["\x1f43c"])	; PANDA FACE
 (":penguin:" ["\x1f427"])	; PENGUIN
 (":bird:" ["\x1f426"])	; BIRD
 (":baby_chick:" ["\x1f424"])	; BABY CHICK
 (":hatched_chick:" ["\x1f425"])	; FRONT-FACING BABY CHICK
 (":hatching_chick:" ["\x1f423"])	; HATCHING CHICK
 (":chicken:" ["\x1f414"])	; CHICKEN
 (":snake:" ["\x1f40d"])	; SNAKE
 (":turtle:" ["\x1f422"])	; TURTLE
 (":bug:" ["\x1f41b"])	; BUG
 (":bee:" ["\x1f41d"])	; HONEYBEE
 (":ant:" ["\x1f41c"])	; ANT
 (":beetle:" ["\x1f41e"])	; LADY BEETLE
 (":snail:" ["\x1f40c"])	; SNAIL
 (":octopus:" ["\x1f419"])	; OCTOPUS
 (":shell:" ["\x1f41a"])	; SPIRAL SHELL
 (":tropical_fish:" ["\x1f420"])	; TROPICAL FISH
 (":fish:" ["\x1f41f"])	; FISH
 (":dolphin:" ["\x1f42c"])	; DOLPHIN
 (":whale:" ["\x1f433"])	; SPOUTING WHALE
 (":whale2:" ["\x1f40b"])	; WHALE
 (":cow2:" ["\x1f404"])	; COW
 (":ram:" ["\x1f40f"])	; RAM
 (":rat:" ["\x1f400"])	; RAT
 (":water_buffalo:" ["\x1f403"])	; WATER BUFFALO
 (":tiger2:" ["\x1f405"])	; TIGER
 (":rabbit2:" ["\x1f407"])	; RABBIT
 (":dragon:" ["\x1f409"])	; DRAGON
 (":racehorse:" ["\x1f40e"])	; HORSE
 (":goat:" ["\x1f410"])	; GOAT
 (":rooster:" ["\x1f413"])	; ROOSTER
 (":dog2:" ["\x1f415"])	; DOG
 (":pig2:" ["\x1f416"])	; PIG
 (":mouse2:" ["\x1f401"])	; MOUSE
 (":ox:" ["\x1f402"])	; OX
 (":dragon_face:" ["\x1f432"])	; DRAGON FACE
 (":blowfish:" ["\x1f421"])	; BLOWFISH
 (":crocodile:" ["\x1f40a"])	; CROCODILE
 (":camel:" ["\x1f42b"])	; BACTRIAN CAMEL
 (":dromedary_camel:" ["\x1f42a"])	; DROMEDARY CAMEL
 (":leopard:" ["\x1f406"])	; LEOPARD
 (":cat2:" ["\x1f408"])	; CAT
 (":poodle:" ["\x1f429"])	; POODLE
 (":feet:" ["\x1f43e"])	; PAW PRINTS
 (":bouquet:" ["\x1f490"])	; BOUQUET
 (":cherry_blossom:" ["\x1f338"])	; CHERRY BLOSSOM
 (":tulip:" ["\x1f337"])	; TULIP
 (":four_leaf_clover:" ["\x1f340"])	; FOUR LEAF CLOVER
 (":rose:" ["\x1f339"])	; ROSE
 (":sunflower:" ["\x1f33b"])	; SUNFLOWER
 (":hibiscus:" ["\x1f33a"])	; HIBISCUS
 (":maple_leaf:" ["\x1f341"])	; MAPLE LEAF
 (":leaves:" ["\x1f343"])	; LEAF FLUTTERING IN WIND
 (":fallen_leaf:" ["\x1f342"])	; FALLEN LEAF
 (":herb:" ["\x1f33f"])	; HERB
 (":ear_of_rice:" ["\x1f33e"])	; EAR OF RICE
 (":mushroom:" ["\x1f344"])	; MUSHROOM
 (":cactus:" ["\x1f335"])	; CACTUS
 (":palm_tree:" ["\x1f334"])	; PALM TREE
 (":evergreen_tree:" ["\x1f332"])	; EVERGREEN TREE
 (":deciduous_tree:" ["\x1f333"])	; DECIDUOUS TREE
 (":chestnut:" ["\x1f330"])	; CHESTNUT
 (":seedling:" ["\x1f331"])	; SEEDLING
 (":blossom:" ["\x1f33c"])	; BLOSSOM
 (":globe_with_meridians:" ["\x1f310"])	; GLOBE WITH MERIDIANS
 (":sun_with_face:" ["\x1f31e"])	; SUN WITH FACE
 (":full_moon_with_face:" ["\x1f31d"])	; FULL MOON WITH FACE
 (":new_moon_with_face:" ["\x1f31a"])	; NEW MOON WITH FACE
 (":new_moon:" ["\x1f311"])	; NEW MOON SYMBOL
 (":waxing_crescent_moon:" ["\x1f312"])	; WAXING CRESCENT MOON SYMBOL
 (":first_quarter_moon:" ["\x1f313"])	; FIRST QUARTER MOON SYMBOL
 (":moon:" ["\x1f314"])	; WAXING GIBBOUS MOON SYMBOL
 (":full_moon:" ["\x1f315"])	; FULL MOON SYMBOL
 (":waning_gibbous_moon:" ["\x1f316"])	; WANING GIBBOUS MOON SYMBOL
 (":last_quarter_moon:" ["\x1f317"])	; LAST QUARTER MOON SYMBOL
 (":waning_crescent_moon:" ["\x1f318"])	; WANING CRESCENT MOON SYMBOL
 (":last_quarter_moon_with_face:" ["\x1f31c"])	; LAST QUARTER MOON WITH FACE
 (":first_quarter_moon_with_face:" ["\x1f31b"])	; FIRST QUARTER MOON WITH FACE
 (":crescent_moon:" ["\x1f319"])	; CRESCENT MOON
 (":earth_africa:" ["\x1f30d"])	; EARTH GLOBE EUROPE-AFRICA
 (":earth_americas:" ["\x1f30e"])	; EARTH GLOBE AMERICAS
 (":earth_asia:" ["\x1f30f"])	; EARTH GLOBE ASIA-AUSTRALIA
 (":volcano:" ["\x1f30b"])	; VOLCANO
 (":milky_way:" ["\x1f30c"])	; MILKY WAY
 (":stars:" ["\x1f320"])	; SHOOTING STAR
 (":star:" ["\x2b50"])	; WHITE MEDIUM STAR
 (":sunny:" ["\x2600"])	; BLACK SUN WITH RAYS
 (":partly_sunny:" ["\x26c5"])	; SUN BEHIND CLOUD
 (":cloud:" ["\x2601"])	; CLOUD
 (":zap:" ["\x26a1"])	; HIGH VOLTAGE SIGN
 (":umbrella:" ["\x2614"])	; UMBRELLA WITH RAIN DROPS
 (":snowflake:" ["\x2744"])	; SNOWFLAKE
 (":snowman:" ["\x26c4"])	; SNOWMAN WITHOUT SNOW
 (":cyclone:" ["\x1f300"])	; CYCLONE
 (":foggy:" ["\x1f301"])	; FOGGY
 (":rainbow:" ["\x1f308"])	; RAINBOW
 (":ocean:" ["\x1f30a"])	; WATER WAVE
 (":bamboo:" ["\x1f38d"])	; PINE DECORATION
 (":gift_heart:" ["\x1f49d"])	; HEART WITH RIBBON
 (":dolls:" ["\x1f38e"])	; JAPANESE DOLLS
 (":school_satchel:" ["\x1f392"])	; SCHOOL SATCHEL
 (":mortar_board:" ["\x1f393"])	; GRADUATION CAP
 (":flags:" ["\x1f38f"])	; CARP STREAMER
 (":fireworks:" ["\x1f386"])	; FIREWORKS
 (":sparkler:" ["\x1f387"])	; FIREWORK SPARKLER
 (":wind_chime:" ["\x1f390"])	; WIND CHIME
 (":rice_scene:" ["\x1f391"])	; MOON VIEWING CEREMONY
 (":jack_o_lantern:" ["\x1f383"])	; JACK-O-LANTERN
 (":ghost:" ["\x1f47b"])	; GHOST
 (":santa:" ["\x1f385"])	; FATHER CHRISTMAS
 (":christmas_tree:" ["\x1f384"])	; CHRISTMAS TREE
 (":gift:" ["\x1f381"])	; WRAPPED PRESENT
 (":tanabata_tree:" ["\x1f38b"])	; TANABATA TREE
 (":tada:" ["\x1f389"])	; PARTY POPPER
 (":confetti_ball:" ["\x1f38a"])	; CONFETTI BALL
 (":balloon:" ["\x1f388"])	; BALLOON
 (":crossed_flags:" ["\x1f38c"])	; CROSSED FLAGS
 (":crystal_ball:" ["\x1f52e"])	; CRYSTAL BALL
 (":movie_camera:" ["\x1f3a5"])	; MOVIE CAMERA
 (":camera:" ["\x1f4f7"])	; CAMERA
 (":video_camera:" ["\x1f4f9"])	; VIDEO CAMERA
 (":vhs:" ["\x1f4fc"])	; VIDEOCASSETTE
 (":cd:" ["\x1f4bf"])	; OPTICAL DISC
 (":dvd:" ["\x1f4c0"])	; DVD
 (":minidisc:" ["\x1f4bd"])	; MINIDISC
 (":floppy_disk:" ["\x1f4be"])	; FLOPPY DISK
 (":computer:" ["\x1f4bb"])	; PERSONAL COMPUTER
 (":iphone:" ["\x1f4f1"])	; MOBILE PHONE
 (":phone:" ["\x260e"])	; BLACK TELEPHONE
 (":telephone_receiver:" ["\x1f4de"])	; TELEPHONE RECEIVER
 (":pager:" ["\x1f4df"])	; PAGER
 (":fax:" ["\x1f4e0"])	; FAX MACHINE
 (":satellite:" ["\x1f4e1"])	; SATELLITE ANTENNA
 (":tv:" ["\x1f4fa"])	; TELEVISION
 (":radio:" ["\x1f4fb"])	; RADIO
 (":loud_sound:" ["\x1f50a"])	; SPEAKER WITH THREE SOUND WAVES
 (":sound:" ["\x1f509"])	; SPEAKER WITH ONE SOUND WAVE
 (":speaker:" ["\x1f508"])	; SPEAKER
 (":mute:" ["\x1f507"])	; SPEAKER WITH CANCELLATION STROKE
 (":bell:" ["\x1f514"])	; BELL
 (":no_bell:" ["\x1f515"])	; BELL WITH CANCELLATION STROKE
 (":loudspeaker:" ["\x1f4e2"])	; PUBLIC ADDRESS LOUDSPEAKER
 (":mega:" ["\x1f4e3"])	; CHEERING MEGAPHONE
 (":hourglass_flowing_sand:" ["\x23f3"])	; HOURGLASS WITH FLOWING SAND
 (":hourglass:" ["\x231b"])	; HOURGLASS
 (":alarm_clock:" ["\x23f0"])	; ALARM CLOCK
 (":watch:" ["\x231a"])	; WATCH
 (":unlock:" ["\x1f513"])	; OPEN LOCK
 (":lock:" ["\x1f512"])	; LOCK
 (":lock_with_ink_pen:" ["\x1f50f"])	; LOCK WITH INK PEN
 (":closed_lock_with_key:" ["\x1f510"])	; CLOSED LOCK WITH KEY
 (":key:" ["\x1f511"])	; KEY
 (":mag_right:" ["\x1f50e"])	; RIGHT-POINTING MAGNIFYING GLASS
 (":bulb:" ["\x1f4a1"])	; ELECTRIC LIGHT BULB
 (":flashlight:" ["\x1f526"])	; ELECTRIC TORCH
 (":high_brightness:" ["\x1f506"])	; HIGH BRIGHTNESS SYMBOL
 (":low_brightness:" ["\x1f505"])	; LOW BRIGHTNESS SYMBOL
 (":electric_plug:" ["\x1f50c"])	; ELECTRIC PLUG
 (":battery:" ["\x1f50b"])	; BATTERY
 (":mag:" ["\x1f50d"])	; LEFT-POINTING MAGNIFYING GLASS
 (":bathtub:" ["\x1f6c1"])	; BATHTUB
 (":bath:" ["\x1f6c0"])	; BATH
 (":shower:" ["\x1f6bf"])	; SHOWER
 (":toilet:" ["\x1f6bd"])	; TOILET
 (":wrench:" ["\x1f527"])	; WRENCH
 (":nut_and_bolt:" ["\x1f529"])	; NUT AND BOLT
 (":hammer:" ["\x1f528"])	; HAMMER
 (":door:" ["\x1f6aa"])	; DOOR
 (":smoking:" ["\x1f6ac"])	; SMOKING SYMBOL
 (":bomb:" ["\x1f4a3"])	; BOMB
 (":gun:" ["\x1f52b"])	; PISTOL
 (":hocho:" ["\x1f52a"])	; HOCHO
 (":pill:" ["\x1f48a"])	; PILL
 (":syringe:" ["\x1f489"])	; SYRINGE
 (":moneybag:" ["\x1f4b0"])	; MONEY BAG
 (":yen:" ["\x1f4b4"])	; BANKNOTE WITH YEN SIGN
 (":dollar:" ["\x1f4b5"])	; BANKNOTE WITH DOLLAR SIGN
 (":pound:" ["\x1f4b7"])	; BANKNOTE WITH POUND SIGN
 (":euro:" ["\x1f4b6"])	; BANKNOTE WITH EURO SIGN
 (":credit_card:" ["\x1f4b3"])	; CREDIT CARD
 (":money_with_wings:" ["\x1f4b8"])	; MONEY WITH WINGS
 (":calling:" ["\x1f4f2"])	; MOBILE PHONE WITH RIGHTWARDS ARROW AT LEFT
 (":e-mail:" ["\x1f4e7"])	; E-MAIL SYMBOL
 (":inbox_tray:" ["\x1f4e5"])	; INBOX TRAY
 (":outbox_tray:" ["\x1f4e4"])	; OUTBOX TRAY
 (":email:" ["\x2709"])	; ENVELOPE
 (":envelope_with_arrow:" ["\x1f4e9"])	; ENVELOPE WITH DOWNWARDS ARROW ABOVE
 (":incoming_envelope:" ["\x1f4e8"])	; INCOMING ENVELOPE
 (":postal_horn:" ["\x1f4ef"])	; POSTAL HORN
 (":mailbox:" ["\x1f4eb"])	; CLOSED MAILBOX WITH RAISED FLAG
 (":mailbox_closed:" ["\x1f4ea"])	; CLOSED MAILBOX WITH LOWERED FLAG
 (":mailbox_with_mail:" ["\x1f4ec"])	; OPEN MAILBOX WITH RAISED FLAG
 (":mailbox_with_no_mail:" ["\x1f4ed"])	; OPEN MAILBOX WITH LOWERED FLAG
 (":postbox:" ["\x1f4ee"])	; POSTBOX
 (":package:" ["\x1f4e6"])	; PACKAGE
 (":memo:" ["\x1f4dd"])	; MEMO
 (":page_facing_up:" ["\x1f4c4"])	; PAGE FACING UP
 (":page_with_curl:" ["\x1f4c3"])	; PAGE WITH CURL
 (":bookmark_tabs:" ["\x1f4d1"])	; BOOKMARK TABS
 (":bar_chart:" ["\x1f4ca"])	; BAR CHART
 (":chart_with_upwards_trend:" ["\x1f4c8"])	; CHART WITH UPWARDS TREND
 (":chart_with_downwards_trend:" ["\x1f4c9"])	; CHART WITH DOWNWARDS TREND
 (":scroll:" ["\x1f4dc"])	; SCROLL
 (":clipboard:" ["\x1f4cb"])	; CLIPBOARD
 (":date:" ["\x1f4c5"])	; CALENDAR
 (":calendar:" ["\x1f4c6"])	; TEAR-OFF CALENDAR
 (":card_index:" ["\x1f4c7"])	; CARD INDEX
 (":file_folder:" ["\x1f4c1"])	; FILE FOLDER
 (":open_file_folder:" ["\x1f4c2"])	; OPEN FILE FOLDER
 (":scissors:" ["\x2702"])	; BLACK SCISSORS
 (":pushpin:" ["\x1f4cc"])	; PUSHPIN
 (":paperclip:" ["\x1f4ce"])	; PAPERCLIP
 (":black_nib:" ["\x2712"])	; BLACK NIB
 (":pencil2:" ["\x270f"])	; PENCIL
 (":straight_ruler:" ["\x1f4cf"])	; STRAIGHT RULER
 (":triangular_ruler:" ["\x1f4d0"])	; TRIANGULAR RULER
 (":closed_book:" ["\x1f4d5"])	; CLOSED BOOK
 (":green_book:" ["\x1f4d7"])	; GREEN BOOK
 (":blue_book:" ["\x1f4d8"])	; BLUE BOOK
 (":orange_book:" ["\x1f4d9"])	; ORANGE BOOK
 (":notebook:" ["\x1f4d3"])	; NOTEBOOK
 (":notebook_with_decorative_cover:" ["\x1f4d4"])	; NOTEBOOK WITH DECORATIVE COVER
 (":ledger:" ["\x1f4d2"])	; LEDGER
 (":books:" ["\x1f4da"])	; BOOKS
 (":book:" ["\x1f4d6"])	; OPEN BOOK
 (":bookmark:" ["\x1f516"])	; BOOKMARK
 (":name_badge:" ["\x1f4db"])	; NAME BADGE
 (":microscope:" ["\x1f52c"])	; MICROSCOPE
 (":telescope:" ["\x1f52d"])	; TELESCOPE
 (":newspaper:" ["\x1f4f0"])	; NEWSPAPER
 (":art:" ["\x1f3a8"])	; ARTIST PALETTE
 (":clapper:" ["\x1f3ac"])	; CLAPPER BOARD
 (":microphone:" ["\x1f3a4"])	; MICROPHONE
 (":headphones:" ["\x1f3a7"])	; HEADPHONE
 (":musical_score:" ["\x1f3bc"])	; MUSICAL SCORE
 (":musical_note:" ["\x1f3b5"])	; MUSICAL NOTE
 (":notes:" ["\x1f3b6"])	; MULTIPLE MUSICAL NOTES
 (":musical_keyboard:" ["\x1f3b9"])	; MUSICAL KEYBOARD
 (":violin:" ["\x1f3bb"])	; VIOLIN
 (":trumpet:" ["\x1f3ba"])	; TRUMPET
 (":saxophone:" ["\x1f3b7"])	; SAXOPHONE
 (":guitar:" ["\x1f3b8"])	; GUITAR
 (":space_invader:" ["\x1f47e"])	; ALIEN MONSTER
 (":video_game:" ["\x1f3ae"])	; VIDEO GAME
 (":black_joker:" ["\x1f0cf"])	; PLAYING CARD BLACK JOKER
 (":flower_playing_cards:" ["\x1f3b4"])	; FLOWER PLAYING CARDS
 (":mahjong:" ["\x1f004"])	; MAHJONG TILE RED DRAGON
 (":game_die:" ["\x1f3b2"])	; GAME DIE
 (":dart:" ["\x1f3af"])	; DIRECT HIT
 (":football:" ["\x1f3c8"])	; AMERICAN FOOTBALL
 (":basketball:" ["\x1f3c0"])	; BASKETBALL AND HOOP
 (":soccer:" ["\x26bd"])	; SOCCER BALL
 (":baseball:" ["\x26be"])	; BASEBALL
 (":tennis:" ["\x1f3be"])	; TENNIS RACQUET AND BALL
 (":8ball:" ["\x1f3b1"])	; BILLIARDS
 (":rugby_football:" ["\x1f3c9"])	; RUGBY FOOTBALL
 (":bowling:" ["\x1f3b3"])	; BOWLING
 (":golf:" ["\x26f3"])	; FLAG IN HOLE
 (":mountain_bicyclist:" ["\x1f6b5"])	; MOUNTAIN BICYCLIST
 (":bicyclist:" ["\x1f6b4"])	; BICYCLIST
 (":checkered_flag:" ["\x1f3c1"])	; CHEQUERED FLAG
 (":horse_racing:" ["\x1f3c7"])	; HORSE RACING
 (":trophy:" ["\x1f3c6"])	; TROPHY
 (":ski:" ["\x1f3bf"])	; SKI AND SKI BOOT
 (":snowboarder:" ["\x1f3c2"])	; SNOWBOARDER
 (":swimmer:" ["\x1f3ca"])	; SWIMMER
 (":surfer:" ["\x1f3c4"])	; SURFER
 (":fishing_pole_and_fish:" ["\x1f3a3"])	; FISHING POLE AND FISH
 (":coffee:" ["\x2615"])	; HOT BEVERAGE
 (":tea:" ["\x1f375"])	; TEACUP WITHOUT HANDLE
 (":sake:" ["\x1f376"])	; SAKE BOTTLE AND CUP
 (":baby_bottle:" ["\x1f37c"])	; BABY BOTTLE
 (":beer:" ["\x1f37a"])	; BEER MUG
 (":beers:" ["\x1f37b"])	; CLINKING BEER MUGS
 (":cocktail:" ["\x1f378"])	; COCKTAIL GLASS
 (":tropical_drink:" ["\x1f379"])	; TROPICAL DRINK
 (":wine_glass:" ["\x1f377"])	; WINE GLASS
 (":fork_and_knife:" ["\x1f374"])	; FORK AND KNIFE
 (":pizza:" ["\x1f355"])	; SLICE OF PIZZA
 (":hamburger:" ["\x1f354"])	; HAMBURGER
 (":fries:" ["\x1f35f"])	; FRENCH FRIES
 (":poultry_leg:" ["\x1f357"])	; POULTRY LEG
 (":meat_on_bone:" ["\x1f356"])	; MEAT ON BONE
 (":spaghetti:" ["\x1f35d"])	; SPAGHETTI
 (":curry:" ["\x1f35b"])	; CURRY AND RICE
 (":fried_shrimp:" ["\x1f364"])	; FRIED SHRIMP
 (":bento:" ["\x1f371"])	; BENTO BOX
 (":sushi:" ["\x1f363"])	; SUSHI
 (":fish_cake:" ["\x1f365"])	; FISH CAKE WITH SWIRL DESIGN
 (":rice_ball:" ["\x1f359"])	; RICE BALL
 (":rice_cracker:" ["\x1f358"])	; RICE CRACKER
 (":rice:" ["\x1f35a"])	; COOKED RICE
 (":ramen:" ["\x1f35c"])	; STEAMING BOWL
 (":stew:" ["\x1f372"])	; POT OF FOOD
 (":oden:" ["\x1f362"])	; ODEN
 (":dango:" ["\x1f361"])	; DANGO
 (":egg:" ["\x1f373"])	; COOKING
 (":bread:" ["\x1f35e"])	; BREAD
 (":doughnut:" ["\x1f369"])	; DOUGHNUT
 (":custard:" ["\x1f36e"])	; CUSTARD
 (":icecream:" ["\x1f366"])	; SOFT ICE CREAM
 (":ice_cream:" ["\x1f368"])	; ICE CREAM
 (":shaved_ice:" ["\x1f367"])	; SHAVED ICE
 (":birthday:" ["\x1f382"])	; BIRTHDAY CAKE
 (":cake:" ["\x1f370"])	; SHORTCAKE
 (":cookie:" ["\x1f36a"])	; COOKIE
 (":chocolate_bar:" ["\x1f36b"])	; CHOCOLATE BAR
 (":candy:" ["\x1f36c"])	; CANDY
 (":lollipop:" ["\x1f36d"])	; LOLLIPOP
 (":honey_pot:" ["\x1f36f"])	; HONEY POT
 (":apple:" ["\x1f34e"])	; RED APPLE
 (":green_apple:" ["\x1f34f"])	; GREEN APPLE
 (":tangerine:" ["\x1f34a"])	; TANGERINE
 (":lemon:" ["\x1f34b"])	; LEMON
 (":cherries:" ["\x1f352"])	; CHERRIES
 (":grapes:" ["\x1f347"])	; GRAPES
 (":watermelon:" ["\x1f349"])	; WATERMELON
 (":strawberry:" ["\x1f353"])	; STRAWBERRY
 (":peach:" ["\x1f351"])	; PEACH
 (":melon:" ["\x1f348"])	; MELON
 (":banana:" ["\x1f34c"])	; BANANA
 (":pear:" ["\x1f350"])	; PEAR
 (":pineapple:" ["\x1f34d"])	; PINEAPPLE
 (":sweet_potato:" ["\x1f360"])	; ROASTED SWEET POTATO
 (":eggplant:" ["\x1f346"])	; AUBERGINE
 (":tomato:" ["\x1f345"])	; TOMATO
 (":corn:" ["\x1f33d"])	; EAR OF MAIZE
 (":house:" ["\x1f3e0"])	; HOUSE BUILDING
 (":house_with_garden:" ["\x1f3e1"])	; HOUSE WITH GARDEN
 (":school:" ["\x1f3eb"])	; SCHOOL
 (":office:" ["\x1f3e2"])	; OFFICE BUILDING
 (":post_office:" ["\x1f3e3"])	; JAPANESE POST OFFICE
 (":hospital:" ["\x1f3e5"])	; HOSPITAL
 (":bank:" ["\x1f3e6"])	; BANK
 (":convenience_store:" ["\x1f3ea"])	; CONVENIENCE STORE
 (":love_hotel:" ["\x1f3e9"])	; LOVE HOTEL
 (":hotel:" ["\x1f3e8"])	; HOTEL
 (":wedding:" ["\x1f492"])	; WEDDING
 (":church:" ["\x26ea"])	; CHURCH
 (":department_store:" ["\x1f3ec"])	; DEPARTMENT STORE
 (":european_post_office:" ["\x1f3e4"])	; EUROPEAN POST OFFICE
 (":city_sunrise:" ["\x1f307"])	; SUNSET OVER BUILDINGS
 (":city_sunset:" ["\x1f306"])	; CITYSCAPE AT DUSK
 (":japanese_castle:" ["\x1f3ef"])	; JAPANESE CASTLE
 (":european_castle:" ["\x1f3f0"])	; EUROPEAN CASTLE
 (":tent:" ["\x26fa"])	; TENT
 (":factory:" ["\x1f3ed"])	; FACTORY
 (":tokyo_tower:" ["\x1f5fc"])	; TOKYO TOWER
 (":japan:" ["\x1f5fe"])	; SILHOUETTE OF JAPAN
 (":mount_fuji:" ["\x1f5fb"])	; MOUNT FUJI
 (":sunrise_over_mountains:" ["\x1f304"])	; SUNRISE OVER MOUNTAINS
 (":sunrise:" ["\x1f305"])	; SUNRISE
 (":night_with_stars:" ["\x1f303"])	; NIGHT WITH STARS
 (":statue_of_liberty:" ["\x1f5fd"])	; STATUE OF LIBERTY
 (":bridge_at_night:" ["\x1f309"])	; BRIDGE AT NIGHT
 (":carousel_horse:" ["\x1f3a0"])	; CAROUSEL HORSE
 (":ferris_wheel:" ["\x1f3a1"])	; FERRIS WHEEL
 (":fountain:" ["\x26f2"])	; FOUNTAIN
 (":roller_coaster:" ["\x1f3a2"])	; ROLLER COASTER
 (":ship:" ["\x1f6a2"])	; SHIP
 (":boat:" ["\x26f5"])	; SAILBOAT
 (":speedboat:" ["\x1f6a4"])	; SPEEDBOAT
 (":rowboat:" ["\x1f6a3"])	; ROWBOAT
 (":anchor:" ["\x2693"])	; ANCHOR
 (":rocket:" ["\x1f680"])	; ROCKET
 (":airplane:" ["\x2708"])	; AIRPLANE
 (":seat:" ["\x1f4ba"])	; SEAT
 (":helicopter:" ["\x1f681"])	; HELICOPTER
 (":steam_locomotive:" ["\x1f682"])	; STEAM LOCOMOTIVE
 (":tram:" ["\x1f68a"])	; TRAM
 (":station:" ["\x1f689"])	; STATION
 (":mountain_railway:" ["\x1f69e"])	; MOUNTAIN RAILWAY
 (":train2:" ["\x1f686"])	; TRAIN
 (":bullettrain_side:" ["\x1f684"])	; HIGH-SPEED TRAIN
 (":bullettrain_front:" ["\x1f685"])	; HIGH-SPEED TRAIN WITH BULLET NOSE
 (":light_rail:" ["\x1f688"])	; LIGHT RAIL
 (":metro:" ["\x1f687"])	; METRO
 (":monorail:" ["\x1f69d"])	; MONORAIL
 (":train:" ["\x1f68b"])	; TRAM CAR
 (":railway_car:" ["\x1f683"])	; RAILWAY CAR
 (":trolleybus:" ["\x1f68e"])	; TROLLEYBUS
 (":bus:" ["\x1f68c"])	; BUS
 (":oncoming_bus:" ["\x1f68d"])	; ONCOMING BUS
 (":blue_car:" ["\x1f699"])	; RECREATIONAL VEHICLE
 (":oncoming_automobile:" ["\x1f698"])	; ONCOMING AUTOMOBILE
 (":car:" ["\x1f697"])	; AUTOMOBILE
 (":taxi:" ["\x1f695"])	; TAXI
 (":oncoming_taxi:" ["\x1f696"])	; ONCOMING TAXI
 (":articulated_lorry:" ["\x1f69b"])	; ARTICULATED LORRY
 (":truck:" ["\x1f69a"])	; DELIVERY TRUCK
 (":rotating_light:" ["\x1f6a8"])	; POLICE CARS REVOLVING LIGHT
 (":police_car:" ["\x1f693"])	; POLICE CAR
 (":oncoming_police_car:" ["\x1f694"])	; ONCOMING POLICE CAR
 (":fire_engine:" ["\x1f692"])	; FIRE ENGINE
 (":ambulance:" ["\x1f691"])	; AMBULANCE
 (":minibus:" ["\x1f690"])	; MINIBUS
 (":bike:" ["\x1f6b2"])	; BICYCLE
 (":aerial_tramway:" ["\x1f6a1"])	; AERIAL TRAMWAY
 (":suspension_railway:" ["\x1f69f"])	; SUSPENSION RAILWAY
 (":mountain_cableway:" ["\x1f6a0"])	; MOUNTAIN CABLEWAY
 (":tractor:" ["\x1f69c"])	; TRACTOR
 (":barber:" ["\x1f488"])	; BARBER POLE
 (":busstop:" ["\x1f68f"])	; BUS STOP
 (":ticket:" ["\x1f3ab"])	; TICKET
 (":vertical_traffic_light:" ["\x1f6a6"])	; VERTICAL TRAFFIC LIGHT
 (":traffic_light:" ["\x1f6a5"])	; HORIZONTAL TRAFFIC LIGHT
 (":warning:" ["\x26a0"])	; WARNING SIGN
 (":construction:" ["\x1f6a7"])	; CONSTRUCTION SIGN
 (":beginner:" ["\x1f530"])	; JAPANESE SYMBOL FOR BEGINNER
 (":fuelpump:" ["\x26fd"])	; FUEL PUMP
 (":izakaya_lantern:" ["\x1f3ee"])	; IZAKAYA LANTERN
 (":slot_machine:" ["\x1f3b0"])	; SLOT MACHINE
 (":hotsprings:" ["\x2668"])	; HOT SPRINGS
 (":moyai:" ["\x1f5ff"])	; MOYAI
 (":circus_tent:" ["\x1f3aa"])	; CIRCUS TENT
 (":performing_arts:" ["\x1f3ad"])	; PERFORMING ARTS
 (":round_pushpin:" ["\x1f4cd"])	; ROUND PUSHPIN
 (":triangular_flag_on_post:" ["\x1f6a9"])	; TRIANGULAR FLAG ON POST
 (":jp:" ["\x1f1ef"])	; REGIONAL INDICATOR SYMBOL LETTER J + REGIONAL INDICATOR SYMBOL LETTER P
 (":kr:" ["\x1f1f0"])	; REGIONAL INDICATOR SYMBOL LETTER K + REGIONAL INDICATOR SYMBOL LETTER R
 (":de:" ["\x1f1e9"])	; REGIONAL INDICATOR SYMBOL LETTER D + REGIONAL INDICATOR SYMBOL LETTER E
 (":cn:" ["\x1f1e8"])	; REGIONAL INDICATOR SYMBOL LETTER C + REGIONAL INDICATOR SYMBOL LETTER N
 (":us:" ["\x1f1fa"])	; REGIONAL INDICATOR SYMBOL LETTER U + REGIONAL INDICATOR SYMBOL LETTER S
 (":fr:" ["\x1f1eb"])	; REGIONAL INDICATOR SYMBOL LETTER F + REGIONAL INDICATOR SYMBOL LETTER R
 (":es:" ["\x1f1ea"])	; REGIONAL INDICATOR SYMBOL LETTER E + REGIONAL INDICATOR SYMBOL LETTER S
 (":it:" ["\x1f1ee"])	; REGIONAL INDICATOR SYMBOL LETTER I + REGIONAL INDICATOR SYMBOL LETTER T
 (":ru:" ["\x1f1f7"])	; REGIONAL INDICATOR SYMBOL LETTER R + REGIONAL INDICATOR SYMBOL LETTER U
 (":gb:" ["\x1f1ec"])	; REGIONAL INDICATOR SYMBOL LETTER G + REGIONAL INDICATOR SYMBOL LETTER B
 (":one:" ["\x31"])	; DIGIT ONE + COMBINING ENCLOSING KEYCAP
 (":two:" ["\x32"])	; DIGIT TWO + COMBINING ENCLOSING KEYCAP
 (":three:" ["\x33"])	; DIGIT THREE + COMBINING ENCLOSING KEYCAP
 (":four:" ["\x34"])	; DIGIT FOUR + COMBINING ENCLOSING KEYCAP
 (":five:" ["\x35"])	; DIGIT FIVE + COMBINING ENCLOSING KEYCAP
 (":six:" ["\x36"])	; DIGIT SIX + COMBINING ENCLOSING KEYCAP
 (":seven:" ["\x37"])	; DIGIT SEVEN + COMBINING ENCLOSING KEYCAP
 (":eight:" ["\x38"])	; DIGIT EIGHT + COMBINING ENCLOSING KEYCAP
 (":nine:" ["\x39"])	; DIGIT NINE + COMBINING ENCLOSING KEYCAP
 (":zero:" ["\x30"])	; DIGIT ZERO + COMBINING ENCLOSING KEYCAP
 (":keycap_ten:" ["\x1f51f"])	; KEYCAP TEN
 (":1234:" ["\x1f522"])	; INPUT SYMBOL FOR NUMBERS
 (":hash:" ["\x23"])	; NUMBER SIGN + COMBINING ENCLOSING KEYCAP
 (":symbols:" ["\x1f523"])	; INPUT SYMBOL FOR SYMBOLS
 (":arrow_up:" ["\x2b06"])	; UPWARDS BLACK ARROW
 (":arrow_down:" ["\x2b07"])	; DOWNWARDS BLACK ARROW
 (":arrow_left:" ["\x2b05"])	; LEFTWARDS BLACK ARROW
 (":arrow_right:" ["\x27a1"])	; BLACK RIGHTWARDS ARROW
 (":capital_abcd:" ["\x1f520"])	; INPUT SYMBOL FOR LATIN CAPITAL LETTERS
 (":abcd:" ["\x1f521"])	; INPUT SYMBOL FOR LATIN SMALL LETTERS
 (":abc:" ["\x1f524"])	; INPUT SYMBOL FOR LATIN LETTERS
 (":arrow_upper_right:" ["\x2197"])	; NORTH EAST ARROW
 (":arrow_upper_left:" ["\x2196"])	; NORTH WEST ARROW
 (":arrow_lower_right:" ["\x2198"])	; SOUTH EAST ARROW
 (":arrow_lower_left:" ["\x2199"])	; SOUTH WEST ARROW
 (":left_right_arrow:" ["\x2194"])	; LEFT RIGHT ARROW
 (":arrow_up_down:" ["\x2195"])	; UP DOWN ARROW
 (":arrows_counterclockwise:" ["\x1f504"])	; ANTICLOCKWISE DOWNWARDS AND UPWARDS OPEN CIRCLE ARROWS
 (":arrow_backward:" ["\x25c0"])	; BLACK LEFT-POINTING TRIANGLE
 (":arrow_forward:" ["\x25b6"])	; BLACK RIGHT-POINTING TRIANGLE
 (":arrow_up_small:" ["\x1f53c"])	; UP-POINTING SMALL RED TRIANGLE
 (":arrow_down_small:" ["\x1f53d"])	; DOWN-POINTING SMALL RED TRIANGLE
 (":leftwards_arrow_with_hook:" ["\x21a9"])	; LEFTWARDS ARROW WITH HOOK
 (":arrow_right_hook:" ["\x21aa"])	; RIGHTWARDS ARROW WITH HOOK
 (":information_source:" ["\x2139"])	; INFORMATION SOURCE
 (":rewind:" ["\x23ea"])	; BLACK LEFT-POINTING DOUBLE TRIANGLE
 (":fast_forward:" ["\x23e9"])	; BLACK RIGHT-POINTING DOUBLE TRIANGLE
 (":arrow_double_up:" ["\x23eb"])	; BLACK UP-POINTING DOUBLE TRIANGLE
 (":arrow_double_down:" ["\x23ec"])	; BLACK DOWN-POINTING DOUBLE TRIANGLE
 (":arrow_heading_down:" ["\x2935"])	; ARROW POINTING RIGHTWARDS THEN CURVING DOWNWARDS
 (":arrow_heading_up:" ["\x2934"])	; ARROW POINTING RIGHTWARDS THEN CURVING UPWARDS
 (":ok:" ["\x1f197"])	; SQUARED OK
 (":twisted_rightwards_arrows:" ["\x1f500"])	; TWISTED RIGHTWARDS ARROWS
 (":repeat:" ["\x1f501"])	; CLOCKWISE RIGHTWARDS AND LEFTWARDS OPEN CIRCLE ARROWS
 (":repeat_one:" ["\x1f502"])	; CLOCKWISE RIGHTWARDS AND LEFTWARDS OPEN CIRCLE ARROWS WITH CIRCLED ONE OVERLAY
 (":new:" ["\x1f195"])	; SQUARED NEW
 (":up:" ["\x1f199"])	; SQUARED UP WITH EXCLAMATION MARK
 (":cool:" ["\x1f192"])	; SQUARED COOL
 (":free:" ["\x1f193"])	; SQUARED FREE
 (":ng:" ["\x1f196"])	; SQUARED NG
 (":signal_strength:" ["\x1f4f6"])	; ANTENNA WITH BARS
 (":cinema:" ["\x1f3a6"])	; CINEMA
 (":koko:" ["\x1f201"])	; SQUARED KATAKANA KOKO
 (":u6307:" ["\x1f22f"])	; SQUARED CJK UNIFIED IDEOGRAPH-6307
 (":u7a7a:" ["\x1f233"])	; SQUARED CJK UNIFIED IDEOGRAPH-7A7A
 (":u6e80:" ["\x1f235"])	; SQUARED CJK UNIFIED IDEOGRAPH-6E80
 (":u5408:" ["\x1f234"])	; SQUARED CJK UNIFIED IDEOGRAPH-5408
 (":u7981:" ["\x1f232"])	; SQUARED CJK UNIFIED IDEOGRAPH-7981
 (":ideograph_advantage:" ["\x1f250"])	; CIRCLED IDEOGRAPH ADVANTAGE
 (":u5272:" ["\x1f239"])	; SQUARED CJK UNIFIED IDEOGRAPH-5272
 (":u55b6:" ["\x1f23a"])	; SQUARED CJK UNIFIED IDEOGRAPH-55B6
 (":u6709:" ["\x1f236"])	; SQUARED CJK UNIFIED IDEOGRAPH-6709
 (":u7121:" ["\x1f21a"])	; SQUARED CJK UNIFIED IDEOGRAPH-7121
 (":restroom:" ["\x1f6bb"])	; RESTROOM
 (":mens:" ["\x1f6b9"])	; MENS SYMBOL
 (":womens:" ["\x1f6ba"])	; WOMENS SYMBOL
 (":baby_symbol:" ["\x1f6bc"])	; BABY SYMBOL
 (":wc:" ["\x1f6be"])	; WATER CLOSET
 (":potable_water:" ["\x1f6b0"])	; POTABLE WATER SYMBOL
 (":put_litter_in_its_place:" ["\x1f6ae"])	; PUT LITTER IN ITS PLACE SYMBOL
 (":parking:" ["\x1f17f"])	; NEGATIVE SQUARED LATIN CAPITAL LETTER P
 (":wheelchair:" ["\x267f"])	; WHEELCHAIR SYMBOL
 (":no_smoking:" ["\x1f6ad"])	; NO SMOKING SYMBOL
 (":u6708:" ["\x1f237"])	; SQUARED CJK UNIFIED IDEOGRAPH-6708
 (":u7533:" ["\x1f238"])	; SQUARED CJK UNIFIED IDEOGRAPH-7533
 (":sa:" ["\x1f202"])	; SQUARED KATAKANA SA
 (":m:" ["\x24c2"])	; CIRCLED LATIN CAPITAL LETTER M
 (":passport_control:" ["\x1f6c2"])	; PASSPORT CONTROL
 (":baggage_claim:" ["\x1f6c4"])	; BAGGAGE CLAIM
 (":left_luggage:" ["\x1f6c5"])	; LEFT LUGGAGE
 (":customs:" ["\x1f6c3"])	; CUSTOMS
 (":accept:" ["\x1f251"])	; CIRCLED IDEOGRAPH ACCEPT
 (":secret:" ["\x3299"])	; CIRCLED IDEOGRAPH SECRET
 (":congratulations:" ["\x3297"])	; CIRCLED IDEOGRAPH CONGRATULATION
 (":cl:" ["\x1f191"])	; SQUARED CL
 (":sos:" ["\x1f198"])	; SQUARED SOS
 (":id:" ["\x1f194"])	; SQUARED ID
 (":no_entry_sign:" ["\x1f6ab"])	; NO ENTRY SIGN
 (":underage:" ["\x1f51e"])	; NO ONE UNDER EIGHTEEN SYMBOL
 (":no_mobile_phones:" ["\x1f4f5"])	; NO MOBILE PHONES
 (":do_not_litter:" ["\x1f6af"])	; DO NOT LITTER SYMBOL
 (":non-potable_water:" ["\x1f6b1"])	; NON-POTABLE WATER SYMBOL
 (":no_bicycles:" ["\x1f6b3"])	; NO BICYCLES
 (":no_pedestrians:" ["\x1f6b7"])	; NO PEDESTRIANS
 (":children_crossing:" ["\x1f6b8"])	; CHILDREN CROSSING
 (":no_entry:" ["\x26d4"])	; NO ENTRY
 (":eight_spoked_asterisk:" ["\x2733"])	; EIGHT SPOKED ASTERISK
 (":sparkle:" ["\x2747"])	; SPARKLE
 (":negative_squared_cross_mark:" ["\x274e"])	; NEGATIVE SQUARED CROSS MARK
 (":white_check_mark:" ["\x2705"])	; WHITE HEAVY CHECK MARK
 (":eight_pointed_black_star:" ["\x2734"])	; EIGHT POINTED BLACK STAR
 (":heart_decoration:" ["\x1f49f"])	; HEART DECORATION
 (":vs:" ["\x1f19a"])	; SQUARED VS
 (":vibration_mode:" ["\x1f4f3"])	; VIBRATION MODE
 (":mobile_phone_off:" ["\x1f4f4"])	; MOBILE PHONE OFF
 (":a:" ["\x1f170"])	; NEGATIVE SQUARED LATIN CAPITAL LETTER A
 (":b:" ["\x1f171"])	; NEGATIVE SQUARED LATIN CAPITAL LETTER B
 (":ab:" ["\x1f18e"])	; NEGATIVE SQUARED AB
 (":o2:" ["\x1f17e"])	; NEGATIVE SQUARED LATIN CAPITAL LETTER O
 (":diamond_shape_with_a_dot_inside:" ["\x1f4a0"])	; DIAMOND SHAPE WITH A DOT INSIDE
 (":loop:" ["\x27bf"])	; DOUBLE CURLY LOOP
 (":recycle:" ["\x267b"])	; BLACK UNIVERSAL RECYCLING SYMBOL
 (":aries:" ["\x2648"])	; ARIES
 (":taurus:" ["\x2649"])	; TAURUS
 (":gemini:" ["\x264a"])	; GEMINI
 (":cancer:" ["\x264b"])	; CANCER
 (":leo:" ["\x264c"])	; LEO
 (":virgo:" ["\x264d"])	; VIRGO
 (":libra:" ["\x264e"])	; LIBRA
 (":scorpius:" ["\x264f"])	; SCORPIUS
 (":sagittarius:" ["\x2650"])	; SAGITTARIUS
 (":capricorn:" ["\x2651"])	; CAPRICORN
 (":aquarius:" ["\x2652"])	; AQUARIUS
 (":pisces:" ["\x2653"])	; PISCES
 (":ophiuchus:" ["\x26ce"])	; OPHIUCHUS
 (":six_pointed_star:" ["\x1f52f"])	; SIX POINTED STAR WITH MIDDLE DOT
 (":atm:" ["\x1f3e7"])	; AUTOMATED TELLER MACHINE
 (":chart:" ["\x1f4b9"])	; CHART WITH UPWARDS TREND AND YEN SIGN
 (":heavy_dollar_sign:" ["\x1f4b2"])	; HEAVY DOLLAR SIGN
 (":currency_exchange:" ["\x1f4b1"])	; CURRENCY EXCHANGE
 (":copyright:" ["\xa9"])	; COPYRIGHT SIGN
 (":registered:" ["\xae"])	; REGISTERED SIGN
 (":tm:" ["\x2122"])	; TRADE MARK SIGN
 (":x:" ["\x274c"])	; CROSS MARK
 (":bangbang:" ["\x203c"])	; DOUBLE EXCLAMATION MARK
 (":interrobang:" ["\x2049"])	; EXCLAMATION QUESTION MARK
 (":exclamation:" ["\x2757"])	; HEAVY EXCLAMATION MARK SYMBOL
 (":question:" ["\x2753"])	; BLACK QUESTION MARK ORNAMENT
 (":grey_exclamation:" ["\x2755"])	; WHITE EXCLAMATION MARK ORNAMENT
 (":grey_question:" ["\x2754"])	; WHITE QUESTION MARK ORNAMENT
 (":o:" ["\x2b55"])	; HEAVY LARGE CIRCLE
 (":top:" ["\x1f51d"])	; TOP WITH UPWARDS ARROW ABOVE
 (":end:" ["\x1f51a"])	; END WITH LEFTWARDS ARROW ABOVE
 (":back:" ["\x1f519"])	; BACK WITH LEFTWARDS ARROW ABOVE
 (":on:" ["\x1f51b"])	; ON WITH EXCLAMATION MARK WITH LEFT RIGHT ARROW ABOVE
 (":soon:" ["\x1f51c"])	; SOON WITH RIGHTWARDS ARROW ABOVE
 (":arrows_clockwise:" ["\x1f503"])	; CLOCKWISE DOWNWARDS AND UPWARDS OPEN CIRCLE ARROWS
 (":clock12:" ["\x1f55b"])	; CLOCK FACE TWELVE OCLOCK
 (":clock1230:" ["\x1f567"])	; CLOCK FACE TWELVE-THIRTY
 (":clock1:" ["\x1f550"])	; CLOCK FACE ONE OCLOCK
 (":clock130:" ["\x1f55c"])	; CLOCK FACE ONE-THIRTY
 (":clock2:" ["\x1f551"])	; CLOCK FACE TWO OCLOCK
 (":clock230:" ["\x1f55d"])	; CLOCK FACE TWO-THIRTY
 (":clock3:" ["\x1f552"])	; CLOCK FACE THREE OCLOCK
 (":clock330:" ["\x1f55e"])	; CLOCK FACE THREE-THIRTY
 (":clock4:" ["\x1f553"])	; CLOCK FACE FOUR OCLOCK
 (":clock430:" ["\x1f55f"])	; CLOCK FACE FOUR-THIRTY
 (":clock5:" ["\x1f554"])	; CLOCK FACE FIVE OCLOCK
 (":clock530:" ["\x1f560"])	; CLOCK FACE FIVE-THIRTY
 (":clock6:" ["\x1f555"])	; CLOCK FACE SIX OCLOCK
 (":clock7:" ["\x1f556"])	; CLOCK FACE SEVEN OCLOCK
 (":clock8:" ["\x1f557"])	; CLOCK FACE EIGHT OCLOCK
 (":clock9:" ["\x1f558"])	; CLOCK FACE NINE OCLOCK
 (":clock10:" ["\x1f559"])	; CLOCK FACE TEN OCLOCK
 (":clock11:" ["\x1f55a"])	; CLOCK FACE ELEVEN OCLOCK
 (":clock630:" ["\x1f561"])	; CLOCK FACE SIX-THIRTY
 (":clock730:" ["\x1f562"])	; CLOCK FACE SEVEN-THIRTY
 (":clock830:" ["\x1f563"])	; CLOCK FACE EIGHT-THIRTY
 (":clock930:" ["\x1f564"])	; CLOCK FACE NINE-THIRTY
 (":clock1030:" ["\x1f565"])	; CLOCK FACE TEN-THIRTY
 (":clock1130:" ["\x1f566"])	; CLOCK FACE ELEVEN-THIRTY
 (":heavy_multiplication_x:" ["\x2716"])	; HEAVY MULTIPLICATION X
 (":heavy_plus_sign:" ["\x2795"])	; HEAVY PLUS SIGN
 (":heavy_minus_sign:" ["\x2796"])	; HEAVY MINUS SIGN
 (":heavy_division_sign:" ["\x2797"])	; HEAVY DIVISION SIGN
 (":spades:" ["\x2660"])	; BLACK SPADE SUIT
 (":hearts:" ["\x2665"])	; BLACK HEART SUIT
 (":clubs:" ["\x2663"])	; BLACK CLUB SUIT
 (":diamonds:" ["\x2666"])	; BLACK DIAMOND SUIT
 (":white_flower:" ["\x1f4ae"])	; WHITE FLOWER
 (":100:" ["\x1f4af"])	; HUNDRED POINTS SYMBOL
 (":heavy_check_mark:" ["\x2714"])	; HEAVY CHECK MARK
 (":ballot_box_with_check:" ["\x2611"])	; BALLOT BOX WITH CHECK
 (":radio_button:" ["\x1f518"])	; RADIO BUTTON
 (":link:" ["\x1f517"])	; LINK SYMBOL
 (":curly_loop:" ["\x27b0"])	; CURLY LOOP
 (":wavy_dash:" ["\x3030"])	; WAVY DASH
 (":part_alternation_mark:" ["\x303d"])	; PART ALTERNATION MARK
 (":trident:" ["\x1f531"])	; TRIDENT EMBLEM
 (":black_medium_square:" ["\x25fc"])	; BLACK MEDIUM SQUARE
 (":white_medium_square:" ["\x25fb"])	; WHITE MEDIUM SQUARE
 (":black_medium_small_square:" ["\x25fe"])	; BLACK MEDIUM SMALL SQUARE
 (":white_medium_small_square:" ["\x25fd"])	; WHITE MEDIUM SMALL SQUARE
 (":black_small_square:" ["\x25aa"])	; BLACK SMALL SQUARE
 (":white_small_square:" ["\x25ab"])	; WHITE SMALL SQUARE
 (":small_red_triangle:" ["\x1f53a"])	; UP-POINTING RED TRIANGLE
 (":black_square_button:" ["\x1f532"])	; BLACK SQUARE BUTTON
 (":white_square_button:" ["\x1f533"])	; WHITE SQUARE BUTTON
 (":black_circle:" ["\x26ab"])	; MEDIUM BLACK CIRCLE
 (":white_circle:" ["\x26aa"])	; MEDIUM WHITE CIRCLE
 (":red_circle:" ["\x1f534"])	; LARGE RED CIRCLE
 (":large_blue_circle:" ["\x1f535"])	; LARGE BLUE CIRCLE
 (":small_red_triangle_down:" ["\x1f53b"])	; DOWN-POINTING RED TRIANGLE
 (":white_large_square:" ["\x2b1c"])	; WHITE LARGE SQUARE
 (":black_large_square:" ["\x2b1b"])	; BLACK LARGE SQUARE
 (":large_orange_diamond:" ["\x1f536"])	; LARGE ORANGE DIAMOND
 (":large_blue_diamond:" ["\x1f537"])	; LARGE BLUE DIAMOND
 (":small_orange_diamond:" ["\x1f538"])	; SMALL ORANGE DIAMOND
 (":small_blue_diamond:" ["\x1f539"])	; SMALL BLUE DIAMOND
 )

(provide 'emoji)
