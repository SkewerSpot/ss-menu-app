<p align="center">
    <img width=200 height=200 src="https://user-images.githubusercontent.com/1288616/67279223-30cf6900-f4e8-11e9-85b9-3c7d0ce41354.png" alt="SS Menu logo">
<p>

# SS Menu

A fast, slick and modern menu app for taking restaurant orders.

## History

This app was originally written in [Ionic/Angular](https://ionicframework.com/) for a small cafe
in Jalandhar (Punjab, India) called [SkewerSpot](https://skewerspot.com). It was primarily meant to enforce some kind of a token system to keep track of active orders (and to keep anxious customers in check 😜).

**Menu App** was only one of a trio of apps, the other two being **Orders App** (list of open orders; meant for kitchen) and **Stats App** (sales data; meant for owners). With daily usage, it soon became a quick and reliable way to keep track of sales, which arguably is the favorite metric for most business owners.

The way Menu App stores data in [Firebase](https://firebase.google.com) allows, apart from displaying daily and monthly sales data, to show basic analytics such as:

- top selling items
- hot item categories
- popular combinations of items
- average ticket size
- (and many more mind-blowing actionable insights)

## Current Design

Two years later, the original Ionic tooling became old and broken on developer's (my) laptop, making further changes to the app impossible. Fixing the tooling would be too much work. Instead, the developer (I) decided to rewrite the entire app using a newly acquired skill: [Flutter](https://flutter.dev).

This new, rewritten app is based on the beautiful designs by **Ben Tortorelli** on Dribbble:  
https://dribbble.com/shots/7039032-Food-Delivery-App

![Design mockups](https://cdn.dribbble.com/users/279051/screenshots/7039032/media/d2f8453354752fe39e574ce8e82bed4b.png)

I made some creative liberties, especially with theme colors and app screens. The result is a performant and cute-looking app that works well on old hardware.

## Features

- Support for multiple outlets of the same restaurant
- Fast and performant
- Easy to navigate large menus
- Support for inputting detailed customer data
- Ability to add customizable items (variants, addons, syrups, sauces, toppings)
- The convenience of taking orders from a mobile device
- Works well on old devices (tested on HTC One series and Xiaomi Redmi phones)
- Well-documented code

## Caveats

As there's good, so there's bad. The app is far from perfect. Here I list down just a few bad things that come to mind:

- Data models can further be improved (_yeah, I'm lazy_)
- There are a bunch of TODOs waiting to be implemented
- There's a whole bunch of hardcodings (currency unit, menus, outlets, etc.)
- iOS version is missing
- Several parts of UI/UX have rooms for improvement

## Why You Should Use It?

With all its quirks, is it good enough? Well, let's see some usecases that may fit your particular case.

1. You want a quick and dirty solution for your own or client's restaurant.
2. You want to create a better solution using this one as your base.
3. You want to learn to create Flutter apps with some kind of state management, integration with Firebase, and highly custom UI/UX. This repo's commit history is pretty well-structure for this purpose.

## Setting Up Dev Enviroment

1. Install Flutter (read the official docs).
2. Install Flutter/Dart support in your IDE. I use Visual Studio Code.
3. Clone this repo locally.
4. Open the repo directory in your IDE. It should ideally automatically fetch missing dependencies (packages) for you. If not, run the command `flutter pub get`.
5. Run the app (press F5) in Android Simulator (API 28; Google APIs Intel x64 image).
6. Tada! It's up and running.
7. Drop me a line if you face an issue. (contact details below)

## Building

```
flutter build apk
```

This produces a 'fat' APK (Android app archive with support for lots of CPU architectures). To keep the file size small, create targeted APKs using:

```
flutter build apk --split-per-abi
```

## Distributing

Once the APK is built, install it on your/client's/friend's Android phone either via `adb install` or by sharing a download link to your APK.

## Screenshots

<p>
    <img height=400 src="https://user-images.githubusercontent.com/1288616/67282966-6ed08b00-f4f0-11e9-8c20-fff30db60e6a.png" alt="Screenshot of Home screen" />
    <img height=400 src="https://user-images.githubusercontent.com/1288616/67282967-6f692180-f4f0-11e9-8013-842a7123e992.png" alt="Screenshot of Home screen with an expanded section" />
    <img height=400 src="https://user-images.githubusercontent.com/1288616/67282969-7001b800-f4f0-11e9-9735-7b056c00644c.png" alt="Screenshot of Customize Item screen with option to pick a variant" />

</p>

<p>
    <img height=400 src="https://user-images.githubusercontent.com/1288616/67282970-7001b800-f4f0-11e9-9d26-72a58c93cff8.png" alt="Screenshot of Customize Item screen with option to choose from addons" />
    <img height=400 src="https://user-images.githubusercontent.com/1288616/67282972-709a4e80-f4f0-11e9-988f-5347c7e3bdf4.png" alt="Screenshot of Cart screen" />
    <img height=400 src="https://user-images.githubusercontent.com/1288616/67282975-71cb7b80-f4f0-11e9-9666-35a7db94e362.png" alt="Screenshot of Confirm Order screen" />

</p>

## Contact

Anurag Bhandari, 2019  
✉️[ab@anuragbhandari.com](mailto:ab@anuragbhandari.com)
