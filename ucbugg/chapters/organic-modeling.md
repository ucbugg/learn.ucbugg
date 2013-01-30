# Organic Modeling

<div class="note">
If you're familiar with Maya's modeling tools, you could probably get through this tutorial by just looking at the images. I've included text for extra clarification
</div>

**Remember to File->Project->Set your current project to your UCBUGG Lab project.**

It's useful in the future to have a reference image inside your Maya file to model off of in the orthogonal views like this:

![Maya Image] (/images/organic-modeling/orgmodel_002.jpg)

In this tutorial, however, we're going to model without reference planes. We are going to model the legs, arms, hands, feet, body, and head as separate pieces and then merge them later on. Keep in mind that there are many different approaches to character modeling. I chose to do it in this Frankenstein sort of way, because it is easier for me to work with smaller meshes, and then connect them later.

## Final Model

![Maya Image](/images/organic-modeling/frog_010.jpg)

![Maya Image](/images/organic-modeling/frog_002.jpg)
![Maya Image](/images/organic-modeling/frog_077.jpg)

![Maya Image](/images/organic-modeling/frog_080.jpg)
![Maya Image](/images/organic-modeling/frog_078.jpg)


<div class="note">
This awkward looking pose is intentional! It's important to model your characters in a neutral position that is ideal for rigging. Eyelids are generally modeled closed, so that they can be opened later in rigging.
</div>

Note: It's important that you try and follow this tutorial as closely as possible because as you go deeper into the tutorial, we will assume that most of your edges and vertices are in relatively the same position as ours. With that said, this could turn into a **very** long tutorial if you try to follow everything exactly. So just try to make good judgment decisions for yourself. And if you do happen to encounter a bug that can't be fixed, it is possible you may have to restart the tutorial (saving different versions of your file every once in a while can help). Don't be discouraged though, the more you model the better you get!

### Modeling the Arm

Make sure your menu is set to 'Polygons'

First, **create a cylinder**: Create &rarr; Polygon Primitives &rarr; Cylinder.

![Maya Image](/images/organic-modeling/frog_023.jpg)

Change the cylinder options under INPUTS in the Channel Box. To show the channel box, use the right most button in the upper right: 

![Maya Image](/images/organic-modeling/frog_150.jpg)

Note: In Maya 2011 the button in the upper right looks like this:

![Maya Image](/images/organic-modeling/orgmodel_001.jpg)
 
You may have to "unfold" the polyCylinder# area underneath "inputs" by clicking on it. 

Adjust the highlighted fields as shown so that the cylinder has **8 sides, 1 height subdivision, and 1 cap subdivision*** and is **centered on the grid.**

![Maya Image](/images/organic-modeling/frog_001.jpg)   

**Delete the caps.** (Go into face mode, shift+select the faces, delete.) Then, **scale your cylinder** tube so that it is longer and skinnier. 

![Maya Image](/images/organic-modeling/frog_086.jpg)
![Maya Image](/images/organic-modeling/frog_087.jpg)   

**Insert an edge loop:** Edit Mesh &rarr; Insert Edge Loop Tool &rarr; Option Box. Make sure **relative distance from edge**, **Auto complete**, and **Fix Quads** are all checked. Click one of the vertical edges and Maya should automatically draw an edge loop and let you drag the loop up and down. Select the edge loop by double clicking on it and scale the edge loop down. 

**Add more edge loops and scale them** to make an hour-glass arm shape. Your final leg should have edge loops that are pretty evenly spaced, with more spans where the "knee" is supposed to be. 

![Maya Image](/images/organic-modeling/frog_003.jpg)
![Maya Image](/images/organic-modeling/frog_004.jpg)

![Maya Image](/images/organic-modeling/frog_088.jpg)
![Maya Image](/images/organic-modeling/frog_089.jpg)
![Maya Image](/images/organic-modeling/frog_090.jpg)
![Maya Image](/images/organic-modeling/frog_094.jpg)
![Maya Image](/images/organic-modeling/frog_092.jpg)

Note: There is a slight bend in the arm to give an indication of which direction the ik handle should work later on in rigging. 
You can achieve this bend as well by selecting the top half of the edges, rotating, and then translating them.

![Maya Image](/images/organic-modeling/orgmodel_003.jpg)

When you're done with your arm, **name it "Arm1" in the Outliner.**

![Maya Image](/images/organic-modeling/frog_013.jpg) 

