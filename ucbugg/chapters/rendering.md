# Rendering

Now that you have finished lighting, shading, animation, rigging and modeling (whew) it's time to start the final stretch: turn those Maya files into beautiful movies. The first step is actually creating images from maya. You have already rendered some images in the Lighting and Shading portions, so there may be some review.

## Maya's Rendering Engines

Maya comes with three different engines for rendering images. Other's exist, such as RenderMan from Pixar, but aren't included in the default Maya installation.

### Maya Software

Crappy, don't use it.

### Maya Hardware

Crappy, don't use it.

### Mental Ray

It's the best Maya has, so you should use it. If you are unable to render using Mental Ray because it does not appear as an option, you must load Mayatomr through the **Plug-in Manager**. You can access the **Plug-in Manager** by going to Window &rarr; Settings/Preferences &rarr; Plug-in Manager.

![Maya Image](/images/rendering/rendering_001.png) 

In the Plug-in Manager, load Mayatomr.bundle for Macs or Mayatomr.mll for Windows.

![Maya Image](/images/rendering/rendering_002.png)

You should now be able to use Mental Ray!

## Render Settings

Under **Render Settings** is where you specify the size, quality, image format, and from which camera to render from for your images. To open the **Render Settings** window, go to Window &rarr; Rendering Editors &rarr; Render Settings.

![Maya Image](/images/rendering/rendering_003.png)

Select the format of your rendered images. Use TIFF(tif).

![Maya Image](/images/rendering/rendering_004.png)

You want to be able to **Batch Render** which will render each frame in a range that you input, so set **Frame/Animation ext** to something that is not a single frame.

![Maya Image](/images/rendering/rendering_005.png)

In general, set **Frame padding** value so that when you open image sequences the order of the images is clear.  

![Maya Image](/images/rendering/rendering_006.png)

Set the frame range and the camera.

![Maya Image](/images/rendering/rendering_007.png)

The final short that you submit must be 720HD. To make sure that you render with this setting, under Image Size, set Presets to 720HD and you should see that the Width adjusts to 1280 and the Height adjusts to 720.

![Maya Image](/images/rendering/rendering_008.png)

Also for your final short, make sure to set the quality of your renders to **Production**. However you may leave it at **Draft** for test renders since rendering with production quality might take longer. 

![Maya Image](/images/rendering/rendering_009.png)

## Batch Rendering

After you have double checked your **Render Settings** you are ready to start your **Batch Render**. To batch render, go to the **Rendering** menu.

![Maya Image](/images/rendering/rendering_010.png)

Render &rarr; Batch Render

![Maya Image](/images/rendering/rendering_011.png)

Now, sit back, relax and watch this great video tutorial on batch rendering.

<object width="780" height="454"><param name="movie" value="http://www.youtube-nocookie.com/v/9fRz63ph0h4?fs=1&amp;hl=en_US&amp;hd=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube-nocookie.com/v/9fRz63ph0h4?fs=1&amp;hl=en_US&amp;hd=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="780" height="454"></embed></object>

## Tips

If your renders are not what you expect, perhaps an object you thought would appear in the render is being cut off, changing **Camera Settings** to **Resoluion Gate** might be helpful.

![Maya Image](/images/rendering/rendering_012.png)

Now it is easy to see what object will appear when you render.

![Maya Image](/images/rendering/rendering_013.png)



