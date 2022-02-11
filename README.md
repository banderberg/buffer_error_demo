# buffer_error_demo

Demonstrates the getSlotFromBufferLocked error when using Google Mobile Ads SDK with a Flutter Application

## Getting Started

Download and replace the value for com.google.android.gms.ads.APPLICATION_ID in AndroidManifest.xml with your own AdMob application ID.

The Ad Banner uses the test Banner ID provided by Google.

Build and run.

A test ad displays on the main page of the application.

Click "Click Me" and watch the debug console output of the application.

You will see somthing like "E/Surface (11459): getSlotFromBufferLocked: unknown buffer: 0xf05bb710" after you click.

Removing the container with child of AdBannerWidget in main.dart results in the error no longer appearing when you click.

At the time of this writing, I have no idea what the cause or the solution is.
