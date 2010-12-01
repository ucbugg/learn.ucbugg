# Introduction to Maya

Welcome to the first UCBUGG lab exercise. We will be covering the basics of Maya in the following pages.

## Configure OS X / Launch Maya

If you are not using a Mac Pro in the CITRIUS lab, feel free to skip this section. 

### Setup Right-Click and Middle Mouse Button

The contextual menu in Maya, opened via right-click, is a very important tool for the seasoned Maya user. However, the Mac Pros don't have right-click enabled by default. Open up System Preferences. Select Mouse and Keyboard. Select Mouse in the top menu. Set the right-click button to Secondary. Also set the Middle Mouse Button to Button 3, not the Dashboard.

![Maya Image](/images/introduction-to-maya/intro_to_maya_mouse.png)

### Launch Maya

The simplest way to launch Maya is to click the Spotlight icon in the upper right, type "Maya", and click on the Maya menu item.

![Maya Image](/images/introduction-to-maya/intro_to_maya_openmaya.png)

If spotlight isn't working, simple open up Finder, select Applications in the left bar, and Navigate to Autodesk &rarr; maya2009  &rarr; Maya. 

## Interface

So you've opened up Maya for the first time and you have a diarrhea of menus and buttons in front of you.  Don't worry!  Hopefully, we'll give you a good overview of what everything (well, most of everything) is. 

### Drop-down menu

![Maya Image](/images/introduction-to-maya/intro_to_maya_001.png)

Depending on what you're trying to do at the moment, the drop-down menu gives you access to different options based on your selection.  Scrolling through the 4 choices, you will notice that the top bar will change based on each selection. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_002.png)

Basically, everything you can do in Maya can be found in the menus found in the top bar.  These menus are determined by your drop-down menu choice.

<div class="note">
An alternative way to switch between these choices is to use F2 (for animation), F3 (for polygons), F4 (for Dynamics), and F5 (for Rendering). On OS X, you need to hold the "fn" key to activate the function keys.
</div>

Going through the top bar menus, you may notice little black boxes next to the text in these menus.  **These option boxes are very important.**  As a rule of thumb, before I choose anything in these menus, I almost always check the option box. 

These option boxes allow you tweak the settings on your selection.  Using the option boxes allow you to change the behavior of your selected action. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_003.png)
 
You can also have floating menus that are ALWAYS open.  To do this, select a menu at the top bar and then CLICK the beveled top of the menu.  You may now drag this new window as you would any other menu. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_004.png)

### The Shelf

![Maya Image](/images/introduction-to-maya/intro_to_maya_006.png)

Sometimes, you're just sick of the extra clicking time it takes to go through all the menus to do one action that you often use.  A good idea here is to make a **shelf icon** so that one click will allow you to select the action you want instead of multiple clicks through massive menus.  The only drawback to this, compared to menu selection method, is that you do not have access to the option box.  However, if you set the options of an action that you know will not change, using this shortcut will save you valuable time. 

If you can't see the shelf tabs (as shown in the picture) click the small black triangle to the left of the shelf and select the "Shelf Tabs" option.

Notice the tabs at the tops of the hotkey bars.  These are sub-bars that have pre-made icons of commonly used actions for that particular tab. However, it's possible to create a custom shelf with shelf icons of your choosing


#### Customize your own shelf

First, choose the CUSTOM tab (in reality, you can create shelf icons under any of the tabs available, which is more efficient). 

![Maya Image](/images/introduction-to-maya/intro_to_maya_007.png)

Next, choose "Polygons" option in the drop down menu (or hit F3) in the upper left corner of the screen, and then select MESH then **highlight** the SMOOTH action. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_008.png)

Next, hold CTRL + SHIFT and then CLICK the smooth option.  A new SMOOTH icon should pop up in your CUSTOM shelf. To delete, MMB (Middle Mouse Button) drag the icon to the TRASHCAN in the upper right part of the screen.  You can even add a shelf icon for scripts or segments of code that you frequently use.

![Maya Image](/images/introduction-to-maya/intro_to_maya_009.png)

  More information about this feature can be found by selecting the HELP menu from the top bar, then choosing TUTORIALS.  In the search field, type in "shelf" and tons of tutorials (as well as information about the shelf) should pop up.  You can actually search for information on ANY function or feature of Maya

