//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longest = ""
        for item in inventory {
            // If the name of the current item is longer than the longest item saved in the longest variable, change the value of the longest variable to the current item's name
            let currentItemName = item.name
            
            if(currentItemName.characters.count > longest.characters.count) {
                longest = item.name
            }
        }
        
        // Reverses characters of longest and sets it equal to reversedString
        return String(longest.characters.reverse())
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"