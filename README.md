## Carousel

The purpose of this homework is to leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. We're going to use the techniques from this week to implement the Carousel app from the signed out state to the basic signed in state.

Time spent: `~6 hours'

### Features

Landing Screen
[x] Static photo tiles on the initial screen.
[x] User can scroll to reveal sign in buttons.

Sign In
[x] Tapping on email/password reveals the keyboard and shifts the scroll view and Sign In button up.
[x] Upon tapping the Sign In button.
    [x] If the username or password fields are empty, user sees an error alert.
    [x] If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
    [x] If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens.

Tutorial Screens
[x] User can page between the screens.
Image Timeline
Display a scrollable view of images.
User can tap on the conversations button to see the conversations screen (push).
User can tap on the profile image to see the settings view (modal from below).
Conversations
User can dismiss the conversations screen.
Settings
User can dismiss the settings screen.
User can log out.
Optional User Stories
Landing Screen:
Photo tiles move, scale and rotate while user scrolls.
Sign In:
User can scroll down to dismiss keyboard.
User sees the form scale up and fade it in as the screen appears.
Sign up / Create a Dropbox:
Tapping in the form reveals the keyboard and scrolls the form and button up so they remain visible.
Tapping the "Agree to Terms" checkbox selects the checkbox.
Tapping on "Terms" shows a web view with the terms.
User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
Tutorial Screens:
User can page between the screens with updated dots.
Upon reaching the 4th page, the page indicator dots are hidden and "Take Carousel for a Spin" button is shown.
Learn more about Carousel:
Show the "Learn more about Carousel" button in the photo timeline.
Tap the X to dismiss the banner.
Track the 3 events:
(1) View a photo full screen, (2) Swipe left and right and (3) Share a photo.
Upon completion of the events, mark them green.
When all events are completed, dismiss the banner.
Settings
User is presented with an action sheet with actions to "cancel" or "logout".


1. Landing Screen
    [x] Static photo tiles on the initial screen
    [x] User can scroll to reveal sign in buttons
    [x] Photo tiles move, scale, and rotate while users scroll


2a. Sign in
    [x] Tap email/password reveals keyboard and shifts elements on screen
    [x] Upon tapping the sign in button
        - [x]If the username or password fields are empty, user sees an error alert
        - [x]If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert
        - [x] If credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign in screens
    - [x] User can scroll down to dismiss the keyboard
    - [x] User sees the form scale up and fade it in as the screen appears

2b. Sign up / Create a Dropbox
    - [x][x]Tapping in the form reveals keyboard and scrolls the form and button up to be visible
    - [x][x]Tapping the checkbox checks it 
    - [x][x]Tapping the checkbox shows the terms in a WebView (only when checking, not when unchecking)

3. Tutorial Screens
    - [x] User can page between screens
    - [x][x]User can page between the screens with updated dots
    - [x][x]Upon reaching the 4th page, the indicator dots are hidden and take Carouself for a Spin button is shown

4. Image timeline
    - [x] Display a scrollable view of images
    - [x] User can tap on the conversations button to see the conversations screen
    - [x] User can tap on the profile image to see the settings view

5. Conversations
    - [x] User can dismiss the conversations screen

6. Settings
    - [x] User can dismiss the settings screen
    - [x] User can log out
    - [x][x]User is presented with an action sheet with actions to cancel or logout





Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. All the caution type errors that show up, ALL THE TIME
2. Passing data through view controllers
3.Creating a method (for loop???) for the transform part of the scrolling homepage


### Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Video Walkthrough](https://raw.githubusercontent.com/daniellesimpson/Carousel/master/SImpson_Carousel_2.gif)


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

There were missing instructions and assets for the Learn More About Carousel activity.
Signing out back to the initial screen doesn't reset the images back to where they started. 
After signing out, you can't sign back in. 

