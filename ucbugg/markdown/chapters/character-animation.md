# Character Animation

Before starting make sure to grab a copy of the [Max Rig](/ma/max.ma).

## Familiarize Yourself with Max

Open up a new Maya project, then create a reference by selecting File-> Create reference. Locate the the max rig that you saved, and create a reference. Once you've referenced the .ma file, start playing around with the controls. As you select them, you will see different attributes of those controls pop up in the channel box. 

To show the channel box, click the right most button in the upper right. 

![Maya Image](/images/character-animation/max_cbox.png)

Some animation controls may only have "rotate" or "translate" as options. Others might have specially-named options that the rigger put in. If you use your hotkeys (W E R) on the controls, you will see that some move tools will be greyed out - this means you can't use that tool on that specific animation control. 

## Animating a jump

We'll be working with several of the 12 basic principles of animation in this lab. Squash & stretch, anticipation, slow in and slow out, follow through, arcs, and the rest.

Make sure you are in the 'Animation' Menu.

**First, set your playback speed to 24 fps** (frames per second). You can do this by clicking on the preferences icon in the bottom left hand corner. 

![Maya Image](/images/character-animation/max_001.jpg)

Or, you can go to Window &rarr; Settings/Preferences &rarr; Preferences, and then clicking on 'Time Slider' in the left hand column.

**Set your time frame to 1 to 100 frames** (or something larger) in the time slider. Then, **put your cursor at 1 second** on the time slider at the bottom. 

![Maya Image](/images/character-animation/max_002.jpg)

To animate a jump, we need to be able to move to move several parts of the body, from head to toe.  

**First, select the rectangular controller** around his waist. Options will pop up in the channel box. You will notice that the translate, rotate, and scale tools are all greyed out. 

![Maya Image](/images/character-animation/max_003.jpg)

To enable the bloke's IK hand control, we must select an option for "Arm Left IKFK," and "Arm Right IKFK." Make sure FK IK is set to 1 (not 0). Notice that the controllers on the arms have changed for the Max rig. If you select the purple pin sticking out from the wrist, you will notice that the translate and rotate tools are enabled.

![Maya Image](/images/character-animation/max_004.jpg)

Another aspect of this rig to note is the finger controls. In order to curl or spread them, there are controls in the channel editor which you must select. Once selected, you can middle click and drag to increase or decrease the amount of bend you want in the fingers.

![Maya Image](/images/character-animation/max_007.jpg)


Working with the entire body may seem daunting at first... and it is. But that's why we take it one step at a time! Now let's think of what body parts we use when we jump, and then we can decide which controllers we'll be mainly working with.

![Maya Image](/images/character-animation/max_005.jpg)

In this diagram, the arrows point to the controllers we'll be working with. So, let's start with a starting pose.

![Maya Image](/images/character-animation/max_006.jpg)

Once you have the pose you want, be sure to key all the parts you expect to be moving. You can do this by selecting your controllers, then clicking on frame 1 and pressing 's' on your keyboard. **The keyed frame will be represented by a small vertical red line in the time slider.** Now the rig will always be in this position at frame 1. Now doesn't that look cool?

Before we move on any further, let's think about how this character is going to move. This pose implies forward motion, and it will require some time to gather energy to make a leap forward. What would that look like? When in doubt, think ARCS. He'll jump in an arc of course.

So, let's go into orthographic view (The four square view), and switch to side view. What we want to do now is select the 'Curves' tab, and draw an arc.

![Maya Image](/images/character-animation/max_curve.png)

![Maya Image](/images/character-animation/max_008.jpg)

If you've ever worked with a pen tool in Photoshop, gimp, or any type of tool that creates curves, you'll have to click and drag to smooth out your arc.

Now that our arc is made, we can use it as a reference of how our character should move in space and time. Now, let's talk about blocking. Blocking is how we work time and spacing so that we don't spend 3 hours polishing a single step in a walkcycle, only to realize our character isn't going to end up in the right spot. Blocking gives us an idea of where our character will be at time X.

Now, set your frame to 18. (The bottom number that pops up in the small highlighted black strip lets you know the exact frame you're on.) Now set your next pose. The best way to start is moving the main rectangular hip controller to where you want it, then having the arms and legs follow after.

![Maya Image](/images/character-animation/max_009.jpg)

Set your key frame by pressing S. You might notice that the attributes in the channel box become pink. This indicates that there have been key frames set on them.

If you press play on playblast, you'll notice that our character crewdly jumps into the air. Let's put a temporary fix on that. Select the controllers that you've keyed. Go into the graph editor.

![Maya Image](/images/character-animation/max_015.jpg)

Now select the curve points and change them to step tangents.

![Maya Image](/images/character-animation/max_016.jpg)

Now instead of a smooth animation, we have the character jumping from one pose to another, like blocks of poses... Hence the name, blocking. Please do this to your curves after setting every keyframe.
 
Now, set your frame to 33. Again, use the translate and rotate tools to set your controllers where you want

![Maya Image](/images/character-animation/max_010.jpg)

Set your key frame by pressing S. 

<div class="note">You should always try to animate with as few transforms and key frames as possible in or to keep your scene clean. Be sure to The above two pictures are not good examples. You should only have 3 keyframes at this point: 1, 18, and 33</div>

Go ahead and select all your controllers, go to the graph editor, and spline your three keyframes.

![Maya Image](/images/character-animation/max_017.jpg)

Your animation should look pretty bad at this point, but it's getting there.We need more keyframes in-between our three main poses in order to properly time out the movements, otherwise maya will just calculate linearly how to get from one pose to another. This is why it's not such a good idea to spline early on when you're blockign out your animation. So, let's add more keyframes.

This adds anticipation as our character takes a stutter and hesitation. Block it.(Frame 6):
![Maya Image](/images/character-animation/max_011.jpg)


This is the moment before launching. Block it/ (Frame 12):
![Maya Image](/images/character-animation/max_012.jpg)


We have frame 18 as the height of our jump. This is the drag after hitting the max jumping height. Block it. (Frame 24):
![Maya Image](/images/character-animation/max_013.jpg)


We land forward flat footed. Block it. (Frame 30):
![Maya Image](/images/character-animation/max_014.jpg)

Once these poses are added, and spline the tangents in the curve editor. You'll see the animation is much better constrained and timed. One last touch to add is some recoil on the landing, much like you added anticipation for the hop on frames 1-12, we must add follow-through from frames 33 and onward. Keep blocking, splining, keyframing, and tweaking. Great animations are polished over and over again. Always make sure to save and keep it simple before polishing too much at once.

If you're interested in animating a walk cycle, check out these link to understand the basic poses of a walk cycle: contact, recoil, passing, high-point, contact, and so on...

<http://www.angryanimator.com/word/2008/11/01/animation-tutorial-2-walk-cycle/>

Created by: **By Michael Chen**
