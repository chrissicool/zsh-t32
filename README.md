T32 ZSH Plugin
==============

This is a ZSH plugin for the Lauterbach Trace32 toolset. It automatically
registers fonts and sets all necessary environment variables to run the t32
toolset. It also adjusts your PATH according to your operating system.

Preparation
-----------

Install the Lauterbach Trace32 tool. Default location (as per the documentation)
is `/opt/t32/`. But you may install it anywhere you like.

Do not forget to run the following command during the installation:

> $ sudo mkfontdir "$T32SYS/fonts"

Plugin Installation
-------------------

If you use [Antigen](http://antigen.sharats.me/ "Antigen plugin manager for ZSH"),
add the following line to your plugins list:

> antigen bundle chrissicool/zsh-t32

If you use [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh "OMZ manager for ZSH"),
add `zsh-t32` to your `plugins` list and clone this repository to your
`$ZSH_CUSTOM/plugins` directory:

> $ ( cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-t32 )

Plugin configuration
--------------------

Set the environment variable `T32SYS` in your `.zshrc` to the base directory of
the Lauterbach Trace32 installation, before loading the plugin. If it is unset,
it defaults to `/opt/t32/`.
