import SwiftUI

struct Home: View {
    
    var body: some View {
        NavigationView {
            //Geometry Ready For Greeting Frame....
            GeometryReader{reader in
                let rect = reader.frame(in: .global)
                VStack(spacing:15){
                    HStack(spacing:25){
                        //Buttons
                        NavigationLink {
                            AddItem()
                        } label: {
                            NavButton(image: "plus", title: "Memo", rect: rect, color: Color.pink)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        
                        
                        NavigationLink {
                            AddItem()
                        } label: {
                            NavButton(image: "trash", title: "delete", rect: rect, color: Color.red)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                    }///hstack
                    .frame(width: rect.width,alignment: .center)
                    
                    
                    
                    HStack(spacing:25){
                        //Buttons
                        
                        NavigationLink(destination: ViewMemo(), label: {
                            NavButton(image: "doc.plaintext", title: "Memo", rect: rect, color: Color.blue)
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        
                        
                        NavigationLink {
                            AddItem()
                        } label: {
                            NavButton(image: "star", title: "Rating", rect: rect, color: Color.orange)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        
                    }///hstack
                    .frame(width: rect.width,alignment: .center)
                    
                }
                
                
            }
            
        }
        }
        
//        NavigationLink {
//            NewDA()
//        } label: {
//            Image(systemName: "person.fill")
//        }
//
//        Text("hello")
//            .font(.title)
//            .onTapGesture {
//                print("hello pressed")
//            }
    
}

struct NavButton:View{
    var image:String
    var title:String
    var rect:CGRect
    var color:Color
    
    var body: some View{
        VStack(spacing:0){
            Image(systemName: image)
                .font(.title2)
                .frame(width: rect.width/3,height: rect.width/3,alignment: .center)
                .background(color)
                .clipShape(Circle())
            
            Text(title)
                .font(.system(size:10))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
