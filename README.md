# Mustache Renderer for your Textbundle

**USE THIS WITH PRECAUTION! At your own risk!**

I wrote this little command line so I can use Mustache inside my `text.md` which is used by (among other things) [Deckset](https://deckset.com).

The code really does `output.write(toFile: "text.md")`, so again, you are **WARNED**!

That being said, I love to just edit my `template.md`, use things like `{{>code01.md}}` and boom, the partial gets included.

With all the warnings, I still have to invoke `./mus` inside of the Bundle, where I put a copy of this command line tool, because I didn't want to spend more time for now to make this more of a general tool.

I'm also looking at the `info.json` which is most probably there with your Deckset textbundle and if it, I'm using any of the Keys there which you can render in {{mustache}}. Use it for things like Colors, transitions, and alike.
