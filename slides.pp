[zabbix.png] [bottom]
-

- [cat1.png]
   Retour d'expérience sur Zabbix
(par un dev qui déteste l'adminsys)

# slides CHATS!
# retour d'xp -> facile + partage
# gens peur faire confs -> mais non !
# je suis pas un pro
- [cat2.png]
C'est quoi le monitoring ?
C'est quoi zabbix ?

# surveuiller un parc de machine
# vision d'ensemble
# + être prévenu
- [cat3.png]
Context

# railnova
# peut de machines (comme ici)
# zabbix overkill
# mais en fait ça reste cool
- [cat4.png]
Pourquoi zabbix ?

# nagios/shinken -> long à apprendre
# facile
# doc de référence
# ai exploré, recommandé par tout le monde
# en gros staz voulait jouer avec zabbix
- [cat5.png]
Architecture:
❤ server (+ IF web)
❤ agents
❤ (proxy)

# maintenant explique comment ça marche
# .
# IF web facile à déployer sur apache, même moi y suit arrivé
# je déteste apache
- [cat6.png]
Principes:
❤ items
❤ triggers
❤ actions
# très classique
# TEMPLATES
- [home.png]

- [graph.png]

# vous pouvez définir les votres vous même
# un est généré automatiquement pour tous les items
- [hosts.png]

- [items.png]

- [triggers.png]

- [actions.png]

- [action_create.png]

- [generic.png]

- [grumpy.png]
API

# cool
# json rpc
# putain de frustrant
- [cat7.png] [center]
from zabbix_api import ZabbixAPI

zabbix = ZabbixAPI(server="https://chezmoi.com/zabbix/")
zabbix.login("Admin", "zabbix")

all_items = zabbix.item.get({"output": "extend"})

my_host_id = zabbix.host.get({"output": "extend",
                              "search": {"host": "Pancake"}})["hostid"]

zabbix.item.create({"key_": "my.item.that.I.love",
                                 "description": "I love cats",
                                 "hostid": my_host_id,
                                 "value_type": "2"})
- [cat8.png]
Bilan

# cool, très content
# facile à mettre en place
# doc pu
# api super frustrante
# clickodrome, scale ?
- [cat9.png]
Merci ! Questions ?
