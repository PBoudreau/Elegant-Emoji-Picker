# How to update emojis

## One time setup

* Install required gems by running the following from the *Update Emojis* folder:

```
bundle install
```

## Performing the update

* Obtain the desired list of emojis from [https://www.unicode.org/Public/emoji/]() - download the file named *emoji-test.txt*

**WARNING** The version of iOS installed on the device must support the version of emojis in the above file. For example, according to [https://emojipedia.org/apple](), iOS 18.4, released on March 30th 2025, supports *Emoji 16.0*.

* Place / replace the file in the *Update Emojis* folder; it should be named *emoji-test.txt*
* The currently used emoji JSON file to be used as a baseline, namely to preserve tags for searching, should already be present in the *Update Emojis* folder and should be named *emoji.json*
* Run the script:

```
ruby emoji-test.txt
```

* *emoji.json* should have been updated with the new content from *emoji-test.txt* while preserving tags.
* Replace *emoji.json* in *Elegant-Emoji-Picker/Sources/Resources/emoji.json* with the updated version.