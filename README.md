# JrubyZemberek

This is a gem for making it easy to call Zemberek 2.x NLP library functions from JRuby.

* [Zemberek 2 Javadoc](http://dev.gentoo.org/~serkan/zemberek-javadoc/overview-summary.html)
* [Zemberek 2 Kütüphanesi](http://code.google.com/p/zemberek/downloads/list?can=3&q=&colspec=Filename+Summary+Uploaded+ReleaseDate+Size+DownloadCount)
* [JRuby'den Java Erişimi](https://github.com/jruby/jruby/wiki/CallingJavaFromJRuby)
* [Zemberek 3 Kütüphanesi](http://code.google.com/p/zemberek3/)
* [Github'da Zemberek NLP](https://github.com/ahmetaa)
* [Zemberek NLP Hakkinda](http://zembereknlp.blogspot.com.tr/2013/12/zemberek-nlp-090.html)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jruby_zemberek'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jruby_zemberek

## Usage

```ruby
    require "jruby_zemberek"
    jz= JrubyZemberek.new
    p jz.metin_cozumle "dünyaya merhaba diyor"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jruby_zemberek/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
