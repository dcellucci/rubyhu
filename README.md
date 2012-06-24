# Rubyhu

Rubyhu watches what you do and takes notes. But in ruby. 

I like python, but I like ruby more. I also like [scottjacksonx](https://github.com/scottjacksonx)'s [hu project](https://github.com/scottjacksonx/hu), so I decided to rewrite it in ruby and post it up here for everyone.

## Installation

Add this line to your application's Gemfile:

    gem 'rubyhu'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubyhu

## Usage

Now that you mention it, yes, there's two things you can do right now with *Rubyhu*. You can run it like a champ by typing the `rubyhu snap` command in your terminal, or you can download the source and add some plugins. Don't be shy. It's easier than it looks, and any additional functionality would be awesome.

There are two commands right now. 

1. `rubyhu snap` will use every installed plugin it has to collect information about the current state of your machine. Temperature, power, current windows, current tabs. You name it. 
2. `rubyhu note [subject] [body]` takes two strings and creates a file in the `notes` directory with the name `[subject].txt` (*NB:* if you already have a note with that name, there will be a dialog asking if you want to overwrite. See the wishlist for more details.)

If you just want to capture basic information, you can stop here. If you are interested in making rubyhu better (and who isn't?), keep reading to find out…

###How to add plugins

After you've forked, head over to the `lib/plugins` directory. There should be a couple of `.rb` files already there. 

Make a new `.rb` file of your own, or copy over one that already exists. Give it a nice, strong name, like William or Frederick (Typically, plugins start with `hu_`, but you can use any filename that works).

So a plugin named `Hu_ExamplePlugin` looks alot like this:

```ruby
module Rubyhu
    class Hu_ExamplePlugin < Hu_Plugin
        def self.get_data
           #Your code
        end
    end
end
```

Take note of three big things: our plugin is part of the module `Rubyhu`, it extends `HuPlugin`, and it has the method `self.get_data`. All three of those are necessary. Everything else is up to you. Especially that part that says 'Your code'. You can go hog-wild in there.  

Once you're done, your plugin will be added to the group just by being a part of the list. Run `rubyhu snap` and see if your output is there. 

## Wishlist

**A plugin install feature:** Wouldn't that be dreamy? You type

    $ rubuhu install plugin_name

and it adds your very own plugin, no problemo. That doesn't happen right now, but it should! 

**Note Update:** What are we sending, an email? What's up with that subject line? It should be a timestamp, that way there is no chance of accidentally overwriting a previous note. 

And finally….
**More Plugins!** I mean, that's what Hu is all about:

> *I can interface with anything! I'm infinitely extensible...*

So hop on it! You can do plugins for the weather, for music, for anything you want. Stay tuned for more examples projects, and use them to kickstart your own ideas.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
