# Testing Youtube Iframe Packages

A simple test with two packages.
The intent is to see how they work and find out how they show the youtube embedded video. 

Both packages do not need the Youtube for Android, but one of them (`pod_player`) shows `CORS errors` if you try it in web without preparation. You can bypass those errors if you are using Youtube API or setting your CORS policy in your backend.

This package, `pod_player`, also shows your window with only the most basic controls, and no accesss to YouTube whatswhoever. That, for me, is a good point, though people may want some customization and at least in my computer it seemed a bit lackluster in performance if compared to the actual youtube embed. 

The other package, `youtube_player_iframe` has a very convoluted documentation (needs updating badly), but gives much more options - at least seems to - to personalize your controls/screen. The way I use it is to keep the options the most simple possible, and the result is a common embedded youtube iframe. That in itself is not the result I was looking for, but I know the customization options can solve this (the problem for me is that I'm using videos that I don't want people to share outside the app - with a common youtube embed they can open the link on youtube)  

## Getting Started

You just need to clone the repository, and run the project. 
Switch the `home` param in `main.dart` 

if you want to bypass CORS in development, you can use these settings on your `launch.json`:

```json
{
    "name": "testing_youtube_embed (no web security)",
    "request": "launch",
    "type": "dart",
    "flutterMode": "profile",
    "program": "lib/main.dart",
    "args": ["--web-browser-flag", "--disable-web-security",]
},

```