<div class="note">
Using the help menu is a very important skill to have.  I can't stress this enough.  Using the HELP menu of Maya, as well as any software program, allows you to become more comfortable with the program quickly.
</div>

### The Toolbox
    
![Maya Image](/images/introduction-to-maya/intro_to_maya_021.png)

To the left, you have your basic Tool Box for Maya. These tools are a few of the most frequently used actions in Maya.  Hovering over each icon gives you a description of what they do. The last icon in the column will always be your **last used** tool.

### The Timeline

![Maya Image](/images/introduction-to-maya/intro_to_maya_010.png)

For those of you who have used Flash or anything like that, the timeline should be very familiar to you.  This is basically how you animate objects, which we will go into at a later time.  But for now, just know that it's there.  However, if you're really interested about this feature, LIU (Look It Up) in the HELP menu. 

### The Script Editor

![Maya Image](/images/introduction-to-maya/intro_to_maya_011.png)

Here, you will find the SCRIPT EDITOR of Maya.  Basically, everything done in Maya is a segment of code.  To see this in action, you can open the script editor up, and under the POLYGONS shelf tab, select the first four icons.  You will notice that after every click, the object that is created by clicking is also created in the script editor by code.  This means that not only can you click menu options and icons, you can actually use code to do anything you want.  If you want to learn more, either LIU or ask one of us!  

![Maya Image](/images/introduction-to-maya/intro_to_maya_012.png)

### Settings

![Maya Image](/images/introduction-to-maya/intro_to_maya_013.png)

An important menu that I recommend checking before doing ANYTHING in Maya is the SETTINGS menu.  Making sure that everything is setup correctly before you start is very important in synchronizing your files with other people as well as saving yourself lots of headache later on when you realize that you did all your work under an undesired setting.  As you can see, there are lots of other menus to choose from the PREFERENCES button and these will either be discussed later or in class. 

### Channel Box

![Maya Channel Box](/images/introduction-to-maya/intro_to_maya_channel_box.jpg)

The Channel Box gives you access to the various properties of the selected object. For example, when selecting a polygon shape, the Channel Box displays it's position, scalar, and rotational attributes. We will revisit these properties when disucussing modeling and animation.

The bottom half of the Channel Box contains the layers present in this Maya scene. Layers are a useful way to partition your scene into discrete units and play an important role in the rendering process. We will learn how to create and use layers later in the course.

### Tool Options

![Maya Tool Options](/images/introduction-to-maya/intro_to_maya_tool_options.jpg)

The Tool Options window allows you to change the settings of the current tool. We won't be changing any settings here during the tutorial, but in the future, important options are only accessible through this window.

### Attribute Editor

![Maya Image](/images/introduction-to-maya/intro_to_maya_attribute_editor.jpg)

While the Channel Box gives you access to a certain set of properties, the Attribute Editor exposes all editable attributes for a given object. This view can become quite overwhelming due to the sheer number of options present, so we won't be using this editor today.

### Selection Options

![Maya Image](/images/introduction-to-maya/intro_to_maya_015.png)

These options allow you choose what objects you are able to click on in the main window.  This is very useful when you have overlapping objects. The buttons with magnets limit how objects move around the scene when manipulated using the move tools. We will show you how to use these buttons in later labs, so for now, just ignore them.

<div class="note">If you every accidentally close a taskbar on the screen, such as the shelf or timeline (this can be done with the dotted+arrow tab on the top or left part of every taskbar), and you want it back, just reset everything by following this order of selections starting from the top bar: Display &rarr; UI Elements &rarr; Restore UI Elements</div>

## Panels

Maya's main window consists of one or more panels, each with their own display options and properites.

### Window Layouts

Maya's main window can be split into many different panel layouts, each useful for completing specific tasks. Some of the most useful layouts are listed below. 

#### Perspective

![Maya Image](/images/introduction-to-maya/intro_to_maya_022.png)

This window shows you exactly what the name implies; a PERSPECTIVE view.  I usually use this option to check how my object looks/behaves from every angle.  This is a very useful window in "debugging" your object.  You will use this window a lot when modeling to make sure your model looks proper from every angle. 

#### 4 Windows