<div class="note">
To maintain a clean workspace, we're going to create layers and store our models in them. That way, we can hide things when we're not working on them.
</div>

Go to the channel box and **create a layer:** Right-click on "Layers" &rarr; Create Empty Layer.

![Maya Image](/images/organic-modeling/frog_012.jpg)
![Maya Image](/images/organic-modeling/frog_015.jpg)

 **Name layer1 "ARMS"** by double clicking on it. 

![Maya Image](/images/organic-modeling/frog_016.jpg)

**Add Arm1 to ARMS:** select Arm1 (in the view port or the outliner) &rarr; right click on ARMS &rarr; Add Selected Objects. 
Then, **Hide the layer** by un-checking the "V" in the leftmost box. Now we can move on to modeling other parts of the body with a clean grid. 

![Maya Image](/images/organic-modeling/frog_018.jpg)

## Modeling the Leg

This is essentially the same as modeling the arms, but we're going to use a 10-sided cylinder instead. 

 **Create a cylinder:** Create &rarr; Polygon Primitives &rarr; Cylinder.

Change the INPUTS in the channel Box so that the cylinder has **10 sides** and is **centered on the grid.**
Then, **add edge loops and scale edges/vertices** as you did before. Here is what the arm and leg should look like in relation to each other. (Press 3 to show your models in smooth preview.) 
You can add the bend in the leg as well.

![Maya Image](/images/organic-modeling/frog_019.jpg)

When you're done tweaking your leg, **name it "Leg1" in the Outliner.** 
Once again, **create a layer, name it "LEGS," add Leg1 to it, and hide the layer.**
 
## Modeling the Body

For the body, we are going to create a torso with holes for the arms and legs we made. We'll go through step by step how to make this. We are aiming for something like this: 

![Maya Image](/images/organic-modeling/frog_020.jpg)

**Create a cylinder:** Create &rarr; Polygon Primitives &rarr; Cylinder.

Change the INPUTS in the channel Box so that the cylinder has **10 sides** and is **centered on the grid.** 
**Rotate it 90 degrees** so that it is laying flat on the grid. Then, **delete all the edges on the ends** as shown:

![Maya Image](/images/organic-modeling/frog_025.jpg)
![Maya Image](/images/organic-modeling/frog_027.jpg)


**Use Split Polygon Tool and draw in edges as shown:** Edit Mesh &rarr; Split Polygon Tool.

![Maya Image](/images/organic-modeling/frog_024.jpg)
![Maya Image](/images/organic-modeling/frog_028.jpg)
![Maya Image](/images/organic-modeling/frog_030.jpg)

Now, **insert edge loops and scale them. Scale down the end vertices.**

![Maya Image](/images/organic-modeling/frog_031.jpg)
![Maya Image](/images/organic-modeling/frog_032.jpg)


**Add a few more edge loops.** Your body should look like this so far:

![Maya Image](/images/organic-modeling/frog_034.jpg)

<div class="note">You should periodically delete history when modeling. This will help prevent your file from randomly corrupting itself. (Edit &rarr; Delete All by Type &rarr; History.) Be careful not to delete history when rigging or animating, because it will delete all your work.</div>

![Maya Image](/images/organic-modeling/frog_035.jpg)

Next, **insert another edge loop as shown below.** (I temporarily hid the grid to better show where the edge loop should go.) 

![Maya Image](/images/organic-modeling/frog_053.jpg)
![Maya Image](/images/organic-modeling/frog_054.jpg)
![Maya Image](/images/organic-modeling/frog_055.jpg)

To make the holes for the legs, **Select the following faces, and delete.**

Now, we **take the 8-sided and 10-sided holes, and move the vertices until they form round openings** to match the size of the arms and legs we made before. To move the vertices, simply select them one by one and use the translate tool in the orthographic views. 

![Maya Image](/images/organic-modeling/frog_056.jpg)
![Maya Image](/images/organic-modeling/frog_060.jpg)

You will probably have to **insert an edge loop** to make the spans more even. 

![Maya Image](/images/organic-modeling/frog_062.jpg)
![Maya Image](/images/organic-modeling/frog_063.jpg)

**Tweak those vertices** with the translate tool so that the body is smooth. You can view the different settings of the translate tool by clicking the tool settings icon in the upper right hand corner: 


Checking the **Normal** or **Normals average** box comes in handy when trying to adjust vertices on an organic object: 

