//
//  Expense.swift
//  FinanceTrackingApp
//
//  Created by Jack Cruz on 10/13/22.
//

import SwiftUI

// MARK: Expense model and Sample Data
struct Expense: Identifiable, Hashable {
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String {
    case income = "Income"
    case expense = "expenses"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Keyboard", amount: 99, date: Date(timeIntervalSince1970: 1652987245),
            type: .expense, color: "Yellow"),
    Expense(remark: "Food", amount: 19, date: Date(timeIntervalSince1970: 1652987634),
            type: .expense, color: "Red"),
    Expense(remark: "Trackpad", amount: 10, date: Date(timeIntervalSince1970: 1652987283),
            type: .expense, color: "Blue"),
    Expense(remark: "UberEats", amount: 20, date: Date(timeIntervalSince1970: 16529858273),
            type: .expense, color: "Green"),
    Expense(remark: "Amazon Purchase", amount: 199, date: Date(timeIntervalSince1970: 1652981983),
            type: .expense, color: "Purple"),
    Expense(remark: "Stocks", amount: 600, date: Date(timeIntervalSince1970: 1652980932),
            type: .expense, color: "Pink"),
    Expense(remark: "App Purchase", amount: 5, date: Date(timeIntervalSince1970: 1652981829),
            type: .expense, color: "Yellow"),
    Expense(remark: "Movie Ticket", amount: 10, date: Date(timeIntervalSince1970: 1652985726),
            type: .expense, color: "Brown"),
    Expense(remark: "Spotify", amount: 5, date: Date(timeIntervalSince1970: 16529895789),
            type: .expense, color: "Black"),
    Expense(remark: "Snacks", amount: 15, date: Date(timeIntervalSince1970: 1652989944),
            type: .expense, color: "Orange")
    
]
