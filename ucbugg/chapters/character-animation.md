# Character Animation

Before starting make sure to grab a copy of the [Goon Rig](http://seanburgoon.com/goonrig/).

## Familiarize Yourself with Goon Rig

Open up a new Maya project, then create a reference by selecting File-> Create reference. Locate the the goon rig that you saved, and create a reference. Once you've referenced the .ma file, start playing around with the controls. As you select them, you will see different attributes of those controls pop up in the channel box. 

To show the channel box, click the right most button in the upper right. 

![Maya Image](/images/character-animation/max_cbox.png)

Some animation controls may only have "rotate" or "translate" as options. Others might have specially-named options that the rigger put in. If you use your hotkeys (W E R) on the controls, you will see that some move tools will be greyed out - this means you can't use that tool on that specific animation control. 

## Animating a jump

We'll be working with several of the 12 basic principles of animation in this lab. Squash & stretch, anticipation, slow in and slow out, follow through, arcs, and the rest.

Make sure you are in the 'Animation' Menu.

**First, set your playback speed to 24 fps** (frames per second). You can do this by clicking on the preferences icon in the bottom right hand corner. 

![Maya Image](/images/character-animation/max_001.jpg)

**Second, set your "Default Out Tangent" to "Stepped".** Do this by again going in to your animation preferences in the bottom right corner, and clicking "animation" from the available menus on the left side. There you will be able to change your Default Out Tangent. The purpose of changing to stepped tangents will be explained a little later in the lab.

![Maya Image](/images/character-animation/goon_001.png)

Or, you can go to Window &rarr; Settings/Preferences &rarr; Preferences, and then clicking on 'Time Slider' in the left hand column.

**Set your time frame to 1 to 33 frames** in the time slider. We are going to animate a jump cycle that is 32 frames long, so frame 1 and 33 will match up so that the jump loops correctly. Then, **put your cursor at 1 second** on the time slider at the bottom.

![Maya Image](/images/character-animation/goon_002.png)

To animate a jump, we need to be able to move to move several parts of the body, from head to toe.  

Now that we have our rig referenced in and our animation preferences set-up correctly, let's start posing! Now it's usually good practice, when blocking in your animation, to set keys on every controller to that you have as much control when animating as possible. So, select all of Goon's controls (just drag a selection box around him, all the controllers should turn white) and hit S to set a key at frame 1.

We're going to have Goon jumping in place in a 32 frame cycle and I decided that I want the beginning of the cycle to be just when his feet touch back on the ground as he lands. So I've worked out a pose of what I want that to look like. He's standing straight up, hands in the air.

![Maya Image](/images/character-animation/goon_003.png)

Pose him similarly and make sure you are setting keys as you go.

When first beginning blocking, it's good to think about what your "golden poses" are. These poses are the absolute minimum poses that you need to tell the story of what's happening in your animation. For us, that's Goon jumping up and landing so I've done my basic blocking with only three poses, his crouch, the peak of his jump, and his landing. These are really the most important poses to communicate what's happening in the scene, so these are the first and most important ones to think about.

So, onto our second pose, his crouch! For this I wanted to have a big anticipation, so I have Goon crouch really low so that there's a lot of power in his jump. I also decided that I like the time of his crouch being around frame 17. So, again select all of Goon's controls, go to frame 17, set a key, and pose him into a nice crouch position from which he will spring up into the air. Here's what mine looks like 

![Maya Image](/images/character-animation/goon_004.png)

Notice that since we set our out tangents to "stepped" earlier in the lab, Goon just snaps to the next pose at frame 17 rather than interpolating evenly over the 17 frames. Animators use this type of curve so that they can concentrate solely on the timing and the readability of his or her poses, which are of the utmost if the audience is to understand what's going on. This way, the animator can just concentrate on getting the storytelling poses down perfect before he or she has to worry about making the stuff in between look good.
 
So now you should have Goon standing up straight at frame 1 and then snapping into a crouch pose at frame 17. 

For our third pose, we'll have Goon at the peak of his jump. I timed this pose out to be at frame 27. So now, set a key for Goon at frame 27 and put Goon into a nice jumping pose, similar to what I have here:
 
![Maya Image](/images/character-animation/goon_005.png)
 
Note that in order to actually put Goon in the air, the best way is to grab his root controller (the yellow triangle controller around his middle) and translate that to where you want it, then select his feet controls and placing those appropriately. Do not use the master controller, it may cause problems when you change your curves later on.
 
Ok we're almost done with the rough blocking, the only thing left is to copy your first pose onto frame 33 so that when you play frames 1-32, your animation will loop correctly. To do this, select all the controls, then middle mouse drag from frame 1 to frame 33 and while you still have the middle mouse button pressed, hit S. This should copy and your should have a roughly blocked in jump! Your animation should look something like the following playblast. 

###Rough Blocking:
<iframe width="560" height="315" src="https://www.youtube.com/embed/ivKBFxyvkUk" frameborder="0" allowfullscreen></iframe>
 
He looks a bit silly right now with his arms up the air for so long, but he looks like he's jumping, right? 

Now that we've blocked in our golden poses, it's time to put in some breakdowns. These are poses that, while not essential to the storytelling of the action, they help communicate how exactly Goon is moving, how he is getting from one golden pose to the next. 

I wanted Goon to do an anticipation before he actually crouches to make his jump, so I put a deeper crouch pose on frame 5, and then had him rise up a bit at frame 10 before he crouches down again at frame 17 where already posed him crouching. 

Here's frame 5:
 
![Maya Image](/images/character-animation/goon_006.png)
 
And frame 10:
 
![Maya Image](/images/character-animation/goon_007.png)
 
Next I want to articulate how Goon begins to come up from his crouch and begin his jump so I put a key on frame 22 of Goon coming up out of the crouch and beginning to jump, though he is still on the ground. Here's what I came up with:
 
![Maya Image](/images/character-animation/goon_008.png)
 
Notice how his arms have already started to swing pretty far forward, leading him into the jump.
 
Since the jump is such a dynamic action, I want to put in one more breakdown pose to articulate how he gets to the top of the jump. So I put a pose at frame 24 where Goon is in midair, not yet at the top of his jump, but he has left the ground at this point and his arms are over his head, like so:
 
![Maya Image](/images/character-animation/goon_009.png)
 
And with that, we've put in some solid breakdown poses that better show how exactly Goon is jumping up in the air. Your animation should look something like this now:
 
###Solid Breakdown Poses
<iframe width="560" height="315" src="https://www.youtube.com/embed/XLxHFddM2MA" frameborder="0" allowfullscreen></iframe> 
 
Okay now you that you have your breakdowns in, it's time to put in just a few more poses to finesse your blocking and really get things looking nice before you move out of stepped tangents. Add in more poses where you feel necessary, thinking about how Goon would be getting from one pose to the next and setting keys between your current poses to help show the audience how he is moving.
 
As a general rule it's good to have a pose at least every four frames, that way you aren't letting the computer do much inbetweening and having things look floaty. The following video is my final blocking pass before I changed my curves to splined.

###Final Blocking Pass
<iframe width="560" height="315" src="https://www.youtube.com/embed/qV-GjtmhIig" frameborder="0" allowfullscreen align="center"></iframe>
 
Once you get your animation to a place where you like it, go ahead and select all the controllers, go into the graph editor. Your editor should have all stepped tangents, looking something like this:
 
![Maya Image](/images/character-animation/goon_010.png)
 
But click the "plateau tangents" button, as illustrated above, and your tangents should look something like this:
 
![Maya Image](/images/character-animation/goon_011.png)

Now watch your animation. Goon might still look a little funny but he is finally moving! Hooray! 

Now is the time to finesse your animation and really get it looking nice. Go in and set more keys where you feel movement needs to be constrained or controlled (which should be in a lot of places). At this point, you no longer need to set keys on every controller, you can set keys on individual controllers that you think need them.
 
Keep in mind things like how his arms are swinging back and forth, when his feet leave the ground and when they land again, how his spine is bending as he jumps up and lands. Another way to refine your animation is through the use of the graph editor, where you can manipulate your curves and have super fine control over your animation.
 
Let's have a quick overview of the basics of using the graph editor!

Selecting a controller on your rig will automatically display the curves for all of its attributes (translation, rotation, and any special values that controller may have). You can select individual attributes in the left panel and you can shift+select several in a row or you can command+select multiple attributes not in a row. Now, about getting around the actual graph.

It's somewhat similar to the perspective view you're used to, since scrolling the F key still frames what ever you have selected, the mouse wheel still zooms in and out, command +right click still zooms in and out, and using command + middle mouse still pans around. But, there are a couple cools things you can do when viewing the graph editor in addition! For example, using shift+ command + right mouse button and dragging horizontally scales the graph in only that direction (expands/contracts the frame range but not the value range) and dragging vertically scales the graph vertically (expands/contracts the value range and not the frame range). This is especially helpful when tweaking tangents in the graph that are close in value, since it allows for very fine adjustments and easy navigation.

Also, using shift + the middle mouse button will constrain the movement horizontally or vertically depending on which way you move first. This is helpful when you want to change the value of a key without accidentally moving the key to a different frame, and vice versa). Additionally the move (W) and scale (R) tools still work in the graph editor and can be used to tweak tangents. If your cursor turns into a little circle when you are trying to edit, that just means that you have the select tool (Q) active and need to switch to the move or scale tool.

