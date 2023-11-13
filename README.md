# Serve it up, batch!

In all seriousness, this is a collection of super simple batch files that can run the current directory as a local server via python or php (named respectively).

## File(s) usage

To make use of either of these files, simply copy and paste it into whichever directory you would like to serve as a local server. Then, double click on the file (to run the batch file) - and voilà! You now have a local server running!

Don't want the file cluttering up your folder? Simply `cd` into the directory in terminal, and enter:

```
python -m http.server
```

...for a Python local server, or...

```
php -S localhost:8000
```

...for a PHP one.

## What's the difference?

In a lot of use cases, you won't see anything different between the two. However, in my experience, the Python local server more accurately shows file paths in the same way an actual server would; but the PHP one is needed if your website is actually built in PHP. So try both of them out, see what you like - both will serve your HTML and CSS just fine.

### What about v1.0 vs. v2.0?

v1.0 simply hosts the directory on a local server, v2.0 includes a prompt that allows user to trigger their default browser to the address of the local server. I decided to make this distinction simply because some of my projects include the v1.0 and I was confused as to why I wasn't being prompted to open my browser (wha wha whaaa).


**NOTES:**
- Both of these files should not be used in conjunction with NodeJS or other environments. You won't cause any damage, but it likely won't work as those environments include a 'build' process (which these do not do).
- The python variation requires python 3.x to be installed on your machine. If you have Python 2.x, it will require a different command (but is just as easily done)(maybe I'll add this later.?).
- The php version requires php 5.4 or greater to be installed on your machine.
