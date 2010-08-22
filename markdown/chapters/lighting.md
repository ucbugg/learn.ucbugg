# Lights in Maya

Making careful decisions about lighting is crucial in drawing, painting, photography, etc, and 3D art is DEFINITELY not the exception. Often you will be trying to create some semblance of real-world lighting within Maya, so knowing how to use Maya's lighting system is important. However, before turning on your computer it is critical to pay attention to how light works in reality so you know what look you're trying to achieve. Even the most stylized animation has to understand and use people's reaction to different lighting conditions to succeed.

An excellent 4-part article on the principles of lighting by Richard Yot can be found at <http://www.itchy-animation.co.uk/tutorials/light01.htm>

A good CG-focused lighting tutorial by Amaan Akram <http://www.warpedspace.org/lightingT/part1.htm>

In Maya all lights have the attributes **Intensity** and **Color**.

### Color

Very simply, the color of the light. Think carefully about what the light source is when choosing the color of the light. For example, sunlight may be nearly white at midday but not at sunset; an incandescent bulb is yellowish-orange while a fluorescent light might be a tad greenish, etc.

### Intensity
Intensity is how bright a light is, or how much energy it's putting out. Intensity 0 light is 'off', and there is no upper limit on how high you can set this. Setting a NEGATIVE number will actually suck light away from whatever surface is exposed to it. Beyond these 2 common attributes, each type of light in Maya has its own settings modifiable in the attribute editor.

## But Wait, How Do I Create Lights?

So you're new to Maya and want to start somewhere with lighting? To create a light, go to: Create > Lights. Here you'll see a list of the 6 basic light types you can create in Maya.

