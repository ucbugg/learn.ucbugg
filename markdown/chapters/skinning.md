# Skinning in Maya

Today we are going to be skinning a leg. Before getring started, download the [leg rig](/ma/legs.ma) to the `scenes` directory in your current Maya project.

## What is skinning?

Skinning involves connectng a skeleton to the geometry of a character. We will be doing this by painting influences on the geometry. Influence on a vertex is the amount the vertex is controlled by a specific bone. Influence = 1 means that the vertex will follow the manipulation of that bone exactly and influence = 0 means the vertex is not affected. The values between 0 and 1 will be some interpolation between full and no influence.

## Double Checking

Before skinning, you always want to make sure that the skeleton is in the proper place, so be sure to double check that easch individual joint is in the correct place. A common mistake that has come up in the past has to do with the placement of the shoulder joint - this will be farther out than you expect, and should basically follow the silhouette of the side of the body geometry. Also be sure to double check the wrist placement and ankle placement, as those are commonly misplaced. Making sure all your geometry and skeleton is finalized before skinning is very important, because if you have to make a change after the character is skinned, you will probably have to remove all skinning and start all over. (Trust me, you don't want to do that!)

## Initial Skinning

First we will skin the geometry to the skeleton by the rough estimation available through Maya. You want to select the whole skeleton by selecting the COG joint and then selecting all the children joints by clicking **Edit &rarr; Select Hierarchy**.

Then open the Outliner, and expand out all the joints you've just selected so all the effectors and constraints are visible. Deselect any item that isn't a joint. Now that every joint is selected, additionally select your geometry.

We will now bind the skeleton you've selected to the geometry. Make sure your top menu is set to Animation. Click the option box for **Skin &rarr; Bind Skin &rarr; Smooth Bind**.

![Rig Overview](/images/skinning/ucbugg_skinning-1.jpg)

Set the options to the following

![Smooth Bind Options](/images/skinning/ucbugg_skinning-2a.jpg)

Then select **Bind Skin**

The skeleton should now show up as different colors. The way these settings were set, each vertex is only influenced by one joint. You can look and move around the controls and see just how wrong the skinning looks. But that's okay! Because our next step is to go in and smooth out the connections, allowing our character's movements to look more realistic (not)! 

![Smooth Bind Gone Wrong](/images/skinning/ucbugg_skinning-3.jpg)

As you can see, automatic skinning rarley creates good skin weights. We will know have to paint our own skin weights to fix the current rig.

## Painting Skin Weights 

We should first investigate the tool that allows us to smooth out the influences at each joint. Change your shelf category to Animation and when the newly skinned geometry is already selected, click the icon that looks like a piece of geometry and a red circle. This tool is also accessible from **Skin &rarr; Edit Smooth Skin &rarr; Paint Skin Weights Tool &rarr; Option Box**. In your tool settings, be sure to have the following settings: (The radius boxes don't matter at this point, and Opacity should be equal to 1)

![Paint Skin Weights option box](/images/skinning/ucbugg_skinning-4a.jpg)

Influences range between 0 and 1, 0 influence appears black and 1 appears white. Any decimal between 0 and 1 will appear as a shade of grey accordingly.

The "Toggle Hold Weights on Selected" will lock/unlock selected joints. Any locked/held joints influences cannot be changed if painted over. It is important to always have just 2 joints unlocked at any time, so you only work at one junction at a time. Otherwise, you might accidentally paint on the torso when you're working on the knee, and you'll spend your time trying to find lost weights.

When skinning, you can easily adjust the brush radius by holding down B and holding down the left mouse button and moving your mouse to the left and right.

### Paint Operations

#### Replace

When in the **"Replace"** mode, any weight you paint will be the weight that is specified by Value. It takes the influence from other unlocked joints. This is why it's important to only unlock 2 joints at a time. So if you paint with a value of 0.4, the other unlocked joint will receive a value of 0.6.

#### Add

When in the **"Add"** mode, any weight you paint will be added to the current influence. Any amount added will be subtracted from the other unlocked joints.

#### Scale

When in the **"Scale"** mode, the current weight will be scaled by Value. So Value=1 will have no affect, Value=0 will replace the influence with 0, and Value=0.5 will divide the weight by two, so 0.8 will become 0.4 and .6 will become .3, etc, etc. Very useful for when we want smooth connections between 2 joints and another joint, as well as between those two joints. This will be explained in the Refined Skinning - Between 3 Joints section.

#### Smooth

When in the **"Smooth"** mode, the weights across several vertices will be smoothed out, as well as the unlocked joints. This is very useful!! You just have to be careful not to smooth an area where the other unlocked joint shouldn't have influence, because then you might have your hip bone affect your ankle, which is just so wrong.

#### Flood

The **"Flood"** button basically applies whatever settings you have set to the all vertices. It will only affect the unlocked joints. So if you want to move all the influences from joint 1 to joint 2, you would unlock only those two joints, and with joint 1 selected, with operation set to Replace and Value set to 0, and then click "Flood". Now all influences from joint 1 are transferred to joint 2.

### Blocking 

Since our first skinning was not a very good approximation, let's improve this by
blocking out the proper regions. By clicking through the joints in your paint skin weights tool options, you can see which parts of geometry are influenced by which joints. In my file, all the calf geometry is fully influenced by l_toe, so let's just go through and block out each region roughly.

First lock/hold all of the joints, either by selecting each one and clicking "Toggle Hold Weights on Selected" or using the script available on the ucbugg website. Now unlock l_toe and l_knee, and flood replace l_toe with 0. I also found spineB has the influence l_hip should have, so unlock only spineB and l_hip, then flood replace spineB with 0.

Go through and block out sections by unlocking only 2 joints at a time. You don't have to worry about the right leg mostly, because we will mirror later, so just block out COG, spineA, l_hip, l_knee, l_ankle, l_ball, r_hip. It should look something like this:

<img alt="Skin Weights Foot" src="/images/skinning/ucbugg_skinning-6.jpg" width="300px" />
<img alt="Skin Weights Toe" src="/images/skinning/ucbugg_skinning-7.jpg" width="300px" />
<img alt="Skin Weights Calf" src="/images/skinning/ucbugg_skinning-8.jpg" width="300px" />
<img alt="Skin Weights Thigh" src="/images/skinning/ucbugg_skinning-9.jpg" width="300px" />
<img alt="Skin Weights Butt" src="/images/skinning/ucbugg_skinning-10.jpg" width="300px" />
<img alt="Skin Weights Waist" src="/images/skinning/ucbugg_skinning-11.jpg" width="300px" />

With this skinning, it is much closer to how the geometry is supposed to move, it should look something like this when you move the foot control

![Better Rig Control](/images/skinning/ucbugg_skinning-12.jpg)

## Refined Skinning 

### Skinning between 2 Joints

First we'll look at simple joints like the ankle and knee, where vertices should
only have influences from at most 2 joints. Let's look specifically at the left knee area. The vertices around the knee should only have influences from the hip joint and the knee joint.

Unlock the only two joints you'll be working with, the l_hip joint and l_knee joint. We want a gradient across the knee between 0 and 1, not the discrete border between 0 and 1. On the model we're working on, the knee has a span of 5, which means we'll probably paint the 5 spans as even divisions. With the l_hip joint selected in the Influence box in the tool options, set the value of the paint weight to 0.15 and paint the bottom ring of vertices. Set it now to 0.3, and paint the second to bottom ring of vertices. Paint the middle ring 0.5, the next ring 0.7, and the top 0.85. Now smooth this out using the Smooth option, increasing the brush size to cover several vertices, and smooth across the joint. It should now look pretty good, a nice gradient from black to white

![Refiend Knee Weights](/images/skinning/ucbugg_skinning-13.jpg)

Now we want to test how well our skinning on that joint is. The best way I've found to do this is to animate the controls and use the timeline to check how the skinning looks at each different position. To do this, select the left foot control, and set a keyframe at 0 by pressing S. Then move to any frame that's later in your timeline (doesn't really matter), and then translate the control up towards the hip, so that the knee bends sufficiently, and press S again. Now we can move to different points in time without having to get out of our paint skin weights tool.

![Better Knee Rig](/images/skinning/ucbugg_skinning-14.jpg)

You'll see that the influence is not wide enough across the knee. Use the painting skin weight tools and sliding through the timeline to find a realistic skinning of the knee.

Be sure to delete your keyframes on the foot control!! This is very important because when you reference your model in another scene where you or someone else will be animating, the file will be read-only if there are keyframes present in the model file. Your skinning of the knee should look something like this

![Knee Joint Weights](/images/skinning/ucbugg_skinning-15.jpg)

### Skinning between 3 Joints

Skinning in area where geometry should have influence from three different joints
is a bit trickier than just 2 joints. This will come up whenever a piece of geometry splits into two other chunks of geometry, like the COG and left hip and right hip. This is also applicable to skinning fingers and skinning lips.

We'll be looking at the hip/leg junction. So first we want to make sure there is smooth skinning for when both legs move the same amount, like when the character squats down. So first move all influence from the r_hip to the l_hip by flood replacing r_hip with 0. Now paint smooth skinning between l_hip and COG, using the timeline scrubbing for checking accuracy. It should end up looking something like this:

![Waist Rig Example](/images/skinning/ucbugg_skinning-16.jpg)
![Waist Joint Weights](/images/skinning/ucbugg_skinning-17.jpg)

Next, unlock only l_hip and r_hip. Do NOT use the replace mode during this part. We want r_hip to have the same skinning related to the hip as we already made. With l_hip selected, we will using the "Scale" mode and scale l_hip's influences, which will add the proper amount of influence to r_hip. Along the center line, scale by 0.5, the nextmost line to the right should be scaled by 0.25, and the nextmost line to the left should be 0.75. The rest of the vertices that should be controlled by the right leg should be scaled by 0. Be sure to only scale a vertex once, or else you might get 50% of an already scaled vertex, resulting in a much lower overall percentage. The result should look like this:

![Waist Joint Weights](/images/skinning/ucbugg_skinning-18.jpg)

When you move the COG control, it should look exactly like your result in (2), but when you move the left leg it should look like this:

![What a great knee](/images/skinning/ucbugg_skinning-19.jpg)

## Mirroring Skin Weights

Continue on and finish the skinning on the left side, for the COG/spineA, l_knee/l_heel, and l_heel/l_ball junctions. Now we'll mirror by first selecting the geometry, then click **Skin &rarr; Edit Smooth Skin &rarr; Mirror Skin Weights &rarr; Option Box**, and make sure it has the following settings:

![Mirror Skin Weights Options](/images/skinning/ucbugg_skinning-20.jpg)

Click Mirror, and VOILA! You have a skinned lower body :) Test it out by moving things around and see what needs adjustments. The finished maya file is also on the ucbugg website.

Originally written by Megan Marquardt
