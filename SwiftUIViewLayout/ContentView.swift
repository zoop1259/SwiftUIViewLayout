//
//  ContentView.swift
//  SwiftUIViewLayout
//
//  Created by 강대민 on 2022/06/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("hello")
//        //이젠 된다..
//        Text("이러면 컴파일안됨")
        /*
         containver {
            content
            content
            ...
         }
         */
        
        //basic stack
        HStack(spacing: 30) {
            VStack(spacing: 50) {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
            }
            //Z스택은 spacing불가.
            ZStack() {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 150, height: 150)
                    //z스택은 xy좌표 둘다 필요
                    .offset(x: 40, y: 40)
            }
        }
        
        //alignment top, center, bottom
        //위에처럼 스탁 자체에도 걸 수 있으나 컨테이너에 걸수도 있다.
        HStack(alignment: .bottom) {
        //HStack() {
            Spacer() //빈공간 채우기
            Rectangle().fill(Color.green).frame(width: 150, height: 150)
            Rectangle().fill(Color.red)
                .frame(width: 150, height: 550)
        }.background(Color.blue)
        
        //게시글 작업?
        VStack {
            Text("제목").font(.largeTitle)
            Text("부제목").foregroundColor(Color.gray)
            Spacer()
            Text("본문내용")
            Spacer()
            Spacer()
            Text("각주").font(.body)
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
