5784-08-20 An informative youtube video on music notation

---
tags: [music, reference]
...
## An informative youtube video on music notation
<div class="youtube-video-container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/Eq3bUFgEcb4?si=cIGRsSJmsKOiwB-1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>
%
5784-08-18 Revamping the blog as a tumbleblog

---
tags: [announcements, python]
...

## Let's revamp as a tumbleblog!

Hello!  If you've ever perused this site before, you'll recognize that it looks quite different.  I forked [John Bokma's wonderful tumblelog site generator](https://github.com/john-bokma/tumblelog) and just added a few personalizations on top to get it to where we're at now.

I'm really excited to use this site more, now that it's basically just a simple stream-of-consciousness microblog.

%
5784-07-01 An SVG based perspective projection renderer

---
tags: [svg, js, projection, art]
...

## An SVG based perspective projection renderer

![A 3488 tri SVG render of the Utah Teapot](
/photos/5784-render-1-1.svg)
A 3488 tri SVG render of the Utah Teapot.

Read more about [how I generated it here](/5784-render-1.html).

%
5783-03-29 An overview of what I hope to accomplish this summer.

---
tags: [art, linguistics, music, planning, summer]
...

## An overview of what I hope to accomplish this summer
Read [the full article here](/5783-summer-hope.html).

%
@about[about] 5784-08-18! About

## About

Hello! I'm Renée. I am an M.A. student in Linguistics, and I did my B.Sc. in Computer Science. I have an interest in music, art, and old technology as well. This blog is where I ramble about whatever silly projects I'm working on or interesting things I've learned.

%
@subscribe[subscribe] 5780-07-06 Subscribe
## Subscribe

This tumblelog has two feeds: an [RSS feed](/feed.rss) and a [JSON
feed](/feed.json). Thank you for subscribing!
%
@instruments[instruments] 5784-08-18! Instruments
## My Instruments and Synthesizers

### Analog Instruments

* Clarinet: Vito V40
* Bass Clarinet: Jupiter CBC-670
* Acoustic Guitar: Yamaha FG-Junior

### Electronic/Digital Instruments

* Piano: Casio CDP-120
* Guitar: Casio DG-10

### Synthesizers

* Wavetable Cart: Konami SCC (K051649)<br>[Link to Photo (402KB)](photos/rc759_cart.png)
* PSG/SSG Chip: General Instrument AY-3-8910A<br>[Link to Photo (609KB)](photos/ay38910a.png)

### Accessories

* Midi Controller: Nektar Impact GX-61
* Clarinet Mouthpiece: Vandoren 5JB

%
@systems[systems] 5784-08-18! Systems
## My Retro, Vintage, and Old Computers

### 8-bit Systems

* TRS 80 Model 100 (1983)
* Apple IIc (1984)
* Toshiba HX-21 PasopiaIQ (1984)
* NTS Dreamwriter 325 (1995?)

### 16-bit Systems

* Apple IIGS (1987)

### 32-bit Systems

* Sun Microsystems SPARCStation IPC (1990)
* IBM PS/1 Consultant (1992)
* MPC ClientPro 375 (2006?)

### 64-bit Systems

* Sun Microsystems Ultra 24 (2008)

%
@5784-render-1[5784-render-1] 5784-07-01! 5784-render-1
## An SVG based perspective projection renderer.

The following image is an SVG render of the 3488 tri version of the Utah Teapot (538KB).

![A 3488 tri SVG render of the Utah Teapot](photos/5784-render-1-1.svg)
You can [see the render of the more detailed 19480 tri teapot here (3MB)](photos/5784-render-1-0.svg).

At the very least this means I didn't spend my summer doing nothing!  I accomplished one (1) goal from my last post here!

### Background and References

I'm not super knowledgeable in the field of computer graphics.  My (possibly incorrect) understanding of the Z-buffering/Z-culling algorithms is that they require pixels.  Since we're in vector-land, we can't use it!  The naive solution would be to use the Painter's algorithm, but that algorithm has a lot of problems.  Luckily, a solution which solves many of those issues was published in 1972.  Newell, M. E., Newell, R. G., and Sancha, T. L. proposed a solution to the hidden surface problem, which you can view at [https://doi.org/10.1145/800193.569954](https://doi.org/10.1145/800193.569954).

Could I have used literally any other algorithm?  Probably, but I didn't spend that much time researching before diving in.  After I spent a few hours debugging it, I'm astounded by what I'm seeing.

### Efficiency and Unimplemented Culling

I am not currently implementing viewing-frustum culling or back-face culling.  This means there are some lovely visual artifacts if the camera isn't entirely outside of the object being rendered, and the render probably takes twice as long because every single face is in that SVG!

The 3488 tri teapot takes ~130ms to render, while the 19480 tri teapot takes ~1477ms to render. (Intel Core i5-10500).

### It's a work in progress

I'd be too embarrassed to display the code behind this renderer online, so I'm going to take some time to clean it up before I even think about publishing it to GitHub.

Besides, it currently can only open the custom filetype I developed for easily storing faces; it does not in fact fully implement Newell's Algorithm because I skipped out on getting face splitting to work properly; and shading is at the bare minimum.  I guess stay tuned because I'll probably keep working on this.

%
@5783-summer-hope[5783-summer-hope] 5783-03-29! 5783-summer-hope
## An overview of what I hope to accomplish this summer.

<p>Give it up for day 38 of the summer academic recess!  This is my first summer where I don't have an internship or assistantship lined up, leaving me somewhat understimulated.  (And the part-time cashier job I have does little to boost my morale.)  Since I have all of this time to spend on anything I want, I figured it would help to try and plan things out rather than chaotically spiral into the infinite.</p>
          <p>One way I can start out is by taking some cues from the world of teaching: What are the Learning Outcomes I want from this self-directed study?</p>
          <ul>
            <li>Music SLOs<ul>
              <li>Express musical ideas more efficiently.</li>
              <li>Employ stylistic conventions of different music genres.</li>
            </ul></li>
            <li>Drawing SLOs<ul>
              <li>Contextualize drawing as a projection from 3d to a 2d plane.</li>
              <li>Explore shading and lightness values.</li>
            </ul></li>
            <li>Programming SLOs<ul>
              <li>Solve real-world problems.</li>
            </ul></li>
            <li>Linguistics SLOs<ul>
              <li>Prepare for Master's Comprehensive Examination.</li>
            </ul></li>
          </ul>
          <p>From these Learning Outcomes, I have pieced together a few projects I can work on this summer.</p>
          <h2>Overarching Projects</h2>
          <h3>1. One-hundred Days of Improvement</h3>
          <p>This project is designed to inspire fearless experimentation.  The goal for each day is to make a quick drawing and a quick musical fragment which vaguely connect with each other, due at the end of the day.  I want to keep that deadline non-negotiable, but in a low-stress way.  Going over deadlines and creating a backlog of work sounds horrific.  If I'm not feeling it on a given day, then I'll treat it like an Any% speedrun.  Grey canvas with a lopsided, unshaded, wireframe cube and a 1 second recording of an A#m7 square-wave chord.  Minimum viable product achieved!</p>
          <h4>Music Rationale and Expectations</h4>
          <p>I have so many musical ideas living in my brain, but I struggle with getting them out.  My current process involves singing the ideas to myself while painfully transcribing it via MuseScore's clunky interface.  Then, taking the MuseScore staff and transcribing it again into MML to play on my MSX synth.  That's horribly inefficient.  My goal with this rapid music writing experiment is to learn MML so that I can transcribe directly from my brain into my synthesizer, cutting out the intermediary steps.</p>
          <p>One aspect of music I am interested in exploring is drums/percussion.  I just presumed that myself on piano was sufficient for covering any rhythm-y things for my own musical purposes.  As I have learned, that's not quite enough.  So, seeing what sort of rhythmic things I can do with my synth could be fun to explore this summer!</p>
          <p>Finally, musical genres.  What are they?  I will admit that the number of genres I am familiar with is low.  I should really branch out.  So, that's exactly what I'm going to do.</p>
          <h4>Drawing Rationale and Expectations</h4>
          <p>I'm pretty "okay" at 2d pixel art, can make passable attempts at drawing cartoon humans (with plenty of references to work from), and can draw things isometrically without the proportions of things being too off.  Perspective drawing is somewhat elusive to me.  How do you handle diagonals and curves?  I'm hoping that I'll be able to intuit those and more through forcing myself to make drawings of 3d objects this summer.</p>
          <p>Shading pairs nicely with 3d objects, seeing as it's that extra flair thrown on top of a wireframe to further emphasize the 3d effect.</p>
          <h3>2. Perspective Projection SVG Renderer</h3>
          <p>If perspective remains elusive, then I guess I'll have to reference my way out of having to do it.  And what better reference is there than one you can generate yourself?  And why bother learning the monolith that is Blender, if you can just invent your own CAD-like language for quickly creating 3d objects?  That is exactly what I'm going to do with this project.</p>
          <p>I like the idea of rendering out to SVG over raster because it would allow me to scale my references and not worry about lines becoming too small or too pixelated.  This also theoretically would allow me to mix hand drawn 2d vector drawings with these projected 3d objects for a multimedia approach to getting the art that I crave.</p>
          <p>However, building a renderer or projector from scratch involves a huge amount of math and identifying important computer graphics algorithms.  Layering, overlapping, intersections, normals - that seems like it'll be a bit of a challenge to do all on my own.  I'm confident that I can at least get a wirefrme minimum viable product, though.</p>
          <p>Either way, I'll be ending this summer with a way to present 3d objects in a 2d plane!</p>
          <h3>3. MML Transpiler and Language Extensions</h3>
          <p>MML has a variety of dialects which are somewhat intelligible, but differ when it comes to more advanced functionality.  My synth uses the MuSICA dialect of MML, while on my laptop I have software which uses the 3MLE dialect of MML.  The goal with this project is to unify the two through a third dialect that is either intelligible with both or can be transpiled into the two.  I don't expect to get too fancy with this.  3MLE already has a pianoroll visualizer - so even if I'm only composing for my synth, I would be able to export it to 3MLE for visual inspection if I wanted to see the pianoroll.</p>
          <p>I see this project as being a lot less involved than project #2.  I just have to document both dialects, figure out how I want to represent areas where the dialects differ, and convert between the three.  Complicated math probably not required.</p>
          <h2>What about linguistics?</h2>
          <p>Studying for the Master's Comprehensive Exam isn't going to be a "fun" ordeal, so I haven't bothered trying to turn it into a project.  I just need to sit down and read the assigned readings.</p>
          <h2>Conclusion</h2>
          <p>There are 58 days left in the summer.  That isn't a lot of time, but it's the time I have before I start Fall classes.  Have as good of a Summer as you can, and I'll see you in my post-summer reflection, if not earlier!</p>
%
