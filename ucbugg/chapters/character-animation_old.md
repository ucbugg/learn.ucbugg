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

**First, set your playback speed to 24 fps** (frames per second). You can do this by clicking on the preferences icon in the bottom right hand corner. 

![Maya Image](/images/character-animation/max_001.jpg)

Or, you can go to Window &rarr; Settings/Preferences &rarr; Preferences, and then clicking on 'Time Slider' in the left hand column.

**Set your time frame to 1 to 100 frames** (or something larger) in the time slider. Then, **put your cursor at 1 second** on the time slider at the bottom. 

![Maya Image](/images/character-animation/max_002.jpg)

To animate a jump, we need to be able to move to move several parts of the body, from head to toe.  

**First, select the rectangular controller** around his waist. Options will pop up in the channel box. You will notice that the translate, rotate, and scale tools are all greyed out. 

![Maya Image](/images/character-animation/max_003.jpg)

To enable Max's IK hand control, we must select an option for "Arm Left IKFK," and "Arm Right IKFK." Make sure FK IK is set to 1 (not 0). Notice that the controllers on the arms have changed for the Max rig. If you select the purple pin sticking out from the wrist, you will notice that the translate and rotate tools are enabled.

But first, a quick refresher on FK vs. IK and what that means to an animator (since you already learned a bit about this during rigging).

FK stands for "forward kinematics" and means that the position of the hand (or foot) is dictated by all the joints that precede it. Think about how your shoulder works, first your shoulder joint rotates, then your elbow, then wrist. You can't move your hand without moving all the joints in your arm first. With FK, if you move your character's body, the arm and hand will follow along as well. 

This mode is useful for things like gesturing or if your hands are part of secondary motion in a walk cycle or something like that. But in certain situations it's too tedious to keep the hands or feet FK. 

That's where IK comes into play. IK, or inverse kinematics, is the opposite of FK. The hand is positioned separately from the rest of the body and a controller is set for the elbow joint so that you can angle the arm how you want. Think of it like the hand is a separate object that's just tethered to the rest of the body. In IK, when you move the body, the hand stays where it is, so IK is great for things like pushing or pulling, since you don't lose the position of the hand when animating the body.


![Maya Image](/images/character-animation/max_004.jpg)

Another aspect of this rig to note is the finger controls. In order to curl or spread them, there are controls in the channel editor which you must select. Once selected, you can middle click and drag to increase or decrease the amount of bend you want in the fingers.

![Maya Image](/images/character-animation/max_007.jpg)


Working with the entire body may seem daunting at first... and it is. But that's why we take it one step at a time! Now let's think of what body parts we use when we jump, and then we can decide which controllers we'll be mainly working with.

![Maya Image](/images/character-animation/max_005.jpg)

In this diagram, the arrows point to the controllers we'll be working with. So, let's start with a starting pose.

![Maya Image](/images/character-animation/max_006.jpg)

Once you have the pose you want, key all the parts you expect to be moving. You can do this by selecting your controllers, then clicking on frame 1 and pressing 's' on your keyboard. **The keyed frame will be represented by a small vertical red line in the time slider.** Now the rig will always be in this position at frame 1. Now doesn't that look cool?

Before we move on any further, let's think about how this character is going to move. This pose implies forward motion, and it will require some time to gather energy to make a leap forward. What would that look like? When in doubt, think ARCS. He'll jump in an arc of course.

So, let's go into orthographic view (The four square view), and switch to side view. What we want to do now is select the 'Curves' tab, and draw an arc.

![Maya Image](/images/character-animation/max_curve.png)

![Maya Image](/images/character-animation/max_008.jpg)

If you've ever worked with a pen tool in Photoshop, gimp, or any type of tool that creates curves, you'll have to click and drag to smooth out your arc.

