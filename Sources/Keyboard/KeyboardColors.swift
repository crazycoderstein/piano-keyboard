import SwiftUI
import Tonic

public struct KeyboardColors {
    public static var rainbow: (NoteClass) -> Color = { noteClass in
        [.red, .orange, .yellow, .mint, .green,
         .teal, .cyan, .blue, .indigo, .purple, .pink,
         .init(red: 1.0, green: 0.33, blue: 0.33)][Int(noteClass.canonicalNote.noteNumber) % 12]
    }

    // Source: http://theappendix.net/posts/2013/08/music-and-color-the-french-connection
    public static var newtonian: (NoteClass) -> Color = { noteClass in
        let colors: [Color] = [
            .init(red: 228/255.0, green:  53/255.0, blue:  38/255.0),
            .init(red: 225/255.0, green:  86/255.0, blue:  45/255.0),
            .init(red: 231/255.0, green: 134/255.0, blue:  53/255.0),
            .init(red: 239/255.0, green: 211/255.0, blue:  90/255.0),
            .init(red: 245/255.0, green: 244/255.0, blue:  98/255.0),
            .init(red:  66/255.0, green: 141/255.0, blue:  65/255.0),
            .init(red:  67/255.0, green: 141/255.0, blue: 128/255.0),
            .init(red:  26/255.0, green:  14/255.0, blue: 126/255.0),
            .init(red:  68/255.0, green:  20/255.0, blue: 120/255.0),
            .init(red: 116/255.0, green:  24/255.0, blue: 120/255.0),
            .init(red: 151/255.0, green:  38/255.0, blue: 131/255.0),
            .init(red: 197/255.0, green:  48/255.0, blue: 129/255.0),
        ]
        return colors[Int(noteClass.canonicalNote.noteNumber) % 12]
    }

    public static var gray: (NoteClass) -> Color = { _ in .gray }
    public static var red: (NoteClass) -> Color = { _ in .red }
}