![Maya Image](/images/introduction-to-maya/intro_to_maya_018.png)

This is a very important window as it shows you the top, front, side, and perspective view of your object all in the same window.  This is very useful in modeling as you will only want to deform things in a 2D plane rather than a 3D plane.  This will be explained later. 

<div class="note">A nice feature about these windows is that you can actually have the sub-windows show more than just cameras.  Choosing the PANELS menu from the top of each sub-window, you can choose what you want shown in that particular window.  This can actually be down with any of the other window options in Maya.</div>

#### Perspective/Outliner

![Maya Image](/images/introduction-to-maya/intro_to_maya_016.png)

Along with the PERSPECTIVE view window, comes the OUTLINER.  Basically, anything created in your current file will appear in the OUTLINER. 

<div class="note">Navigating the outliner to select objects and 
organize your scene is a very important skill to have.</div>  

Organization, such as proper naming and hierarchical connections, allows you to easily modify and manage your scene.  Later on, when we begin modeling, you will see how important it is to have good organization. 

#### Perspective/Graph

![Maya Image](/images/introduction-to-maya/intro_to_maya_017.png)

Along with the PERSPECTIVE window, comes the animation GRAPH window.  This window is primarily used to tweak and modify animation curves of your objects. 


#### Perspective/Hypershade 

![Maya Image](/images/introduction-to-maya/intro_to_maya_020.png)

Including the PERSPECTIVE window, the HYPERSHADE window allows you to see all the textures AND connections you have in your scene.  Parallel to the OUTLINER, the HYPERSHADE window allows you to physically see the connections.  

### Switching Between Panels

Switching between different layouts can be tiresome and time consuming. Maya provides a very helpful shortcut for navigating panels quickly and easiy: **the space bar**. Open up the 4 Windows layout (shown above). With your mouse over the "Perspective" panel, tap the space bar. Maya will maximize the panel your mouse is hovering over to give you a better look at that panel. To go back to the previous layout, simply tap the space bar again. This shortcut works in all the layouts discussed above.

### Display Options

Each panel has a row icons near the top which contain various display options. Select the display options by clicking on the icons.

#### Wireframe

![Panel Wireframe Mode](/images/introduction-to-maya/intro_to_maya_panel_wire.jpg)

This mode shows just the wireframe of the objects in the scene. **Activate by pressing 4 on the keyboard** 

#### Smooth Shade All

![Panel Shaded Mode](/images/introduction-to-maya/intro_to_maya_panel_smooth.jpg)

This mode shades all the objects with a basic grey shader, which is helpful for complex scenes. **Activate by pressing 5 on the keyboard** 

#### Wireframe on Shaded

![Panel Wireshade Mode](/images/introduction-to-maya/intro_to_maya_panel_wireshaded.jpg)

A combination of the two above settings.

#### Textured

![Panel Textured Mode](/images/introduction-to-maya/intro_to_maya_panel_shaded.jpg)

This mode displays the texutes on all the objects in the scene. We will learn about texturing later in the semester. **Activate by pressing 6 on the keyboard** 

#### Use all Lights

![Panel Use All Lights Mode](/images/introduction-to-maya/intro_to_maya_panel_light.jpg)

This mode uses the scene's lights instead of Maya's default lighting. Lighting will also be discussed later in the semester. **Activate by pressing 7 on the keyboard** 

## Manipulating Objects
    