![Maya Image](/images/organic-modeling/frog_000.jpg)

Your mesh should now look like this:

![Maya Image](/images/organic-modeling/frog_067.jpg)
![Maya Image](/images/organic-modeling/frog_068.jpg)

To create another edge so that the topology of the hole is better contained, we can simply **extrude and scale the edges inwards as shown below.**   Edit Mesh &rarr; Extrude. Then, repeat with the arm hole. 

![Maya Image](/images/organic-modeling/frog_153.jpg) 

![Maya Image](/images/organic-modeling/frog_069.jpg)
![Maya Image](/images/organic-modeling/frog_070.jpg)
![Maya Image](/images/organic-modeling/frog_071.jpg)
![Maya Image](/images/organic-modeling/frog_072.jpg)

**Make sure your arms and legs are the right size in relation to your torso.**  Make your ARMS and LEGS layers visible, and position your arm and leg in relation to the body as shown below. 

![Maya Image](/images/organic-modeling/frog_076.jpg)

**Make sure the vertices of your arms and legs line up correctly with your body.**  Change the display to Wireframe on Shaded. Shading &rarr; Wireframe on Shaded. 

![Maya Image](/images/organic-modeling/frog_099.jpg)

**Hide the ARMS and LEGS layers again.**

To make a hole for the head, **go to Top View, Select the following faces, and delete.**

![Maya Image](/images/organic-modeling/frog_074.jpg) 

Now we're at a point when we can just model half of the model and use Maya Instancing to mirror what we're doing. So, we're going to cut our model in half-first by inserting an edge loop, and then deleting all the faces on the right side.

**Insert edge loop down the middle:** Edit &rarr; Insert edge loop &rarr; Option Box. Make sure the boxes **Multiple edge loops** and **Use equal multiplier** are on. Also, make sure **Number of edge loops** is set to **1**. (You can experiment with checking different options to see how they work.)

![Maya Image](/images/organic-modeling/frog_038.jpg)
![Maya Image](/images/organic-modeling/frog_041.jpg)

![Maya Image](/images/organic-modeling/frog_075.jpg)

**Create an instance:** Edit &rarr; Duplicate Special &rarr; Option Box. Make sure the boxes **Instance** and **Parent** are checked. Depending on what orientation you modeled your body, you will have to play around with which how to Scale your instance. In my case, I made the x value -1 so that my body would be mirrored across the x axis. 

![Maya Image](/images/organic-modeling/frog_044.jpg)

**Go into Top View, and translate/scale the vertices so that you get the rough shape shown below.** It may be necessary for you to add more edge loops, or use the split polygon tool to get the deformation you want. (Remember, now you only have to modify half of your body, and the other half will automatically pick up the changes.) Aim for the shape and topology shown below.

Note: If you are having trouble scaling a continuous edge loop, it may help if you shift-select the two halves of the body and go to Mesh->Combine. This will combine the meshes so that that you can select a group of edge loops or vertices and scale them all together at once. Remember to select the body and hit Mesh->Separate though once you are finished so that the mesh is back to its instanced state.

At this point, you have to let your artistic self kick in and modify the shape of the body so that it looks like that of a frog. We can't really tell you what to do from here except to play around with edges/vertices and all the tools you've learned so far so whenever you feel that you have a body shape that you like, move on.

![Maya Image](/images/organic-modeling/frog_045.jpg)

**Create a layer called BODY, add your mesh to the layer, and hide it.** 

## Modeling the Head

There are many ways to model a head. Some people like to start from a cube, and insert edge loops from there. In our case, we are going to start by modeling eye patches. 

**Create a cylinder:** Create &rarr; Polygon Primitives &rarr; Cylinder. Go to the channel box and adjust the cylinder so that it has 8 sides and is centered on the grid. **Delete caps of the cylinder, scale vertices and bring them up to make a donut as shown:**

![Maya Image](/images/organic-modeling/frog_005.jpg)

You might have noticed that your pivot is no longer in the center of the donut. **Center your pivot** so that it's easier to work with. Select your donut, Modify &rarr; Center Pivot. 
You can also move the pivot manually by holding down the "d" key.

![Maya Image](/images/organic-modeling/frog_081.jpg)

Next, **duplicate your donut.** Select your donut, Edit &rarr; Duplicate.  Or, press Ctrl + d.
Now, **rotate your eye patches and place them at slight angles to each other** (as shown in top view and perspective views below):

