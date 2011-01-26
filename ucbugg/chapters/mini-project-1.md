# Mini Project Part 1

## Overview
In this assignment we will review how to set up a project, learn about references, and then jump right into having fun arranging your finished robot(s) as well as a few objects we've provided you with.

![Fun Image of Everything](/images/mini-project-1/Week1_001.png)

## (Review) Making a Maya Project

First of all, we will review how to make a project and make a project for this week's assignment.

### Create a New Project

Go to _File &rarr; Project &rarr; New..._ to create a new project named UCBUGG Mini Project.
We're gonna name the Scenes location _scenes_, and the Images location _images_ for this project and that is all we need to worry about.

![New Project Toolbox](/images/mini-project-1/Week1_002.png)

Now if you try to open a file through _File &rarr; Open Scene..._, you will notice that on the left hand side that the Current Project is now set to UCBUGG Mini Project.

![Current Project](/images/mini-project-1/Week1_003.png)

### Create New Folders

Inside the _scenes_ directory in your file system, make a directory named _chars_, _props_, and _sets_. These folders will from now on be known as _scenes/chars_, _scenes/props_, and _scenes/sets_ as they are under the scenes directory.

![Scenes Folder](/images/mini-project-1/Week1_004.png)

Download this zip file [here](/ma/mini_props.zip) and put them under scenes/props.
Also, download this zip file [here](/ma/mini_bots.zip) and put them under scenes/chars.
Also, while we are at it lets put your finished robot into scenes/chars as well.

Now our project is all set up to be used!

## References

Before we go into the fun part, we must learn a new concept called reference.
This is great way to keep your projects organized, as referencing between Maya files has a few nice properties which is listed in the Extra for Experts section for those of you that are curious.

As an example, I am going to reference my robot and frying pan into a new scene. You can make a new scene by going to _File &rarr; New Scene_.

Make sure you save this scene as main scene in _scenes/sets_ as _main scene_.

![Main Scene](/images/mini-project-1/Week1_005.png)

In order to reference objects simply go to _File &rarr; Create Reference_ in your Maya menu, and select the file you wish to reference.

![Create Reference](/images/mini-project-1/Week1_006.png)

Now I am going to _File &rarr; Create Reference_ and reference in _scenes/props/robot.ma_ and _scenes/props/frying pan.ma_.

![Referenced Models](/images/mini-project-1/Week1_007.png)

If you've noticed, this brings in that file into our scene! This is one major way of bringing in different maya files that you or someone has worked on separately into a single file.

However, you also see that the frying pan is too big for our little robot. We'll discuss this further when we talk about modeling but it is up to you and your teammates to come up with a way to unify sizes between your models.

For now I'm going to just scale things until they are the right size (As you've all learnt from lab), and here it is!

![Robot and Pan](/images/mini-project-1/Week1_008.png)


## Your Very First Maya Scene

Now you know everything to make your own scene. Remember to create a new file under _scenes/sets_ and make your own scene. Feel free to create more robots, more objects, and get creative. Have fun!

### How to Submit
Once you're done, please zip the whole project directory up(if you're not sure how ask the facilitators), name it __HW2 YOURNAME MINI PROJECT__ and send it to homework@ucbugg.com with the subject line __HW2-firstname-lastname__.


## Extra for Experts
These are extra material that is not necessary. But for those of you students who wish to peek ahead, go ahead and take a look!

###Moving pivots
One problem you might have encountered when moving and rotating objects around is only being able to rotate around the center like in the picture.

![Rotate around Center](/images/mini-project-1/Week1_009.png)

In the case of your robot arm, you most likely want to rotate it around the shoulders, or other various "joints" that make sense instead of the center. This is a topic that will be covered in detail but if you want a peek of what we will be doing in 5 weeks time, you can view the [Basic Rigging chapter](http://learn.ucbugg.com/basic-rigging#skeleton). Specifically, the Skeleton section right up onto the Joints section is what we are looking for.
In that section of the lab, you will learn how to group skeletons in appropriate hierarchies and also move your gizmo around to change the pivot of your rotations.


### Dive deeper into the world of Referencing

What exactly is referencing?

Much like the name suggests, it is a way of telling Maya that the specific object is not actually in the file, but rather it should try to "reference" it from another file. 

Here are some of the reasons references in Maya are useful:

* Multiple people can work on different parts of the project by breaking it down by assets. 

    e.g. You work on the robot, I'll work on the frying pan.

* If ever someone makes a change to a file, it will propagate up the hierarchy, automatically syncing everyone's work to the most recent one.

    e.g. If you had a scene, that referenced in a robot, and the robot file also referenced in a separate hat for the robot, and then you modify the hat file, this change will be shown in the robot file, and in the scene file as well.
    
![Referencing Diagram](/images/mini-project-1/Week1_010.png)

* You can easily manage all this with the Reference Editor which I will introduce to you shortly.


To give you an example of the second bullet point, consider the following situation.

I made my robot hold a frying pan and I'm happy with that, but without me knowing the frying pan was changed to be cooler. In this case, cooler means adding a cube in the middle. (Make sure it's saved!)

![Changed Frying Pan](/images/mini-project-1/Week1_011.png)

Now, if it weren't for references, I'd have to add the cube to the frying pan in my _main scene_ as well, which is double the work. However, since the frying pan in my _main scene_ is actually referencing in _frying pan_, we only need to _reload_ the reference. In order to do this, we'll introduce a new tool called the _Reference Editor_. This can be found under __File &rarr; Reference Editor__.

![Reference Editor](/images/mini-project-1/Week1_012.png)

The Reference Editor is a powerful tool that allows you to manage your references effectively. Right now we are mainly interested in Reload. If I select the Frying Pan reference and click Reload...

![Changed in Scene](/images/mini-project-1/Week1_013.png)

Voila, Our robot is now frying a cube!

The things you can do with References are endless and is heavily used in any kind of movie project in the real world. We can't cover all of these at once, but you will soon enough learn most of them!
