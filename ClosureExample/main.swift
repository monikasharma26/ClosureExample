//
//  main.swift
//  ClosureExample
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

print("Hello, World!")

func add(a : Int , b : Int)
{
    print(a + b)
    
}
add(a: 10, b: 20)

var f : (Int , Int) -> Void
f = add

f(10,40)

func test(a : Int, b : (Int , Int) -> Void )
{
    b(a,10)
}

test(a: 20, b: f)

var country = ["Canada" , "Abd", "India" , "Bhutan" , "Nepal" , "China" , "Usa" , "Mexico"]
func mySort(s1 : String , s2 : String) -> Bool
{
    return s1 > s2
}
print(mySort(s1: "abc", s2: "adc"))

print(country)
let c = country.sorted()
print(c)
// clouser for array
country.sort(by: mySort(s1:s2:))
print(country)
country.sort(by:
    { (s1 : String, s2 : String) -> Bool in
        return s1 > s2
    })
print(country)

country.sort(by:
    { (s1 , s2 ) -> Bool in
        return s1 > s2
    })
print(country)

country.sort(by:
    { s1 , s2 -> Bool in
        return s1 > s2
    })
print(country)
country.sort(by:
    { s1 , s2 -> Bool in
        return s1 > s2
    })
print(country)
country.sort(by:
    { s1 , s2  in
        return s1 > s2
    })
print(country)


country.sort(by:
    {
        return $0 > $1
    })
print(country)

country.sort(by: >)
print(country)

country.sort(by: <)
print(country)


var s = country.map { (str) -> String in
    if str.count == 5
    {
        return "\(str.count) - \(str)"
    }
    return "Check"
}
print(s)

var s1 = country.filter { (str) -> Bool in
    return str.count == 5
}
print(s1)
let b = country.contains { (str) -> Bool in
    return str.count > 50
}
country.lexicographicallyPrecedes(<#T##other: Sequence##Sequence#>, by: <#T##(String, String) throws -> Bool#>)
print(b)