![Maya Image](/images/organic-modeling/frog_082.jpg)
![Maya Image](/images/organic-modeling/frog_083.jpg)

Make sure that the two donuts are symmetric across whichever axis you choose. You can do this by going into the attribute editor and checking their transforms and rotations.
Here are the values I used, but depending on how you positioned your eyes, they might not work for you.

![Maya Image](/images/organic-modeling/orgmodel_004.jpg)
![Maya Image](/images/organic-modeling/orgmodel_005.jpg)

**Turn the eye patches into one object.** Shift-select one after the other, Mesh &rarr; Combine. 

![Maya Image](/images/organic-modeling/frog_084.jpg) 

Next, we're going to **use the Append to Polygon tool to connect the two pieces.** Select your eye patch mesh, Edit Mesh &rarr; Append to Polygon Tool.
First click on one edge, and then click the edge you want to connect it to. Maya should draw a pink face for you. Press enter. 

![Maya Image](/images/organic-modeling/frog_096.jpg)

![Maya Image](/images/organic-modeling/frog_097.jpg)

Add one more face with the **Append to Polygon Tool.** Then, select the five bottom edges and **extrude.**

![Maya Image](/images/organic-modeling/frog_100.jpg)

Now we're at a point when we can use Maya Instancing to mirror what we're doing (like we did before). **Insert edge loop down the middle:** Edit &rarr; Insert edge loop &rarr; Option Box. Make sure the boxes **Multiple edge loops** and **Use equal multiplier** are on. Also, make sure **Number of edge loops** is set to **1.**

![Maya Image](/images/organic-modeling/frog_038.jpg)
![Maya Image](/images/organic-modeling/frog_101.jpg)

**Delete half the faces, and create an instance:** Edit &rarr; Duplicate Special &rarr; Option Box. Make sure the boxes **Instance** and **Parent** are checked. Depending on what orientation you modeled your body, you will have to play around with which how to Scale your instance. In my case, I made the x value -1 so that my body would be mirrored across the x axis. 

![Maya Image](/images/organic-modeling/orgmodel_006.jpg)

**Here are a series of 'extrude,''append to polygon,' and 'merge' steps.** 

So far, we've used 'extrude' and 'append to polygon,' but not 'merge.' To merge vertices, shift+select them, Edit Mesh &rarr; Merge.

![Maya Image](/images/organic-modeling/frog_154.jpg)

Remember, just work with one side, and Maya should automatically mirror everything you do. Make sure to work in perspective and orthogonal views. 

![Maya Image](/images/organic-modeling/frog_102.jpg)

![Maya Image](/images/organic-modeling/frog_103.jpg)

![Maya Image](/images/organic-modeling/frog_104.jpg)

![Maya Image](/images/organic-modeling/frog_105.jpg)

We are going to model the eyelids closed, so that they can be opened in rigging later. **Add edge loops as shown below and select faces:**

![Maya Image](/images/organic-modeling/frog_106.jpg)
![Maya Image](/images/organic-modeling/frog_107.jpg)

Look at the eye patches from the inside, and **duplicate the eye patch faces, and offset them slightly.** Select faces, Edit Mesh &rarr; Duplicate Face &rarr; Option Box. Make sure 'Separate duplicated faces' is unchecked. 

![Maya Image](/images/organic-modeling/frog_114.jpg)

![Maya Image](/images/organic-modeling/frog_110.jpg)

Next, we are going to connect the eye patch to the head by merging vertices. 

![Maya Image](/images/organic-modeling/orgmodel_007.jpg)

Now continue merging the rest of the vertices.

![Maya Image](/images/organic-modeling/frog_111.jpg)

Before you go on, quickly go into smooth mode to make sure there are no extra weird deformations happening within your model. If there are, it may be because you have edges right on top of eachother or extra vertices.
(If you are working in lab, feel free to ask for help! If you are working from home, send us an email or come to office hours!)

**Here are a series of steps to continue adding faces to the head:**
Remember, you can scale a group of vertices in towards each other to line them up straight.

![Maya Image](/images/organic-modeling/frog_112.jpg) 

**To make the bottom lip and jaw, select these faces and duplicate face.** Edit Mesh &rarr; Duplicate Face.

![Maya Image](/images/organic-modeling/frog_113.jpg)

