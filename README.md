# Jogster

By Sean Francis N. Ballais ([Personal Website](https://seanballais.github.io/), [Twitter](https://twitter.com/seanballais), [Email](mailto:sfballais123@gmail.com))

Jogster is a minimal running timer app that lets you time your run/walk cycles. In the run/walk method, you cycle between running and walking for a certain amount of time.

### Using Jogster

Jogster requires you to set the amount of time for each run and walk cycle. A dropdown box is available to select the length of the cycles.

Once you have selected your preferred length, you will shake your phone to start the cycle. The background will change from white to yellow during the run cycle, and yellow to white during the walk cycle. To stop and reset the run/walk cycle, you will only need to shake your phone.

The phone will do a long vibrate (more or less for 1 second) when shaken to notify you that the run/walk cycle has been started or stopped. It will also briefly vibrate when you should switch from running to walking and vice versa.

### Limitations and Special Instructions

Due to the 5KB (5,120 bytes) limitation on the code size (this project has a code size of 5,083 bytes), the app does not include functionality that allows it to run in the background. As such, it can only be run when it is on the foreground (i.e. the currently used app on the phone) and when the phone display is on.

When running and using the app, the phone should not be suddenly shook and is recommended to remain in a stationary position as much as possible.

The app is only guaranteed to run on Android devices. It may still run well on iOS devices but it is unconfirmed due to the lack of testing. When using a tablet, the UI may also not look as good as when viewed using a smartphone.

### Source Code

The code is licensed under the MPL 2.0 license and can be viewed in [GitHub](https://github.com/seanballais/jogster).