Now that our arc is made, we can use it as a reference of how our character should move in space and time. Now, let's talk about blocking. Blocking is how we work time and spacing so that we don't spend 3 hours polishing a single step in a walkcycle, only to realize our character isn't going to end up in the right spot. Blocking gives us an idea of where our character will be at time X.

Now, set your frame to 18. (The bottom number that pops up in the small highlighted black strip lets you know the exact frame you're on.) Now set your next pose. The best way to start is moving the main rectangular hip controller to where you want it, then having the arms and legs follow after.

Remember how we set out frames per second to 24 when we started the lab? That means that one second on the screen equals 24 frames of animation (duh). So, since in our little scene here, we have Max jumping, we are going to set the height of his jump at frame 18, and he is going to land on frame 33. This means his whole jump will take about a second and half. It's good to think about timing early on in animation, because along with posing, timing is pivotal in creating a good animated scene.

![Maya Image](/images/character-animation/max_009.jpg)

Set your key frame by pressing S. You might notice that the attributes in the channel box become pink. This indicates that there have been key frames set on them.

If you press play on the timeline, you'll notice that our character crudely jumps into the air. Let's put a temporary fix on that. Select the controllers that you've keyed. Go into the graph editor.

Let's have a quick overview of the basics of using the graph editor! 

Selecting a controller on your rig will automatically display the curves for all of its attributes (translation, rotation, and any special values that controller may have). You can select individual attributes in the left panel and you can shift+select several in a row or you can command+select multiple attributes not in a row. Now, about getting around the actual graph. 

It's somewhat similar to the perspective view you're used to, since scrolling the F key still frames what ever you have selected, the mouse wheel still zooms in and out, command +right click still zooms in and out,  and using command + middle mouse still pans around. But, there are a couple cools things you can do when viewing the graph editor in addition! For example, using shift+ command + right mouse button and dragging horizontally scales the graph in only that direction (expands/contracts the frame range but not the value range) and dragging vertically scales the graph vertically (expands/contracts the value range and not the frame range). This is especially helpful when tweaking tangents in the graph that are close in value, since it allows for very fine adjustments and easy navigation. 

Also, using shift + the middle mouse button will constrain the movement horizontally or vertically depending on which way you move first. This is helpful when you want to change the value of a key without accidentally moving the key to a different frame, and vice versa). Additionally the move (W) and scale (R) tools still work in the graph editor and can be used to tweak tangents. If your cursor turns into a little circle when you are trying to edit, that just means that you have the select tool (Q) active and need to switch to the move or scale tool.

![Maya Image](/images/character-animation/max_015.jpg)

Now select the curve points and change them to step tangents.

![Maya Image](/images/character-animation/max_016.jpg)

Now instead of a smooth animation, we have Max changing between the poses over a single frame because our curves are now stepped (notice in the graph editor how the curves now resemble steps, hence the name). This type of curve is common in blocking (the first stage of animation) so that an animator can concentrate solely on the readability of his or her poses, which are of the utmost if the audience is to understand what's going on. This way, the animator can just concentrate on getting the storytelling poses down perfect (sometimes called the "golden poses") before he or she has to worry about making the stuff in between look good. Luckily, you won't have to select all of your curves and change them to stepped after every key you set, you can instead go into your animation preferences (remember where you changed your fps earlier?) and click on "animation" in the sidebar. Change your Default Out Tangent to "Stepped". Now, all the keyframes you set from now on will be stepped, so you can continue blocking your scene without having to worry about constantly changing the curves. (I would recommend changing this setting before you actually start animating just to make things easier and allow blocking to go as smoothly as possible). 

Now, set your frame to 33. Again, use the translate and rotate tools to set your controllers where you want

![Maya Image](/images/character-animation/max_010.jpg)

Set your key frame by pressing S. 

<div class="note">You should always try to animate with as few transforms and key frames as possible in or to keep your scene clean. The above two pictures are not good examples. You should only have 3 keyframes at this point: 1, 18, and 33</div>

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


A quick note about using Autokey! 

