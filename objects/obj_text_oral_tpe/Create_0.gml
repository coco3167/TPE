draw_set_font(fnt_text)
global.click = 0;
global.sw = false;
alarm[0] = room_speed;
letter = 0;
Text[0]  = @"Cliquer pour commencer.";
Text[1]  = @"Pour notre sujet, nous avons formulé une hypothèse, que nous souhaitons tester, et qui est : l’étude du mouvement et de la collision des corps avec des ressorts permet-elle de prévoir la déformation causée par la chute d’une météorite ?"
Text[2]  = @"Nous allons donc effectuer des expériences, la première consistant en l’application de la loi de Hooke.";
Text[3]  = @"Elle édicte que la déformation est proportionnelle à l’énergie cinétique dans le cas d’un ressort. On peut donc obtenir une droite d’étalonnage en effectuant une mesure préalable. Connaître l’énergie cinétique du corps percutant final permettra donc de calculer une déformation.";
Text[4]  = @"On lâchera donc une boule de pétanque sur un dispositif s’apparentant à un ressort, sans vitesse initiale, et on mesurera l’élongation. Puis on effectuera un lancer depuis une position éloignée, dont on mesurera les vitesses horizontales et verticales au début, grâce à des graduations. Puis on mesurera l’élongation du ressort.";
Text[5]  = @"Mais comment modéliser la chute d’une météorite ?";
Text[6]  = @"La structure supérieur de la terre est divisée en trois couches. La croûte (continentale et océanique) composée de silicates d’alumine et de silicates ferro-magnésiens ; le manteau supérieur (lithosphérique et asthénosphérique) composée de ferro-magnésiens.";
Text[7]  = @"La structure comprend donc normalement du silicium (Si), de l’oxygène (O), du magnésium (Mg), du fer (Fe), du sodium (Na), de l’aluminium (Al) et du potassium (K).";
Text[8]  = @"Or on retrouve essentiellement de la silice et de l’oxygène dans les grains de sable étant de formule SiO₂ qui sont donc une modélisation appropriée et réalisable.";
Text[9]  = @"On effectuera donc deux lancers à des hauteurs différentes sur le sable. Nous étayerons nos résultats avec une étude de la météorite de Chicxulub, la même météorite qui a causée l’extinction des dinosaures.";
Text[10] = @"Cette météorite a chu dans le golfe du Mexique il y a 65 millions d’années, à la fin du Crétacé, lui-même à la fin du Mésozoïque, l’ère des dinosaures.";
Text[11] = @"Pour notre premier lancer, nous allons lancer notre projectile depuis une position éloignée sur un dispositif s’apparentant à un ressort. Il part donc avec une vitesse initiale dans x de 9 m/s et une vitesse initiale verticale de 3,8 m/s. Ces données permettent d’obtenir sa trajectoire grâce à l’équation :
y= -g/2 × Vₓ × x² + (Vy/Vₓ + g/Vₓ² × x₀) × x -g/2 × Vₓ² × x₀ + y₀.

On obtient donc grâce à cette parabole une vitesse finale de -1,7 m/s, en effet la gravitation a fait là son œuvre et pendant les 0,56 s de trajet, notre projectile a gagné une vitesse de -5,5 m/s. On obtient donc avec une masse de 0,195 kg, une énergie cinétique de 0,29 J. Comme le ressort s’est élongé sur -0,024 m, nous obtenons un coefficient de raideur de 11,9.";
Text[12] = @"Pour notre deuxième tir, un tir vertical sur une plaque de métal, donc un ressort, on a donc un tir d'à peu près 40 cm de hauteur, sans vitesse initiale. Il n’y a que la gravitation terrestre qui compte. On y acquiert donc une vitesse d’environ -1,78 m/s, qui associée à la même masse que tout à l’heure donne une énergie cinétique de 0,3 J. Comme la plaque s’est étirée sur -0,016 m, on peut en déduire un coefficient de raideur d’à peu près 19,4.";
Text[13] = @"Notre troisième tir est un tir sur le sable, d’environ 1,80 m de hauteur. Le projectile y atteint donc une vitesse de -6,2 m/s et a donc avec sa masse une énergie de 7,5 J. Le sable s’écrasera sur 6cm, avec donc un Δl de 0,06 m. On peut donc en déduire un coefficient de raideur de 125,4.";
Text[14] = @"Pour notre dernier tir enfin, nous avons lancé notre boule de pétanque de 30 cm sur le sable on a donc obtenu une vitesse de 3,5 m/s et donc une énergie cinétique de 1,2 J. Le sable s’est enfoncé sur 3cm, donc un Δl, une élongation, de 0,03 m. Le coefficient de raideur ainsi trouvé est de 41.";
Text[15] = @"Pour la météorite, on sait que son énergie cinétique est de 9.22E+25 J et qu’elle a creusé un cratère de 1 km de profondeur. On en déduit donc un coefficient de raideur de 9.22E+22.";
Text[16] = @"On obtient donc le même ordre de grandeur de coefficient de raideur pour les deux lancers sur le ressort, tandis que pour le sable ils sont plus différents et même si l’ont pourrait douter, la différence est d’encore plus pour la météorite.";
Text[17] = @"On peut donc conclure de cette expérience que la mécanique appliquée aux ressorts ne peut s’appliquer aux météorites et que l’on ne peut donc pas prévoir leur déformation ainsi. Elle pourrait toutefois s’appliquer partiellement sur des petites représentations comme on l’a vu (même si l’on n'obtient pas de résultats très concluants).";