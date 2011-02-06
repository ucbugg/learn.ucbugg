# Organic Modeling

<div class="note">
If you're familiar with Maya's modeling tools, you could probably get through this tutorial by just looking at the images. I've included text for extra clarification.
</div>

**Remember to File->Project->Set your current project to your UCBUGG Lab project.**

It's useful in the future to have a reference image inside your Maya file to model off of in the orthogonal views. 

[Create a reference image][/tutorials/create-a-reference-image]

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

### Modeling the Arm

Make sure your menu is set to 'Polygons'

First, **create a cylinder**: Create &rarr; Polygon Primitives &rarr; Cylinder.

![Maya Image](/images/organic-modeling/frog_023.jpg)

Change the cylinder options under INPUTS in the Channel Box. To show the channel box, use the right most button in the upper right: 

![Maya Image](/images/organic-modeling/frog_150.jpg) **(eileen)i am changing this image**
 
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
**(eileen) do we want them to create this bend as well?**

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

![Maya Image](/images/organic-modeling/frog_045.jpg)

**Create a layer called BODY, add your mesh to the layer, and hide it.** 

## Modeling the Head

There are many ways to model a head. Some people like to start from a cube, and insert edge loops from there. In our case, we are going to start by modeling eye patches. 

**Create a cylinder:** Create &rarr; Polygon Primitives &rarr; Cylinder. Go to the channel box and adjust the cylinder so that it has 8 sides and is centered on the grid. **Delete caps of the cylinder, scale vertices and bring them up to make a donut as shown:**

![Maya Image](/images/organic-modeling/frog_005.jpg)

You might have noticed that your pivot is no longer in the center of the donut. **Center your pivot** so that it's easier to work with. Select your donut, Modify &rarr; Center Pivot. 

![Maya Image](/images/organic-modeling/frog_081.jpg)

Next, **duplicate your donut.** Select your donut, Edit &rarr; Duplicate.  Or, press Ctrl + d.
Now, **rotate your eye patches and place them at slight angles to each other** (as shown in top view and perspective views below):

![Maya Image](/images/organic-modeling/frog_082.jpg)
![Maya Image](/images/organic-modeling/frog_083.jpg)

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

Next, we are going to connect the eye patch to the head by merging vertices. To merge vertices, however, we must first **turn the eye patch and head into one object.** Shift+select the eye patch and head in object mode, Mesh &rarr; Combine.

![Maya Image](/images/organic-modeling/frog_084.jpg)

![Maya Image](/images/organic-modeling/frog_111.jpg)

**Here are a series of steps to continue adding faces to the head:**

![Maya Image](/images/organic-modeling/frog_112.jpg) 

**To make the bottom lip and jaw, select these faces and duplicate face.** Mesh &rarr; Duplicate Face.

![Maya Image](/images/organic-modeling/frog_113.jpg)

**Turn the bottom lip and head into separate meshes.** Shift + select the bottom lip and head, Mesh &rarr; Separate. (*Note: your instance will disappear when you do this. Don't worry, you can simply create the instance again later.)

![Maya Image](/images/organic-modeling/frog_115.jpg)

**Mirror the bottom lip. Delete the old lip. Adjust vertices.**

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

![Maya Image](/images/organic-modeling/frog_125.jpg)

*Note: You can merge multiple pairs of vertices at a time. Edit Mesh Merge Option Box. Make sure **Always merge for two vertices** is checked, and that you set the threshold to something low, like .05:

![Maya Image](/images/organic-modeling/frog_151.jpg)

**Create a layer called HEAD, add your model to the layer, and hide the layer.**

Now we are going to revisit the arm and leg, and model a hand and foot. 

## Modeling the Foot

**Since you're probably familiar with the tools by now, just follow this visual guide, starting from a box:**

![Maya Image](/images/organic-modeling/frog_127.jpg)

![Maya Image](/images/organic-modeling/frog_128.jpg)

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

Reference for Human Character Modeling

<http:ucbugg.berkeley.edu/learn/data/media/labs/Adv_Modeling/mo_latest.ma>

Originally by Christine Li


