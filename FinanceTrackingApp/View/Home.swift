//
//  Home.swift
//  FinanceTrackingApp
//
//  Created by Jack Cruz on 10/13/22.
//

import SwiftUI

struct Home: View {
    @StateObject var expenseViewModel: ExpenseViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                HStack(spacing: 15) {
                    VStack(alignment: .leading, spacing:  4) {
                        Text("Welcome")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        Text("User")
                            .font(.title2.bold())
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "hexagon.fill")
                            .foregroundColor(.gray)
                            .overlay(content: {
                                Circle()
                                    .stroke(.white,lineWidth: 2)
                                    .padding(7)
                            })
                            .frame(width: 40, height: 40)
                            .background(Color.white, in:
                                RoundedRectangle(cornerRadius: 10,
                                style: .continuous))
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                    }
                }
                ExpenseCardView()
            }
            .padding()
        }
        .background {
            Color("BG")
                .ignoresSafeArea()
        }
    }
    
    // MARK: Expense Gradient CardView
    @ViewBuilder
    func ExpenseCardView()->some View {
        GeometryReader{proxy in
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(
                    .linearGradient(colors: [
                    Color("Gradient1"),
                    Color("Gradient2"),
                    Color("Gradient3")
                    ], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
            
            VStack(spacing: 15) {
                VStack(spacing: 15) {
                    // MARK: Currenly Going Month Date String
                    Text(expenseViewModel.currentMonthDateString())
                        .font(.callout)
                        .fontWeight(.semibold)
                    // Current Month Expenses Price
                    Text(expenseViewModel
                        .convertExpensesToCurrency(expenses: expenseViewModel.expenses))
                    .font(.system(size: 35, weight: .bold))
                    .lineLimit(1)
                    .padding(.bottom, 5)
                }
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .frame(height: 220)
        .padding(.top)
    }
        
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
