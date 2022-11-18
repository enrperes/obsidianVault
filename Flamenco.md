# Quickstart

In broad terms, to render with Flamenco, follow these steps:

1.  [Download Flamenco](https://flamenco.blender.org/download/).
2.  Create a directory on some storage, like a NAS, and make sure it’s available at the same path on each computer.
3.  Install Blender on each computer you want to render on. It should be in the same place everywhere.
4.  Pick the computer that will manage the farm. Run `flamenco-manager` on it. This will start a web browser with the _Flamenco Setup Assistant_.
5.  Step through the assistant, pointing it to the storage (step 2) and Blender (step 3). Be sure to confirm at the final step.
6.  Download the _Blender add-on_ and install it. The link is in the top-right corner in your browser.
7.  Configure the add-on by giving it the address of Flamenco Manager. You can see this in your web browser, and the Flamenco Manager logs also show URLs you can try. Be sure to click the checkmark to check the connection.
8.  Save your Blend file in the shared storage.
9.  Tell Flamenco to render it. You can find the Flamenco panel in Blender’s Output Properties.