# Basic Rigging

## Setup

Today we are going to be rigging a lamp. Before getring started, download the [lamp model](/ma/lamp.ma).

<div class="note">
If you already know how to rig, you can just follow the bolded instructions. The non-bold text explains how tools work and some theory behind certain rigging design choices.
</div>

## Skeleton 

Expand the Lamp node in the outliner to see what Lamp is made of. Lamp is a group (or a transform node) that has several parts as children. Clicking on a child will select it in the 3d view. Left dragging will select multiple items and a __Ctrl+click__ will add to the selection.

The first thing we want to do is **group the separate pieces we will move: base, lower leg, upper leg, head**. This helps us organize things a little. Select pieces you want to be together and go to __Edit->Group__

![Maya Image](/images/basic-rigging/rig_2group.png)

We'll start with BasePlate and BaseHinge. **Rename the group1 to Base or something** (double click on it in the outliner). Now, we can go to the outliner and click on Base to select that group. Whatever we do with the base, will affect the two pieces of the base.

![Maya Image](/images/basic-rigging/rig_3base.png)

Next, **do the Lower Leg (LowerLegPole and Hinge)**. Select the LowerLeg (in the outliner) and hit **__E__** for the rotate tool. When we try rotating, you'll notice that it isn't rotating around the right pivot (we want the pivot higher -- at the center of the base hinge). Show the pivot maniplator by holding **__D__** and then **move the pivot to the center of the base hinge. Repeat for the Upper Leg except move the pivot to the knee**. The head is one object already, so it doesn't need to be grouped. 

The first thing you'll notice is that when you rotate the lower leg, the upper leg and head stays where it is. We can do even fancier grouping to solve this. In the outliner, **take the UpperLeg group and middle-drag it onto the LowerLeg group**. This puts UpperLeg inside the LowerLeg group. Now, when you rotate LowerLeg, UpperLeg rotates too, but relative to LowerLeg. 

Using the heirarchy in Maya is an integral part of rigging. We could continue to create a heirarchy this way, but using a rig like this is a little tedious and we want things to be a little more automatic for the animators. So, **undo the previous grouping** (either __ctrl+z__ or __middle-drag__ UpperLeg out of LowerLeg). 

![Maya Image](/images/basic-rigging/rig_5checkpnt.png)

Maya has a special type of Object called a Joint. These are much like normal object, except they are designed to be strung together in heirarchical chains and they have some special tools for rigging. The idea is to create a skeleton out of these joints, attach you're model to the joints, and then create controllers that provide high-level controls to move/animate the joints. First, **make sure you're in the Animation Menus**. 

Since joints are made to be strung together, the joint tool is set up to create a joint chain. **Go to __Skeleton->Joint Tool__**

![Maya Image](/images/basic-rigging/rig_6jnttl.png)

TO use the tool, **Click on the hinge just below the lamp's head**. This creates the base of the chain. Every subsequent click will create a new joint and parent it to the previous. **Click on the elbow and then the base hinge, and finally somewhere straight below the base**. Press __Enter__ to finish. 

One property that joints have is they draw bones connecting them and their parents. In general, the last joint in a chain is not used (it can be though). **Naming the joints can help later, so do that**. (You can fully expand a heirarchy by shift clicking the **__'+'__** in the outliner). 

![Maya Image](/images/basic-rigging/rig_7joints.png)

The Joints are already arranged in a heirarchy so you can rotate the head joint and the children will follow. However, when we move the joints they don't move our lamp. Normally there is a fairly involved skinning process, but for a simple object like this, we can stick with parenting which we already know how to use. 

**In the outliner, __Middle-drag__ the UpperLeg group into HeadJnt. __Middle-drag__ LowerLeg into Elbow joint. Do similar for Base**. Leave the head alone, we'll get to that later. 

Because we are parenting, the pivot location of the children doesn't matter and the joints are inherently at their pivot. Now, when you rotate the joints, they should move the lamp.

Also, go ahead and **move the HeadJnt into the the Lamp group**. We want to keep everything in the lamp group in case we reference this lamp in other scenes. 

![Maya Image](/images/basic-rigging/rig_8jntpar.png)

## Base Setup