I know we've told you in the past not to use, but that was just for simplicity's sake. It can be really useful if you know how to use it, especially in the blocking stage. Rather than pressing S after every single little tweak you make to a pose (this can get very tedious and will wear out your S key). The button for autokey is down in the righthand corner of you screen, just to the left of the preferences button. When you press it, it will turn red, meaning that Autokey is on. Now, whenever you move or rotate or change a an attribute on any of your rig's controllers, it will automatically be keyed, without you having to press S! 

But note that Autokey only sets automatic keys on controls where you've manually set a key on it first, so you will still have to press S sometimes. Also note that Autokey, by default, only sets a key on attributes that are changed, not on the entire control (so if you translate y, only that will be keyed, translate x and z will be left unkeyed). As you can imagine, this still saves a lot of time and keystrokes, especially when you're blocking and just want to concentrate on getting a good solid pose in place rather than worrying about whether you pressed S or not. Note that it is VERY important to remember what frame you're on when you have Autokey active. Otherwise you can accidentally set keys in all kinds of crazy places that you didn't mean to. So as long as you pay attention, Autokey can be a great tool to use!



## Extra for Experts

Though we already went over the graph editor a bit, understanding how this part of Maya works is essential to any animator. Opening the graph editor for the first time and seeing a tangle of multi colored lines can seem scary and incomprehensible at first, but UCBUGG is here to help! __Spline curves__, or just __"splines"__, are the very nuts and bolts of what makes up the movement in your animation. The main idea with splines is that they represent changes in value over time (it's a simple graph setup really). The x axis is time (or in our case, the frame numbers which represent time) and the y axis is the value of whatever attribute we are looking at. So, as a curve raises and lowers, it's an increase and decrease in the value of the attribute, and a peak or a valley in a curve, understandably, represents a change in direction for that attribute. Feel free to play around with your rig in the graph editor while watching in the viewport to see how the two correlate and get a feel for using the graph editor. 


Another important point to learn about in the graph editor is the different types of __tangents__ (the buttons for them are located at the top of the graph editor). We already learned about a couple in the lab, stepped and splined. But there are more! But first, a bit about tangent handles in general. If you've ever used a graphics programs like illustrator or Photoshop, this may seem familiar to you. The tangent handles that exist around every keyframe can be used to tweak your animation even more so that just setting and moving keys in the graph editor. Tangent handles allow to adjust the curves direction before and after the key they're around, and since the slopes of a curve can drastically effect your animation, it's important to know how to use tangent handles. Maya has several different types of tangents, but it's important to note that these are just starting points from which you will be tweaking. As we saw earlier when we changed our curves, there is no magic button that makes your animation look great (in fact, splining for the first time can be kind of depressing because of how weird it can look). But, tangent handles can fix that! By learning the different kinds of tangent types and what they will do to your curves, these little guys can really help your workflow, and in the end, your animation!

First off, we have __spline tangents__, which you've already played with in your jumping animation. This type of tangent will make a smooth transition between all the keys, and are good for keys that are transitional (going to same direction on either side of the key). But with extremes, where the curves change direction, spline tangents can often overshoot the curve, which is difficult to control. 

Next are __clamped tangents__, which are very similar to spline tangents in that they smoothly interpolate between keys, except that they will not overshoot any keys that are the same value or close to the same value.

Next are __linear tangents__, which simply make a straight line from key to key, creating sharp angles and transitions. What's important to note here is that linear tangents give you even spacing, and so they are good for times when an object is traveling then impacts something else at full speed (remember your ball hitting the ground?)

Next are __flat tangents__, which make a plateau at each key, most commonly used at extreme keys where the curve changes direction. Flat tangents are nice because they automatically put an ease-in and ease-out on each key, but this is not so great for transitional keys, as you can imagine. 

Next are __stepped tangents__, which we already learned a bit about. These tangents do not interpolate at all, but hold still until the next key, where change in value happens over a single frame. Typically these keys are used for blocking in animation and are later changed to a different kind of tangent. The exception would be for things like an IK/FK switch or the visibility of something, where the change needs to happen over a single frame. 

Finally, there are __plateau tangents__ which are similar to clamped in that they won't overshoot and they flatten out all extreme keys, but they additionally flatten out the starting and ending keys.

So now that you know what all the different tangent types and do, don't be afraid to use them! And more importantly, don't be afraid to change them! They are meant as starting points to be helpful, and are not rules by any means. Speaking of changing them, let's learn a bit about exactly how to customize your tangents:

First, there are two types of tangents: __weighted__ and __non-weighted__. You can use one or the other or both, it's all a matter of preference (really the whole animation workflow is a matter of preference, you'll probably never meet two animators who work the same way). But it's good to experiment to see what styles of workflow fit you best! 

