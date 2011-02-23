# Collaborating Using Dropbox

Before you can setup Dropox on the lab machines you'll need a Dropbox account. [Registration is easy and shouldn't take more than a minute](https://www.dropbox.com/register).

Download the [Dropbox client](https://www.dropbox.com/downloading?os=mac) and open the downloaded DMG. *DO NOT* drag the Dropbox application into the main Applications folder, as it will not work. Open Terminal and type the following in

    mkdir ~/Applications

Now drag the Dropbox application into the "Applications" folder **inside** your home directory

Go back to your terminal. Type

    ssh star.cs.berkeley.edu '/home/tmp/mkhometmpdir'
    ln -s /home/tmp/$USER ~/tmp
    
Now run the Dropbox application you copied into your Applications folders. Log in with your Dropbox account. One of the screens will give you the option to pick the placement of your Dropbox folder. Select the tmp folder inside your Home directory as press ok. 

After the installer finishes, you are good to go.
