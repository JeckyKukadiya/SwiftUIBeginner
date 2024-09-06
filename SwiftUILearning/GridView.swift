//
//  GridView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 10, verticalSpacing: 10) {
            ForEach(0..<4) { row in
                GridRow(alignment: .bottom) {
                    ForEach(0..<4) { col in
                        let cellNo = (row * 4) + (col + 1)
                        if cellNo == 7 {
                            EmptyView()
//                            Color.green
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNo)
                                .gridCellColumns(cellNo == 6 ? 2 : 1)
                                .gridCellAnchor(.leading)
                                .gridColumnAlignment(
                                    cellNo == 1 ? .trailing : cellNo == 4 ? .leading : .center
                                )
                        }
                    }
                }
            }
        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .frame(width: 40, height: 40)
            .font(.largeTitle)
            .padding()
            .background(.blue)
    }
    
}

#Preview {
    GridView()
}