Right now, it seems like we made our chain backwards. The idea is we want to treat the lamp poles/base like a leg. Its hard to animate this leg right now though. If you want to place the base somewhere, you have to repeatedly rotate joints until it looks right. Fortunately, Maya can do this for you. Its called [Inverse Kinematics]() and you tell it where you want the end of a joint chain to go, and it'll figure out how to rotate all the intermediate joints. 

To create one, **go to __Skeleton->IK Handle Tool__. Click on the HeadJnt and then click on the BaseJnt** (we only want to solve to the base, the tip is purely to make it easier to see how the BaseJnt is rotated). Now you have an IK Handle at the base of the lamp. You can move it around and see how it works. **Name the handle and put it in the Lamp group**. 

Its a little easier to animate this now, but we still have a separated head, our base rotates when we might not want it to, and we still have to know what to move. Our job, as a rigger, involves hiding anything that isn't something we want to be controlled from the animator. This keeps problems/bugs/undesirable effects from happening if an animator keys some incorrect attributes. So we are going to add controllers to make this lamp even easier and hopefully funner to animate. 

![Maya Image](/images/basic-rigging/rig_8.5ik.png)

A controller can be any object and you just use parenting or constraints to tell it how to affect the rig. Lets make a controller for the base, a __Create->NURBS->Circle__ is a good choice. **Before creating a circle, go to __Create->NURBS->Interactive Creation__ and make sure it is OFF**. (this is important so that circles come oriented correctly by default).  **Create a circle, scale it up, and place it at the base of the Base. Give it a name and put it in the Lamp group.** We want it to control where the BaseIK handle is, so just **__middle-drag__ the BaseIK onto the Base controller (in the outliner)**. Now, when you move the Base controller around, the ik handle follows. We almost have what we want, but the base still rotates when we don't want it to. 

To fix this, we will use an Orient constraint to constrain the orientation of BaseJnt to the orientation of the Base controller. All constraints work like this: Select the constrainer first, then select the object you want to constrain. In this case, **select the Base controller first, then select the BaseJnt** (__ctrl+click__ (__command+click__ on apple) in outliner). **Go to __Constrain->Orient[optionbox]__ and turn on Maintain Offset** (otherwise weird things usually happen). 

![Maya Image](/images/basic-rigging/rig_9orient.png)
![Maya Image](/images/basic-rigging/rig_10offset.png)

Then **click 'Add'**. Now you should be able to control the rotation of the base with the controller. 

![Maya Image](/images/basic-rigging/rig_11basedone.png)


## Head and Root
Our Base is complete, all we have to do now, is the head. **Create another NURBS circle and place it around the head. Adjust the pivot to the base of the head (where HeadJnt is), rename it, and put it in the Lamp group. Then parent the Head and HeadJnt to the HeadCtrl controller**. Now the head should be pretty fully controllable with HeadCtrl. 

![Maya Image](/images/basic-rigging/rig_12headctrl.png)

The rig is pretty much complete. Except, there is usually a Root controller that controls the overall location of all the other controllers. Not every animator actually uses it, but its there for situations where it can be useful. 

So, **make another NURBS circle that is bigger than the Base controller and place it around the Base. Rename it and place it in the Lamp group. Parent the other controllers to this Root controller**, and now we have our fairly complete rig. 

At this point, we can **hide all the underlying rigging machinery** so that only the controllers are exposed for the animators to use. We do this by unchecking the __Joints__ and __IK Handles__ options in the 3d-view's __Show__ menu 

![Maya Image](/images/basic-rigging/rig_13hide.png)

In reality, the model will be bound to the skeleton through skinning which would let us actually turn off the joint visibility and then lock it. Doing this prevents any accidental adjustments to rigging machinery that could screw up higher level controllers. 

![Maya Image](/images/basic-rigging/rig_14done.png)

## Postmortem

The reason I chose to have the Chain go from the head towards the base is because the IK solver will keep the joint chain attached to the base of the chain. This means that if we move the head higher than the length of the leg, the base moves up. Though it is not usually good animation practice to take advantage of this (because it can be implementation dependent), in this case, it can make animating this particular character much easier.


## Additional Resources

* [Creating your first skeleton]()
* [Controlling your first skeleton]()
* [Creating a character set]()
