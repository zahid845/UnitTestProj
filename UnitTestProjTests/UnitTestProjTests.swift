//
//  UnitTestProjTests.swift
//  UnitTestProjTests
//
//  Created by Mac on 11/09/2022.
//

import XCTest
@testable import UnitTestProj

class UnitTestProjTests: XCTestCase {

    var squirtle:Pokemon!
    var charmander:Pokemon!
    var psyduck:Pokemon!

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        squirtle = nil
        charmander = nil
        psyduck = nil

    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        squirtle.attack(enemy: charmander)
        squirtle.attack(enemy: psyduck)
        XCTAssertTrue(charmander.health < psyduck.health)

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
