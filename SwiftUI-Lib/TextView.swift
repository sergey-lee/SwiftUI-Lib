//
//  TextView.swift
//  SwiftUI-Lib
//
//  Created by melllowing factory on 2023/07/11.
//

import SwiftUI

struct TextView: View {
    @State var toggled = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple text")
                    Text("Bold text")
                        .bold()
                    Text("Italic text")
                        .italic()
                    Text("Indigo Color text")
                        .foregroundColor(.indigo)
                    
                    Text("Multiline text with linespacing. Multiline Alignment: center. Line spacing: 10")
                        .padding(.horizontal)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10)
                    
                    Text("Negative Tracking text")
                        .tracking(-3)
                        .font(.title)
                    
                    Text("Positive Tracking text")
                        .tracking(4)
                        .font(.title)
                    
                    Text("Underlined text")
                        .font(.body)
                        .underline()
                    
                    Text("Striked through text")
                        .font(.body)
                        .strikethrough()
                }
                
                Group {
                    Text("Yellow Background text")
                        .font(.title)
                        .background(Color.yellow)
                    
                    Text("Green Background Rounded Frame text")
                        .font(.caption)
                        .padding(5)
                        .background(Color.green)
                        .cornerRadius(25)
                    
                    Text("L o o o o o o n g text with fixed size")
                        .font(.title)
                        .fixedSize(horizontal: true, vertical: false)
                    
                    Text("Text ")
                        .foregroundColor(.red)
                    + Text("Concatenation")
                        .foregroundColor(.blue)
                    
                    Text("Text with Shadow")
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(radius: 2, x: 2, y: 2)
                    
                    Text("Text with Symbols: • ⑧ ➏ ☻ ")
                    
                    Text(toggled ? "Text with Condition" : "Condition inside of Text")
                        .onTapGesture {
                            toggled.toggle()
                        }
                }
                
                
                /// Native fonts:
                Group {
                    Text("Large Title text")
                        .font(.largeTitle)
                    Text("Title text")
                        .font(.title)
                    Text("Title2 text")
                        .font(.title2)
                    Text("Title3 text")
                        .font(.title3)
                    Text("Headline text")
                        .font(.headline)
                    Text("Body text")
                        .font(.body)
                    Text("Callout text")
                        .font(.callout)
                    Text("Subhead text")
                        .font(.subheadline)
                    Text("Footnote text")
                        .font(.footnote)
                }
                Group {
                    Text("Caption text")
                        .font(.caption)
                    Text("Caption2 text")
                        .font(.caption2)
                }
            }
            .padding()
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
