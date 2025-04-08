//
//  File.swift
//  ElegantEmojiPicker
//
//  Created by Philippe Boudreau on 2025-04-08.
//

import SwiftUI

struct ElegantEmojiPickerView: UIViewControllerRepresentable {
    let onEmojiPicked: (String) -> Void

    func makeCoordinator() -> Coordinator {
        Coordinator(onEmojiPicked: onEmojiPicked)
    }

    func makeUIViewController(context: Context) -> ElegantEmojiPicker {
        let configuration = ElegantConfiguration(showRandom: false, showReset: false, showClose: false)
        let picker = ElegantEmojiPicker(delegate: context.coordinator, configuration: configuration)
        return picker
    }

    func updateUIViewController(_ uiViewController: ElegantEmojiPicker, context: Context) {
        // Nothing to update
    }

    class Coordinator: NSObject, ElegantEmojiPickerDelegate {
        private let onEmojiPicked: (String) -> Void

        init(onEmojiPicked: @escaping (String) -> Void) {
            self.onEmojiPicked = onEmojiPicked
        }

        func emojiPicker(_ picker: ElegantEmojiPicker, didSelectEmoji emoji: Emoji?) {
            guard let emoji else { return }

            onEmojiPicked(emoji.emoji)
        }
    }
}
