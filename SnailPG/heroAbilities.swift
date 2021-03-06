//
//  heroAbilities.swift
//  Snail Fantasy
//
//  Created by Andrew Carver on 1/25/17.
//  Copyright © 2017 Benjamin Swanson. All rights reserved.
//

import UIKit

extension Hero {
    
    //warrior abilites
    func battleRage(_ target: Hero){
        
    }
    func shieldBash(_ target: Monster) -> (String, String){
        let spell = "Shield Bash"
        let shieldDamage = self.defense
        target.health -= Int(shieldDamage)
        self.mana -= 30
        let result = "Spell Cast"
        let log = "\(self.name) casts \(spell) and did \(shieldDamage) damage to \(target.name)!"
        return (log, result)
    }
    func desperateStrike(_ target: Monster) -> (String, String){
        let spell = "Desperate Strike"
        var computedDamage = 0
        let strikeChance = Int(arc4random_uniform(UInt32(10))) + 1
        if strikeChance == (1-5){
            computedDamage += Int(self.strength)
        }
        else{
            computedDamage = 0
        }
        self.mana -= 30
        let result = "Spell Cast"
        let log = "\(self.name) casts \(spell) and did \(computedDamage) damage to \(target.name)!"
        return (log, result)
    }
    //mage abilities
    func magicMissile(_ target: Monster) -> (String, String){
        let spell = "Magic Missile"
        let computedDamage = Int(arc4random_uniform(UInt32(Int(self.intelligence/2)))) + 1
        target.health -= computedDamage
        self.mana -= 30
        let result = "Spell Cast"
        let log = "\(self.name) casts \(spell) and did \(computedDamage) damage to \(target.name)!"
        return (log, result)
    }
    func cure(_ target: Hero) -> (String, String){
        let spell = "Cure"
        let healedDamage = Int(arc4random_uniform(UInt32(Int(self.intelligence/2)))) + 1
        target.health += healedDamage
        self.mana -= 30
        let result = "Spell Cast"
        let log = "\(self.name) casts \(spell) and healed \(healedDamage) damage!"
        return (log, result)
    }
    func leech(_ target: Monster) -> (String, String){
        let spell = "Leech"
        let leechedDamage = Int(arc4random_uniform(UInt32(Int(self.intelligence/4)))) + 1
        target.health -= leechedDamage
        self.health += leechedDamage
        self.mana -= 30
        let result = "Spell Cast"
        let log = "\(self.name) casts \(spell) and stole \(leechedDamage) health from \(target.name)!"
        return (log, result)
    }
    func manaShield(_ target: Monster) -> (String, String){
        let spell = "Mana Shield"
        let blockedDamage = Int(arc4random_uniform(UInt32(Int(self.intelligence/2)))) + 1
        target.damage -= blockedDamage
        self.mana -= 30
        let result = "Spell Cast"
        let log = "\(self.name) casts \(spell) and blocked \(blockedDamage) damage from \(target.name)!"
        return (log, result)
    }
    //thief abilities
    

}





