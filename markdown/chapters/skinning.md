# Skinning in Maya

Today we are going to be skinning a leg. Before getring started, download the [leg rig](/ma/legs.ma) to the `scenes` directory in your current Maya project.

## What is skinning?

Skinning involves connectng a skeleton to the geometry of a character. We will be doing this by painting influences on the geometry. Influence on a vertex is the amount the vertex is controlled by a specific bone. Influence = 1 means that the vertex will follow the manipulation of that bone exactly and influence = 0 means the vertex is not affected. The values between 0 and 1 will be some interpolation between full and no influence.



Originally written by Megan Marquardt
