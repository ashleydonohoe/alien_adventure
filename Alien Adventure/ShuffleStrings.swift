//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        // First checks to make sure that the shuffle is the same character length as s1 plus s2; otherwise, it is immediately an invalid shuffle
        if(s1.characters.count + s2.characters.count != shuffle.characters.count) {
            return false
        }
        
        // Checks if the strings and shuffle are empty
        if(s1 == "" && s2 == "" && shuffle == "") {
            return true
        }
        
        // Checks if shuffle is simply concatenation of s1 and s2
        if(s1 + s2 == shuffle || s2 + s1 == shuffle) {
            return true
        }
        
        // Checks to see if the first letter of shuffle is the first letter of either s1 or s2. If not, it's invalid.
        if(String(s1[s1.startIndex]) != String(shuffle[shuffle.startIndex])) && String(s2[s2.startIndex]) != String(shuffle[shuffle.startIndex]) {
            return false
        }
        
        // Checks for combination where first letter of each string is used followed by second letter of each. For example, for strings "ab" and "cd", "acbd" and "cadb" would be valid
        if(String(s1[s1.startIndex])+String(s2[s2.startIndex])+String(s1[s1.startIndex.successor()]) + String(s2[s2.startIndex.successor()]) == shuffle) {
            return true
        }
        
        if(String(s2[s2.startIndex]) + String(s1[s1.startIndex]) + String(s2[s2.startIndex.successor()]) + String(s1[s1.startIndex.successor()]) == shuffle) {
            return true
        }

        return false
    }
}