The tools in your [toolbox](#the_toolbox) are a few of the most frequently used actions in Maya.  Hovering over each icon gives you a description of what they do.  However, instead of manually clicking each icon to enable their use, the hotkeys Q W E R allow you to do the same thing without ever having to move your mouse.  So what's the best way to show how each of these hotkeys work?  Examples! 

<div class="note">

#### An Aside About Shortcuts

<p>Using keyboard shortcuts will save you valuable clicking time.  <strong>Knowing the core hotkeys is very important.</strong>  You will be more efficient and look a hell of a lot cooler when someone is watching you use Maya. And we all want to look cool</p>

<p>There are a million (ok, maybe not that much but it's a crap-load) hotkeys predefined in Maya already and you can check them out by following this sequence following from the top bar: Windows > Settings/Preferences > Hotkeys... Here you can see what the hotkeys are for specific commands as well as set your own.  You can learn more from the HELP menu.</p>
</div>

Let's start by first going to the **4-window** mode (forgot how to do this? Scroll up!).  Next, go to your **shelf** and choose the Polygons and let's create our first polygon!  Click on the **cube icon** and create a cube in the "Perspective" view first by dragging the base and then by dragging the height. You should now have a shape named **pcube1** in all 4 of your windows. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_023.png)

Notice the green, red, blue, and yellow gizmo that is coming from the center of the cube.  What is this gizmo?  That is exactly what it is ... the **gizmo**.  We'll see how to use this in a bit but for now ... let's learn some hotkeys! 

### Undo - Z

We all make mistakes. It happens to the best of us. If you need to go back a step, just hit the z key.

#### Infinite Undo

By default, Maya only remembers a certain number of commands to undo, but the lab computers are powerful enough to let Maya remember all commands, meaning we can undo an unlimited number of commands.

To set the Undo queue size to inifinite, navigate to Windows &rarr; Settings/Preferences &rarr; Preferences. In the pop-up window, select the "Undo" option on the left (you may have to scroll down) and select "Infinite" next to the Queue option. Click Save.

### Focus - F

You may notice that the cube that you just created seems to be very small.  However, this is not necessarily the case.  Starting in the persp sub-window, hover your mouse over each sub-window and hit the **F** key.  This will bring all objects selected into focus. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_024.png)

If you're like me, then working with solid objects makes more sense to you.  To change how an object is represented in a window can be done through the SHADING menu in the top of each sub-window.  In this example, choose the SMOOTH SHADE ALL selection. You can also enable SMOOTH SHADE ALL by pressing **5**.

![Maya Image](/images/introduction-to-maya/intro_to_maya_025.png)

Notice how the cube looks different from the rest of the sub-windows now. 

Personally, this is my favorite shade for objects, but you can sample the other choices such as, WIREFRAME ON SHADED or X-RAY (this is pretty cool).  Anyway, after finding a shade you're comfortable with, go back to the SHADING menu and at the very bottom click APPLY CURRENT TO ALL.  You should notice that all 4 sub-windows sport the new shading option.

### The Selection Tool - Q

Pressing **Q** enables you to use the selection tool.  This is useful when switching between objects when modifying them. 

### The Move Tool - W

Pressing **W** enables you to use the move tool.  Pressing **Q**, brings you back to the selection tool.  Let's play around with the move tool for a bit.  Go to the persp sub-window (upper-right) and click on the cube.  Now press **W** and a blue, red, and green arrow gizmo with a yellow box in the middle should appear. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_026.png)

Notice that your cursor should have a transparent box at the pointer.  Hovering the box over the tips of each arrow, click and drag in the direction of the arrow and you should notice the cube moving.  This moves the box in the direction of the arrow ONLY.  **This is very important**.  To see why, try hovering the box over the middle yellow box.  Now click and drag the cube in a certain direction.  Notice how the cube moved in ALL 3 of the other sub-windows.  You equivalently moved the cube in the 3 dimensional space, which is usually unwanted.  Press z to undo and return the cube to its original position.  Now try moving the cube by using only the arrows, one at a time, and you notice that only 2 of the sub-windows move.  By moving your object in a 2D plane, you control where your object is in 3D space. 

Now we're done playing with the move tool and want to return to our selection tool.  How do we do this?  Just press **Q** and you enable your selection tool again.  Notice how the gizmo disappears.

### The Rotate Tool - E  

To rotate an object press the **E** key.  Notice that the gizmo turns into an outline of a sphere with a green, red, and yellow line.  The yellow color always modifies the object in 3D space, which is usually unwanted.  The colored lines modifies the object in only that direction.  Play around with the rotate and hit **z** after you are done to return the cube to its original position.  Try switching between the selection (**Q**), move (**W**), and rotate (**E**) tool.  Notice how the gizmo changes. 

### The Scale Tool - R

To scale an object, press the **R** key.  Notice that the gizmo turns into different colored cubes.  To scale in only one direction, click and drag a colored cube in one direction or to scale in all direction, click and drag the yellow cube. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_027.png)

### The Yellow Gizmo and Your Mouse

