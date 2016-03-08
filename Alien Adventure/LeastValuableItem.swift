//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        // Checks if the inventory count is 0 and returns nil if true
        if inventory.count == 0 {
            return nil
        }
        
        // sets the first item initially to use as a comparison for BaseValue
       var storedItem = inventory[0]
        for item in inventory {
            // if the current item's baseValue is less than the base value of the storedItem, then the storedItem is set equal to current item
            if item.baseValue < storedItem.baseValue {
                storedItem = item
            }
        }
        return storedItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"