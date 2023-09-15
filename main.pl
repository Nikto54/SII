% Факты с одним аргументом

hero(dragon_knight).
hero(earthshaker).
hero(invoker).
hero(juggernaut).
hero(mirana).
hero(sven).
hero(tidehunter).
hero(windranger).
hero(zeus).
hero(antimage).
hero(bristleback).
hero(drow_ranger).
hero(pudge).
hero(phantom_assassin).
hero(legion_commander).
hero(lion).
hero(crystal_maiden).
hero(lich).
hero(ogre_magi).
hero(luna).

item(clarity).
item(tango).
item(basher).
item(eul).
item(rapier).
item(tarasque).


% Факты с двумя аргументами
sister(dragon_knight,mirana).
sister(invoker,luna).
brother(crystal_maiden,lion).
brother(windranger,tidehunter).

ability(dragon_knight,breath_fire).
ability(dragon_knight,dragon_tail).
ability(dragon_knight,dragon_blood).
ability(dragon_knight,fireball).
ability(invoker,quas).
ability(invoker,wex).
ability(invoker,exort).
ability(invoker,invoke).

ability(juggernaut,blade_fury).
ability(juggernaut,omnislash).

property(lich,intelegent).
property(invoker,intelegent).
property(luna,agility).
property(pudge,strength).

cost(tango,100).
cost(clarity,150).
cost(basher,1000).
cost(eul,2000).
cost(rapier,6000).
cost(tarasque,6500).


% Правила
can_use_ability(A, B) :- hero(A), ability(A, B).

property_hero(A,B):- hero(A), property(A,B).

affordable_item(Item, Gold) :- item(Item), cost(Item, Cost), Gold >= Cost.

normal_item(Item) :- item(Item), cost(Item, Cost), Cost < 2000.

cheep_item(Item) :- item(Item), cost(Item, Cost), Cost < 200.