**Turn the bottom lip and head into separate meshes.** Shift + select the bottom lip and head, Mesh &rarr; Separate. (*Note: your instance will disappear when you do this. Don't worry, you can simply create the instance again later.)

![Maya Image](/images/organic-modeling/frog_115.jpg)

**Mirror the bottom lip. Delete the old lip. Adjust vertices.**
Edit Mesh &rarr; Mirror Geometry Option Box.

![Maya Image](/images/organic-modeling/frog_117.jpg)

**Now turn the bottom lip and head back into one mesh.** Shift + select the bottom lip and head, Mesh &rarr; Combine. 

**Continue building the head as follows:**

![Maya Image](/images/organic-modeling/frog_126.jpg)
![Maya Image](/images/organic-modeling/frog_122.jpg)
![Maya Image](/images/organic-modeling/frog_123.jpg)

**Continue extruding edges and merging vertices until you get something like this:**

![Maya Image](/images/organic-modeling/frog_121.jpg)

**Create a Maya instance again.** Your head should look something like this now:

![Maya Image](/images/organic-modeling/frog_124.jpg)

Now, we are going to make the inside of the mouth:

Note: If you can't scale the edge loop correctly in the 3rd picture below, you can move those edges around manually.

![Maya Image](/images/organic-modeling/orgmodel_008.jpg)

*Note: You can merge multiple pairs of vertices at a time. Edit Mesh Merge Option Box. Make sure **Always merge for two vertices** is checked, and that you set the threshold to something low, like .05:

![Maya Image](/images/organic-modeling/frog_151.jpg)

**Create a layer called HEAD, add your model to the layer, and hide the layer.**

Now we are going to revisit the arm and leg, and model a hand and foot. 

## Modeling the Foot

**Since you're probably familiar with the tools by now, just follow this visual guide, starting from a box:**

![Maya Image](/images/organic-modeling/frog_127.jpg)

![Maya Image](/images/organic-modeling/orgmodel_009.jpg)

![Maya Image](/images/organic-modeling/frog_129.jpg)

**Press 3, and your foot should look like this:**

![Maya Image](/images/organic-modeling/frog_137.jpg)

## Modeling the Hands

**This is similar to modeling the foot. Follow the visual guide:**

![Maya Image](/images/organic-modeling/frog_130.jpg)

![Maya Image](/images/organic-modeling/frog_132.jpg)

![Maya Image](/images/organic-modeling/frog_134.jpg)

Press 3, and the should look like this: 

![Maya Image](/images/organic-modeling/frog_135.jpg)

## Connecting All the Body Parts

Now that we have all the body parts, we simply have to make sure edge loops line up, and then start merging vertices!

Un-hide all your layers, and place them like so:

![Maya Image](/images/organic-modeling/frog_138.jpg)

![Maya Image](/images/organic-modeling/frog_139.jpg)

Now, adjust edge loops and vertices so that you can merge them. 

![Maya Image](/images/organic-modeling/frog_140.jpg)
![Maya Image](/images/organic-modeling/frog_141.jpg)

Now, create an instance, and merge the two halves. 

![Maya Image](/images/organic-modeling/frog_142.jpg)

![Maya Image](/images/organic-modeling/frog_144.jpg)

<a href=http:ucbugg.berkeley.edu/learn/data/media/labs/Adv_Modeling/mo_latest.ma>Reference</a> for Human Character Modeling

## Extra for Experts:

Now that you have a complete model, here's how to create a master controller so that you can perform transformations on your model easier while maintaining the separate body parts. You will be creating controllers quite often when you start rigging, so here's a quick introduction.

Here I have a main group called "wholeobject" which is a group of 3 objects in my file, a hat, a group of legs, and a group for the eyelens.

![Maya Image](/images/organic-modeling/orgmodel_010.jpg)

First, I want to create a NURBS circle, so I go into *Create->Nurbs Primitives* and make sure *Interactive Creation* checkbox is turned *OFF.* Then I can create the actual circle by going to *Create->Nurbs Primitives->Circle.*
I want to scale up this circle, place it at the base of my character, and rename it to "master_controller" like this.

![Maya Image](/images/organic-modeling/orgmodel_011.jpg)

Now to finish it, all I have to do is to middle-click and drag the "wholeobject" group into the "master_controller" label in the outliner.
Now when I want to perform transformations on my object I can just click on the master_controller because it will select my entire object!
Yay! That completes this tutorial!

Originally by Christine Li


