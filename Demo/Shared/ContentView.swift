import SwiftUI
import Keyboard

struct ContentView: View {
    var body: some View {
        VStack {
            Keyboard()
            Keyboard(settings: KeyboardSettings(noteRange: 48...65, key: .F))
            Keyboard(settings: KeyboardSettings(shouldDisplayNoteNames: false,
                                          noteColors: { noteClass in
                [.red, .orange, .yellow, .mint, .green,
                 .teal, .cyan, .blue, .indigo, .purple, .pink,
                 .init(red: 1.0, green: 0.33, blue: 0.33)][noteClass.intValue]
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
