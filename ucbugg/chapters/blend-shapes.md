# Blend Shapes in Maya
# LARGE OBVIOUS CHANGE 
Today we are going to be rigging a face. Before getring started, download the [face model](/ma/faces.ma) to the `scenes` directory in your current Maya project.

## What the Heck are Blend Shapes?

Rigging a face can be difficult. Unlike legs, arms, and other body parts, joints do not map perfectly to the aspects of a face. Instead of joints, we use Maya blend shapes. Blend shapes take any number of different models and create an single model which can shift between any of the models in varying degrees. 

For example, say we have two face models, one with an eyelid open and the other with an eyelid closed. A blend shape created with the two models will be able to open and close an eye. If you're confused, don't worry, blend shapes will make sense once you create your first one.

## Creating a Blend Shape.

First, open up the [faces.ma](/ma/faces.ma) scene in Maya. The scene consists of nine models. The center model (selected below) is the neutral pose. Each one of the other model represents a specific facial expression on one side of the face. 

![Blend Shapes Scene](/images/blend-shapes/scene_overview.jpg)

The right side of the face smiling

![Sample Expression](/images/blend-shapes/sample_expression.jpg)

To creat your blend shape, first select all the expression models (except the centeral, neutral expression). Make sure to **select the neutral expression last**. If this model isn't selected last, the blend shape won't work correctly. 

With the models selected select **Window &rarr; Animation Editors &rarr; Blend Shape**. The following window should pop up on your display.

![Blend Shape Window](/images/blend-shapes/blend_shape_window.jpg)

Select **Edit &rarr; Create BlendShape**. The window will populate with a number of sliders.

![So Many Sliders](/images/blend-shapes/blend_shape_sliders.jpg)

Center the screen on the middle face model (Select the model and press F). Play around with the newly-created sliders, sliding them up and down and back again. The face model should respond accordingly, closing its eyes, lowering its brow, and changing its mouth. Each slider controls the amount of blending between the base model and the targeted model. These sliders can be animated, a topic which will be covered later in the course.

Try to get your face model to match mine

![Frowny Face](/images/blend-shapes/frowny_face.jpg)

After blend shape creation, hide all the models used to create your blend shape. **Do not delete these models**. After creating the blend shape, you may want to update one of these models later. If you delete the models, you **will not** be able to change your blend shape.
