These are named Ambient, Directional, [Point](#point-light), Spot, Area and Volume. Note that each light has an option box next to it, so if you wanted you could set the attributes before you create lights. In general it makes more sense to edit those attributes after creation, when you can get quick visual feedback on the tweaks you're making. The rest of this document gives a brief explanation of each light type and its attributes, starting with Point Lights.

### Point Light

Point lights shoot light in all directions from an infinitely tiny point (hence the name). It is a good light to represent lights that are in your scene or just off-screen, for example a hanging light bulb or a candle inside a jack-o'-lantern.

A render of this scene would appear thus

Notice that the middle of the walls and floor are lighter than the corners- this is because the point light is located in the very middle of the scene and so its light is more concentrated on the closest parts of those surfaces.

#### Important Attributes:

##### Decay Rate 

Controls how quickly light intensity decreases further away from the point light. With 'linear' chosen the scene will become very dark and require a large boost to intensity; higher order decay settings even more so.

### Directional Light

Directional lights shoot light from infinitely far away in just one direction. Imagine a light, like the sun, that is so far away that light from it comes at nearly the same angle to hit you no matter how much you walk around. Directional lights are good for representing the sun or a bright sky, as well as adding some extra fill light to your scene if necessary.
A render of this scene from a camera facing into the room appears like this:

Notice that since the directional light was pointed towards the bottom right corner, only the walls touching that corner are lit. It does NOT matter where you place the directional light, only the orientation of it. The same render results if you move the directional light outside the room or halfway through a wall, etc.

### Ambient Light

Ambient lights at first appear similar to point lights. They also shoot light out in all directions from an infinitesimally small point. However, ambient lights have an 'Ambient Shade' variable which makes the light cast from them illuminate all surfaces equally the closer it gets to 0. This means ambient lights can be used to brighten up the overall scene equally, even the darkest corners. As a result they should be used very sparingly; you probably want finer control over where you areas of light and dark are and too much ambient light can wash out your scene.

A render of this scene appears just light a point light, since Ambient Shade is set to 1:

However, if you set Ambient Shade to 0, all surfaces are shaded equally. The light no longer shines more brightly on surfaces closer to it:
#### Important Ambient Light Attributes:

##### Ambient Shade

At 0.0 all parts of your scene receive light equally. Increasing towards 1.0 causes the ambient light to behave more and more like a point light and more strongly illuminate surfaces closer to it.

##### Decay Rate
Same as point light Cone Angle: How wide the opening of the spot light is in degrees. 360o is a point light

##### Penumbra Angle
Setting this above 0 creates a smooth gradient of light on the edges of the lit area, as in this render:

### Spot Light

Spot lights cast light out in a cone shape. They are useful for reproducing streetlights, stage lights, etc.
Rendering the room, it is clear that the light is only emitted from the opening of the spot light's cone shape:

#### Important Spot Light Attributes:

##### Dropoff

Setting above 0 (small tweaks make a big difference here!) will cause the light intensity to decrease the further away from the very center of the spot light's target.

### Area Light

Area lights are planes that emit light across their surface. For example, a large rectangular ceiling light in an office could be represented with this. The amount of light coming from an area light is actually dependent on how large the area light is. Thus you should tweak your intensity and the size of your area light at the same time. The Maya screenshot below representing the direction of light below is not completely accurate; light is also emitted at every angle off the surface, not just straight forwards.

A render from a camera looking into the room looks like this:

#### Important Area Light Attributes:

##### Decay Rate

Same as point light

### Volume Light

Volume lights get a bit trickier than the others, but can produce really nice or interesting results. A volume light has a defined shape: box, sphere, cylinder or cone. All light emitted by a volume light ONLY affects objects inside its shape (inside its volume). This provides really careful control over the light in an area and prevents light spill. Volume lights are generally not the answer for lighting entire environments, but they could give you very tight control over certain areas. An example of a sphere volume light with a polygonal sphere partly inside it:

Rendered from the same camera:

Only the part of the polygon that was inside the volume light is lit. In this example the volume light was producing light from its center; we can also have it produce light from its edges and emit inwards by changing the Volume Light Dir attribute in the Color 

Range section:

The small polygonal sphere inside will be illuminated by light from the outer edges of the volume light sphere like this:
Why is only one side of the sphere lit, but not the other? The light rays do not pass through the center point of the volume light.

#### Important Volume Light Attributes:

##### Light Shape

The shape of the volume light. Once you've selected this you can scale/rot/translate as you please to get the objects you want lit inside.

##### Volume Light Dir

Whether light should be emitted outward from the center of the volume light shape, or from the edges inward. The last option, 'Down Axis', emits in the direction of the up/down axis visible as a little green arrow pointing inwards on the volume light shape.

##### Other Attributes
Volume lights are complex and have attributes for controlling the falloff, penumbra and more very precisely with ramps. Play around with these and look up in-depth volume light reference if you choose to use a volume light in your scene.

So far we have the spot light set up inside the lamp with a nice penumbra, but there are several things missing that we'd expect to see in a shot like this.

1. The teapot looks like it's floating on the ground because there are NO SHADOWS. 
2. The light does not look like it's turned on because the bulb is the default lambert1 shader and the inside of the shade is no better lit than the outside. 
3. Wouldn't it be cool if there was some dust or particle matter in the air of this dingy...warehouse?...to produce a nifty light fog effect?

We'll take these on one by one, learning about the very important concept of Light Linking as well.

## Shadows and Light Linking

The first thing to know about shadows in Maya is that you have to pick between two types of shadows- **depth map shadows** or **ray traced shadows**. At this point you should use depth map shadows, and that is what we will cover now; there is a quick explanation of ray traced shadows at the end of this section.

### Turning on Depth Map Shadows

Turn depth map shadows on for your spot light by selecting the light, going to the attribute editor and looking in the Shadows > Depth Map Shadow Attributes section. You should see this:
Put a check in the box "Use Depth Map Shadows". Just like that shadows are enabled and should appear in your render! You can think of depth map shadows as being created by going to where the light is and taking a snapshot of your scene from there. Anything you cannot see in your snapshot is in shadow. We'll talk about the attributes available with depth map shadows and how to tweak them in a moment, but first it's clear from an initial render that we have a problem. There's a huge circle of shadow around the teapot:

What's happening here is that the light is being blocked by the bulb inside. What we need to do is tell the light to ignore the bulb completely- in reality the bulb itself would be casting the light! Having lights ignore specific geometry is called Light Linking.
### Light Linking

We want to de-link the spot light from the light bulb, so that the bulb no longer blocks the light and creates an odd shadow. First open up the light linking editor. To find the editor, make sure you are in the Rendering toolset, and go to: Lighting/Shading > Light Linking Editor > Light Centric

Select your light on the left side, and then click on a piece of geometry to de-link it from that light:

Now a render looks like this:

Much better! The edges of the shadows look very ugly now, like there are lots of squares and jagged edges. Let's talk about how to get a nicer look.

### Tweaking & Improving Depth Map Shadows

Right now the depth map shadows section of our spot light attributes looks like this:

### Resolution

Remember how earlier I said depth map shadows are created by taking a snapshot from the position of the light and shadowing whatever is blocked by other geometry? The resolution attribute is the resolution of that snapshot. At 256 this means a 256x256 pixel snapshot. Those squares and jagged edges we're seeing in our shadows are actually pixel edges of this snapshot. The further a light is from the object it is shadowing, the higher you need to raise this value. To give ourselves more detail to work with, crank this up to at least 512.

### Filter Size

Better, but the edges still look pixel-y. Upping the filter size blurs (filters) the depth map to eliminate those sharp edges. A good value for this depends on the distance between the light and your objects being shadowed, as well as the resolution. Let's set this to 3 for now.

### Bias

You probably will not have to use this unless you see your shadows looking detached from the bottom of your objects. If so, first check to make sure your objects are actually on the ground and not accidentally a few inches in the air. Then start lowering the bias as needed. We'll leave it at 0.001.

We'll skip the Fog Shadow attributes for now and talk about them in the Light Fog section.

### Disk Based Dmaps

It can take time to take those snapshots from each light and filter them to produce a depth map shadow setup, especially if the resolution is very high. Disk based dmaps allow you to save depth maps on your hard drive to save time. The lamp-and-teapot scene is so simple this is not worth doing now.

Our scene is looking much better with higher-resolution shadow maps that are filtered to smooth the edges! After a quick digression on ray traced shadows, we'll move on to making the light look...lit.

## Ray Traced Shadows

Below the Depth Map Shadow Attributes section is the Ray Traced Shadow Attributes section. If you just check "Use Ray Trace Shadows" and render you'll see...nothing. First you need to go into your render settings and turn on Raytracing. Assuming you're just using Maya Software renderer you just need to open your render settings (the button next to the IPR render button) and check off "Raytracing" in the Raytracing section of the Maya Software Tab:

Now a render will look like this:

Nifty reflection! But...the shadows look pretty ugly again- they are really sharp. Raytracing is a type of rendering that can give you pretty reflections and accurate shadows, at the cost of much longer render times. Writing a raytracer is one of the first projects new computer science students do in a graphics class, so if you search online you'll find a plethora of good explanations of Raytracing if you want to learn more. In an advanced lighting/rendering class we will talk more about Raytracing, but for now depth map shadows are the way to go.

## Surface Shader & Shader Glow

Right now our light bulb does not look lit- let's fix that with a good shader on the bulb. In this section we're assuming you know the basics of shading, like how to open the hypershade, create a new shader, apply it to your object and tweak its color.
For our light bulb, open up the hypershade and create a Surface Shader node. You'll notice it appears all black, and if you select it and open up the attribute editor for it there are only a few attributes to look at:

A surface shader is much simpler than Lambert/Blinn/etc. Whatever color you set the Out Color attribute to is the color your object will be. That's it. This is great for something light a light bulb, which is bright and producing light so should not have any noticeable variation in color due to other lights in the scene. Set the Out Color to a bright yellow/white, and apply the shader to the light bulb in the scene. Here's a render:

Good, at least our bulb is bright now. Next we'll add some Glow to it. Glow is what it sounds like: a blurry halo applied to a shader to make it appear to be emitting light brightly. Unlike most other shader attributes, glow is applied AFTER your image is finished rendering. You could just as well render without it and add your own glow in photoshop, but Maya gives you this attribute as a shortcut. Set to Out Glow Color attribute and do a few test renders.

Great! It looks much more like a bright light that's turned on now. One other improvement we could make at this point would be to add a weak point light inside the lamp shade to light the inside more.

## Light Fog

Let's say this is a dingy old building, with years of dust everywhere and floating through the air. In real life, light would hit these tiny particles and bounce around, making the beam of light clearly visible in the air. This effect is called Light Fog, and if you have ever driven with headlights on in thick fog the name is obvious. Maya gives tools to reproduce this effect, and we will apply it to our spot light.

Select your spot light, open up the attribute editor and go down to the Light Effects section.

Click the checker box next to Light Fog and a LightFog1 node will be created.

Before talk about what the light fog attributes are and how to tweak them, a quick render reveals that our scene is already looking more interesting:

Nice! That was easy. Better yet, as we tweak the values for light fog you can have it doing an IPR render and see how each value affects the appearance of the fog! Let's go back to the LightFog1 node for a moment. The two important attributes here are:

### Color

What color the fog is. Set this to white and the light fog will be the same color as the spot light. Making this color darker will just reduce the entire light fog effect, not actually make a black cloud or some such thing.

### Density

The imagined density of the particles in the air. The higher you set this, the more obvious and thick the light fog will be. Here's an example of setting it to 5.0:

For now I'll set density to 1.5.

There are two other attributes we'll cover now that affect the light fog, both in the Light Effects section of our spot light where we first created our LightFog1 node. This is how it looks now:
The two attributes below Light Fog are:

### Fog Spread 

Setting this higher will make the light fog more pronounced, and sharpen the edges of where the light is. Lowering it will soften the falloff on the edges of our light fog.
### Fog Intensity

Raising this value just makes the fog brighter or darker as a whole. You want brighter fog, but don't want the shape to change? Up this value. As with all overall-brightening tools in Maya, try to achieve your look without relying on this too much.

For this scene I'll set the Fog Spread to 0.75 for a more subtle effect. That's all for now!
