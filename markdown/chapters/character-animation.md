# Character Animation

Before starting make sure to grab a copy of the [Bloke Rig](/character-animation/bloke.ma).

## Familiarize Yourself with the Bloke

First, watch [this video](http://www.youtube.com/watch?v=OOejsA8E1F4) to help you get a sense of the Bloke's capabilites.

Once you've opened the .ma file, start playing around with the controls. As you select them, you will see different attributes of those controls pop up in the channel box. 

To show the channel box, click the right most button in the upper right. 

![Maya Image](/images/character-animation/bloke_cbox.png)

Some animation controls may only have "rotate" or "translate" as options. Others might have specially-named options that the rigger put in. If you use your hotkeys (W E R) on the controls, you will see that some move tools will be greyed out - this means you can't use that tool on that specific animation control. 

## Animating a hand wave

Make sure you are in the 'Animation' Menu.

**First, set your playback speed to 24 fps** (frames per second). You can do this by clicking on the preferences icon in the bottom left hand corner. 

![Maya Image](/images/character-animation/bloke_205.jpg)

Or, you can go to Window &rarr; Settings/Preferences &rarr; Preferences, and then clicking on 'Time Slider' in the left hand column.

**Set your time frame to 1 to 100 frames** (or something larger) in the time slider. Then, **put your cursor at 1 second** on the time slider at the bottom. 

![Maya Image](/images/character-animation/bloke_210.jpg)

To animate a wave, we need to be able to move the wrist, elbow, and hand.  

**First, select the "fkik" icon** above his wrist. Options will pop up in the channel box. You will notice that the translate, rotate, and scale tools are all greyed out. 

![Maya Image](/images/character-animation/bloke_207.jpg)

To enable the bloke's hand control, we must select an option for "IK FK MATCH." Left-click on '- select -' and a small menu will pop up. Select 'matchFK' and then make sure FK IK is set to 1 (not 0). Notice that a purple cube will pop up at the Bloke's rig. If you select this purple cube, you will notice that the translate and rotate tools are enabled.

![Maya Image](/images/character-animation/bloke_215.jpg)

Now, use the translate tool to bring the arm down a little, and in. Next, use the rotate tool to bring the hand into a waving position.

![Maya Image](/images/character-animation/bloke_003.jpg)

This looks like a pretty good start to a wave, except the elbow seems to be a little too far back. Select that little triangular pyramid horizontally behind the elbow, and translate it forward a bit. 

![Maya Image](/images/character-animation/bloke_216.jpg)

![Maya Image](/images/character-animation/bloke_203.jpg)

We're ready to set our first key frame! Make sure you're at 1 on the time slider.  There a few ways to set a key frame. You can select the animation control, Animate &rarr; Set Key. 

![Maya Image](/images/character-animation/bloke_008.jpg)

You can also highlight the attributes in the channel editor, right click, and choose "Key Selected."

![Maya Image](/images/character-animation/bloke_010.jpg)

Finally, you can simply press S. **The keyed frame will be represented by a small vertical red line in the time slider.** 

Now, set your frame to 15. (The bottom number that pops up in the small highlighted black strip lets you know the exact frame you're on.) 

![Maya Image](/images/character-animation/bloke_204.jpg)

Now, use the translate tool to move the forearm out in the bloke's first wave. Then rotate the wrist. 

![Maya Image](/images/character-animation/bloke_005.jpg)

Set your key frame by pressing S. You might notice that the attributes in the channel box become pink. This indicates that there have been key frames set on them. 

Now, set your frame to 30. Again, use the translate tool to move the forearm out in the bloke's first wave. Then rotate the wrist. 

![Maya Image](/images/character-animation/bloke_300.jpg)

Set your key frame by pressing S. 

<div class="note">You should always try to animate with as few transforms and key frames as possible in or to keep your scene clean.</div>

If you're interested in animating a walk cycle, check out these link to understand the basic poses of a walk cycle: contact, recoil, passing, high-point, contact, and so on...

<http://www.angryanimator.com/word/2008/11/01/animation-tutorial-2-walk-cycle/>

Created by: **By Christine Li**
