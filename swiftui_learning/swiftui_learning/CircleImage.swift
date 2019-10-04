//
//  CircleImage.swift
//  swiftui_learning
//
//  Created by Днепров Данила on 04/10/2019.
//  Copyright © 2019 Днепров Данила. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("circle_image").resizable().frame(width: 200.0, height: 200.0)
            .shadow(radius: 10)
    }
}



#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