Clicking the middle mouse button is equivalent to clicking and dragging the yellow gizmo in any of the modify tools.  This button has many other uses that you will see later on. 

## Navigating Your View

Before becoming a Maya master, you will need to learn how to navigate the various scenes of your animation. Thankfully, Maya makes this task quite easy.

### Zoom View

To manually zoom in and out on an object, just hover over the window you want and scroll up or down using the mouse wheel. It's that easy.

### Rotate View 

Select the cube in the persp sub-window and hold **atl + click + drag**. The **&#8984;** key can also be used instead of **alt**.  You should notice the that you are now rotating around the cube.  Now try the same thing in any of the 3 other sub- windows.  You should notice that it doesn't work.  This is because they are fixed camera views.  Now switch to PERSPECTIVE view to get a better view of your object and rotate around your cube. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_028.png)

### Move View 

To move the view, hold **alt + MMB (Middle Mouse Button) + drag** in any direction.  The **&#8984;** key can also be used instead of **alt**. You should notice that the view moves in the direction of the drag.  Now go back to the 4 windows.  Try moving the view in the 3 other sub-windows and notice that moving the view does work, unlike rotating the view.  To re-center the focus back to the cube, select the cube, and press **F**.  This should center the view back to the cube. 

## Domo Arigato, Mr. Roboto - Your First Piece of Art

So after a quick run-through of some of the interfaces and hotkeys of Maya, I'm going to show you how to use the rest of the tools on the screen.  The following tutorial will build your navigation skills in the Maya interface.

### Creating a Maya Project

While this robot will be simple enough to live in a single Maya scene file, we are going to create a Maya project for all your lab work this semester. Creating this project will teach you the proper way to work on larger animations in Maya.

To create a new project, navigate to **File &rarr; Project &rarr; New..**, which will open the "New Project" dialog window. Name your project {YourFirstName}_UCBUGG_Lab. Before saving, click "Use Defaults" to setup the default structure of your project. Once you've done that, **save the project somewhere in your home directory**. You will be using different lab machines, so make sure to save in your home directory. If you aren't sure where your home directory is, ask a facilitator. 

Now, when you save your robot, it will save it to your project's scenes directory, making it easy to find in the future. 

### Creating a Simple Robot 

In this assignment, you're going to have to create a robot using primitive polygons.  You may use any modification tool you like.  I'll show you how to make a quick robot with the tools explained in this tutorial. 
 
Fist, I go to my **POLYGON** shelf and click on the **CUBE** icon to create my head.  After focusing my view and setting my shading options, I'm going to use my move tool (W) and position my head in the FRONT view.  To be precise, you could type in a numerical value in the Translate Y field in the [channel box](#the_channel_box) to achieve the same effect. 

Next, I'm going to create another cube, scale it, and move underneath my head (all this is done [switching](#switching_between_panels) between the FRONT and SIDE view).  To see where the objects are relative to each other, use the persp view and rotate around your selection.

![Maya Image](/images/introduction-to-maya/intro_to_maya_030.png)

Next, I create a cylinder, rotate it about 90 degrees (using [the channel box](#the_channel_box), move it up, and duplicate it (using **&#8984; - D**) and move the duplicate to the other side. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_031.png)

Next, I create a **SPHERE**, scale it, and move it to the end of the right (your right, not the robot's) cylinder.  I then duplicate it and move the duplicate to the other side. 

I then create a **POLYGON PIPE**, scale it, and move it between the head and torso. To zoom in on an area, you can hold alt + ctrl + drag a box around the area and the window should zoom in accordingly. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_032.png)

Next, I create another cylinder, scale it, move it under the torso and rotate it a bit.  I then duplicate it and move the duplicate to the other side. 

![Maya Image](/images/introduction-to-maya/intro_to_maya_033.png)

And there you have it, a simple robot!  Of course, this is the barest of bare a robot can get.  Add your own creativity and style to your robot.  It doesn't necessarily have to be a biped.  It could be a quadruped or whatever you desire.  As long as you use only primitive objects and the move, rotate, and scale tool, the sky's the limit.

### Submitting Your Robot

Your homework is to finish up your robot (be creative!) and send the **.ma** or **.mb** file to <homework@ucbugg.com> with the subject line **HW2-firstname-lastname**. Can't wait to see what you create!
