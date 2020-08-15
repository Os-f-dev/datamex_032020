
# Soldier
import random
class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    def attack(self):
        return self.strength
    def receiveDamage(self,damage):
        self.health-=damage
        pass

# Viking

class Viking(Soldier):
    def __init__(self,name,health,strength):
        self.name = name
        self.health = health
        self.strength = strength
    def receiveDamage (self,damage):
        self.health-=damage
        if self.health > 0:
            return (f'{self.name} has received {damage} points of damage')
        else:
            return (f'{self.name} has died in act of combat')
    def battleCry (self):
        return (f"Odin Owns You All!")
    #pass

# Saxon

class Saxon(Soldier):
    def receiveDamage (self,damage):
        self.health-=damage
        if self.health > 0:
            return (f'A Saxon has received {damage} points of damage')
        else:
            return (f'A Saxon has died in combat')
    pass

# War

class War():
    
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []
        
    def addViking(self,vikingo):
        self.vikingArmy.append(vikingo)
        
    def addSaxon(self,saxono):
        self.saxonArmy.append(saxono)
    
    def vikingAttack(self):
        vik = random.choice(self.vikingArmy)
        sax = random.choice(self.saxonArmy)
        status = sax.receiveDamage(vik.attack())
        if sax.health <= 0:
            self.saxonArmy.remove(sax)
        return status
    
    def saxonAttack(self):
        vik = random.choice(self.vikingArmy)
        sax = random.choice(self.saxonArmy)
        status = vik.receiveDamage(sax.attack())
        if vik.health <= 0:
            self.vikingArmy.remove(vik)
        return status
    
    def showStatus(self):
        if (len(self.saxonArmy)) == 0:
            return "Vikings have won the war of the century!"
        elif (len(self.vikingArmy)) == 0:
            return "Saxons have fought for their lives and survive another day..."
        elif len(self.saxonArmy) >= 1 and len(self.vikingArmy) >= 1:
            return "Vikings and Saxons are still in the thick of battle."