* Non-weighted tangents simply means that the handles will all be the same length and have the same amount of influence on a curve. When you select one end of a handle and move it around, the other end will move as well, since they act as one unified piece. You can, however, break the tangents. This will cause the handles to change colors, indicating that they are now two separate pieces that you can rotate independently and get any kind of curve you want. 
* Weighted tangents, on the other hand have differing lengths that depend on the value difference between keys. So the larger the value difference, the longer the tangent will be and the more influence it will have on the curve. You can break and manipulate the handles just like you could with non-weighted tangents, but you can additionally change the length of the tangents and thus change how much they influence the curve, making any curve shape possible. 

Also keep in mind that using tangent handles is just one way to approach animating. Some animators only set keys and never even touch their tangent handles. Others use handles to throughout their animation process. Many use a combination. In the end it's up to you but be sure to experiment and learn different approaches so that you can use whatever method is best for a particular task. 

Last thing to note is some resources for people who want to learn more about animation! First off, some recommended reading material:

_The Illusion of Life by Frank Thomas and Ollie Johnston_

This is pretty much the bible for animators. Plus it has lots of interesting stories about the early days of Disney animation.


_Timing for Animation by Harold Whitaker and John Halas (Updated by Tom Sito)_

Another great book that focuses solely on timing. The second edition has updates for computer animators (though the principles laid out for 2D animation in the original definitely still apply to 3D)


_The Animator's Survival Kit by Richard Williams_

Another of animation's bibles. It is very dense and very thorough and a must have on an animator's bookshelf.


_Character Animation Crash Course by Eric Goldberg_

A great book on the basics of animation (which animators always need to review) and some intermediate skills. Focuses on 2D mostly, but still useful to any kind of animator. 


_How to Cheat in Maya 2010 by Eric Luhta_

A great book on animating specifically in Maya. Before diving into this book, you should have a solid understanding of the principles of animation (which can be found in the above books). That being said, this book a fantastic run down of Maya's animation features and can greatly improve and speed up your workflow. 


And now some cool websites to check out!

_The Animation Mentor Tips and Tricks Blog: http://www.animationtipsandtricks.com/_

Tons of great tips from professional working animators that can clear up lots of questions any aspiring animators may have. They also have volumes one and two in ebook form for free if you want more in-depth advice.


_The Eleven Second Club: http://www.11secondclub.com/_

A monthly character animation competition where each month, the site releases eleven seconds of dialogue from a film or TV show, and any animator can animate to the dialogue and enter the competition. First place winners get an eCritique from a mentor from Animation Mentor! I highly recommend checking out the resources section of the site, which has links to free rigs for animators to use and tons of great tips on acting, animation workflow, and even on critiquing animation. 

_http://www.angryanimator.com/word/2008/11/01/animation-tutorial-2-walk-cycle/_

If you're interested in animating a walk cycle, check out this link to understand the basic poses of a walk cycle: contact, recoil, passing, high-point, contact, and so on...

Happy animating!




Created by: **By Michael Chen**
Edited by: **Janel Drewis**