With that, I leave to you keep refining your jump and continuing to animate until you think it looks good. Does Goon's weight look right? Does the timing of him jumping and landing seem correct? And always make sure that the poses and keys at frames 1 and 33 are exactly the same so that you animation can loop properly.

I also encourage you to show it someone and ask their opinion. Feedback is super helpful when you are stuck as to how to make your animation look better.

The following video is what I came up with after a bit of fine-tuning, but even this could use a lot more fine-tuning! 

###Final Animation
<iframe width="560" height="315" src="https://www.youtube.com/embed/UHd4NJzwa2U" frameborder="0" allowfullscreen></iframe>

So keep animating! Keep practicing! And have fun!



## Extra for Experts

But first, a quick refresher on FK vs. IK and what that means to an animator (since you already learned a bit about this during rigging).

FK stands for "forward kinematics" and means that the position of the hand (or foot) is dictated by all the joints that precede it. Think about how your shoulder works, first your shoulder joint rotates, then your elbow, then wrist. You can't move your hand without moving all the joints in your arm first. With FK, if you move your character's body, the arm and hand will follow along as well.

This mode is useful for things like gesturing or if your hands are part of secondary motion in a walk cycle or something like that. But in certain situations it's too tedious to keep the hands or feet FK.

That's where IK comes into play. IK, or inverse kinematics, is the opposite of FK. The hand is positioned separately from the rest of the body and a controller is set for the elbow joint so that you can angle the arm how you want. Think of it like the hand is a separate object that's just tethered to the rest of the body. In IK, when you move the body, the hand stays where it is, so IK is great for things like pushing or pulling, since you don't lose the position of the hand when animating the body.

AND
 
A quick note about using Autokey!

I know we've told you in the past not to use, but that was just for simplicity's sake. It can be really useful if you know how to use it, especially in the blocking stage. Rather than pressing S after every single little tweak you make to a pose (this can get very tedious and will wear out your S key). The button for autokey is down in the righthand corner of you screen, just to the left of the preferences button. When you press it, it will turn red, meaning that Autokey is on. Now, whenever you move or rotate or change a an attribute on any of your rig's controllers, it will automatically be keyed, without you having to press S!

But note that Autokey only sets automatic keys on controls where you've manually set a key on it first, so you will still have to press S sometimes. Also note that Autokey, by default, only sets a key on attributes that are changed, not on the entire control (so if you translate y, only that will be keyed, translate x and z will be left unkeyed). As you can imagine, this still saves a lot of time and keystrokes, especially when you're blocking and just want to concentrate on getting a good solid pose in place rather than worrying about whether you pressed S or not. Note that it is VERY important to remember what frame you're on when you have Autokey active. Otherwise you can accidentally set keys in all kinds of crazy places that you didn't mean to. So as long as you pay attention, Autokey can be a great tool to use!

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
