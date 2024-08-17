import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Avatars")
                .font(.title2)
            HStack{
                Button{
                    print("Hello")
                } label:{
                    VStack{
                        Image(NSDataAssetName(stringLiteral: "cats 1"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 170)
                        Text("1000 steps")
                    }
                }
                .padding()
                Button{
                    print("Hello")
                }label:{
                    VStack{
                        Image(NSDataAssetName(stringLiteral: "cats"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 170)
                        Text("10000 steps")
                    }
                }
            }
            HStack{
                Button{
                    print("Hello")
                } label:{
                    VStack{
                        Image(NSDataAssetName(stringLiteral: "cats 2"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 170)
                        Text("15000 steps")
                    }
                }
                Button{
                    print("Hello")
                } label:{
                    VStack{
                        Image(NSDataAssetName(stringLiteral: "cats 3"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 170)
                        Text("20000 steps")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
