# Effects

<div class="note tip">Effects are a lot of trial and error. Don't be surprised if you don't get the effect you want the first time.</div>

## Particles
**Particles** can be a powerful tool in computer graphics. You can use them as dust, liquid, or even to instance bigger geometry for each particle. Particles are basically points in 3D space that can't really be seen when rendered unless given some sort of shape or object to be instanced at each point. They are usually used concurrently with emitters and fields. Just like objects, you can apply shaders to particles as well.

## Emitters
**Emitters** take in a particle object and shoot them out according to specified options. You can emit particles omni-directional, at a certain direction, or even from a surface of an object. It really depends on the settings you apply onto the emitter.

## Fields
There aren't any forces affecting your particles at the moment. Thus, they just fly out into space with initial velocity and do not accelerate in any way. **Fields** are areas that affect objects in certain ways to simulate these forces in Maya. You can set them to affect only the objects that you attach these fields to.

Each field has their own properties and behavior. Probably the best way to learn about them is to mess around each one. One of the most common fields is gravity, which is basically a force that pulls down on objects at a certain magnitude.

# Make it Rain!
In this lab, we'll be attempting to make a rain effect. Don't expect to match the snapshots entirely, but try to get the particles to work the way you yourself want.

<div class="note tip">Remember to set your project!</div>

**Make sure drop down menu is on dynamics.**

![Maya Image](/images/effects/dropdown.jpg)

Start by opening your outliner

Make sure in **centimeters mode**. scale is very important in effects. (check **window->settings->preferences->Settings->Linear->centimeters**)

![Maya Image](/images/effects/setCentimeters.jpg)

Make sure also to set time slider playback speed to **play every frame** by 1 frame at a time. Max speed at 24 fps. Why do we do this? It's because particles need to use every frame to calculate the next position it's supposed to be in. Basically, a particle takes the position it's in the previous frame, and calculates it's current position according to it's speed and any acceleration that is applied on it.

First create an emitter. Remember to name your objects! Name the emitter 'rainEmitter' and name the particles 'rainParticles'

![Maya Image](/images/effects/particleMenu)

Set timeline to go up to 300 frames. Scrub the slider to see particles flying out.

![Maya Image](/images/effects/emitter.jpg)

Make sure it is omni-directional (notice that it just spreads out). to do this, switch to attribute editor

![Maya Image](/images/effects/emitType_Rate.jpg)

Try increasing the **rate of particles** and see how that looks like.

Play with settings if you want. The best way to learn about particles is to experiment with the settings!

Change emitter type to be **volume**. if you scroll down in the emitter attributes, you can change the volume emitter attributes. Let's make the volume shape a cube.

Let's scale it more to a rectangular prism shape. Increase scale accordingly. Scrub the slider to check the particle movement. 

<div class="note tip">A neat trick is that after you scale it up along y axis. you can scale the box outwards in the x and z axis together by holding control and click+dragging the y axis box. amazing!</div>

Also translate the emitter up, so that the particles will be coming from the sky.

Turn down **away from center** attribute.

Select rainParticle in outliner and click **fields->Gravity**. This gravity field also has a lot of attributes to mess with. If the droplets are not falling fast enough for you, increase magnitude.

![Maya Image](/images/effects/fallingParticles.jpg)

Scrub slider to see particles no longer fly outward, but are pulled down by the gravity field. amazing! you can turn up the magnitude in the attribute editor if you want the particles to fall faster.

Remember to reset the particles, start at frame 1.

Change particle shape. click on rainParticle, switch to attribute editor **(ctrl+a)**.

Click on rainParticleShape tab, scroll down to Render Attributes

Change **Particle Render Type** to **Streak**, then click **Current Render Type** button right under it. Change attributes accordingly.

![Maya Image](/images/effects/RenderParticleType.jpg)

Now we're going to make the rain hit the ground. First **make plane polygon (rename it ground)**.

Scale it so that it covers the area the rain falls through.

If you just press play now, the rain just goes through the plane.

![Maya Image](/images/effects/makeGround.jpg)

However, if you **FIRST select the rainParticles then also select the 'ground' plane, then go to Particles->Make Collide**.

![Maya Image](/images/effects/makeCollide.jpg)

If you play the scene now, we see that the particles bounce off the ground, maybe it's too bouncy though. The particles are acting more like bouncy balls than rain. So cool!

Select the 'ground' plane and we should see in the attribute editor a **geoConnector1** tab. If we select that and lower the **resilience** attribute, the ground will be less deflective of the particles. Adjust until the rainParticles don't bounce off the ground too much.

![Maya Image](/imges/effects/setResilience.jpg)

Our rain effect is almost complete. one last thing to do is add more fields to give particle movement more randomness. This part I will leave up to you to play around with. It's more fun that way. Make sure you select your rainParticle first before you create the field. If not and you've already created your field. you can select the particle object and the field you want affecting it and go to **Fields->'Affect Selected Object(s)'** and the field should now be affecting those particles.

## Extra for Experts

### Collision events
Collision events are basically scripts that run at the time a particle collides with another object.

Take the rain scene for example. Rain usually splatters into a few more droplets when it hits the ground.

![Maya Image](/images/effects/createParticleEvent.jpg)

So what we do is select our rainParticles and go to **Particles->'Particle Collision Event Editor'**.

Simply select emit as the emit type and adjust the **Num Particles** to about 2 or 3 then just create the event by clicking the **'Create Event'** button.

<div class="note tip">
1. make sure new particles are affected by gravity
2. make sure new particles collide with ground.
</div>

![Maya Image](/images/effects/createParticleEvent2.jpg)

Play the scene and watch how your particles are affected.

### Instancing
Another really neat thing particles can do is instance objects in their place. Maybe you happen to want to make it rain cat and dog models, or randomly shoot out a bunch of knives. The particle instancer is the way to go.

Here I am instancing teapots on the raindrops. 

![Maya Image](/images/effects/instancer.jpg)

Teapots galore!

First create or import your object into the scene. It can be anything really. When you are ready, **select your particle object** and go to **Particles->Instancer.**

This will create an instancer object attached to your particles. Now what you can do is **select your object that you want to instance** in place of your particles and **select your instancer second**.

There should be a **'Add Selection'** button in the attribute editor. Just click that and you're ready to go!

### Caching Particles
If you find yourself finalizing your particle movements and are annoyed of always reseting to frame 1 to see the animation at work, you can cache your particles.

Simply be in your dynamics Maya environment and select your particle objects, and go to **solvers->'cache particle disk cache'**.

What this will do is output a file that basically saves how your particles move from the frames you tell it to. Thus, Maya will not have to solve for particle movement every frame and have to be reset at frame 1.

By doing this, you can easily scrub through your particle animation!

![Maya Image](/images/effects/cacheParticles.jpg)

Also here's a rain example I did here. [rainTest.ma](/ma/rainTest.ma).

Awesome! Now you're a particles zen master!