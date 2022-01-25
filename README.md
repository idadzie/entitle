# entitle

entitle is a command-line program to get the title of a web page using its URL.

:shushing_face: It is seriously over-engineered.



## :luggage: Dependencies

It requires [xidel](https://github.com/benibela/xidel) to run. :heart_eyes:

You should also ensure you have [make](https://www.gnu.org/software/make) if you intend to use that installation option.



## :floppy_disk: Installation

### Using make (Recommended)

To install, clone this repository and run `make install`from the source tree.

```shell
# Clone this repository.
git clone https://github.com/idadzie/entitle.git

# Change directory to the source tree.
cd entitle

# Run make.
[sudo] make install
```

By default, entitle is installed under `/usr/local`. You can install it to a different location by specifying a `PREFIX` when calling make.

```shell
make install PREFIX=$HOME/.local
```



### Manually downloading the executable

To install it right away for all UNIX users (Linux, macOS, etc.), type:

```shell
sudo curl -L https://raw.githubusercontent.com/idadzie/entitle/main/bin/entitle -o /usr/local/bin/entitle
sudo chmod a+rx /usr/local/bin/entitle
```

If you do not have curl, you can alternatively use a recent wget:

```shell
sudo wget https://raw.githubusercontent.com/idadzie/entitle/main/bin/entitle -O /usr/local/bin/entitle
sudo chmod a+rx /usr/local/bin/entitle
```



## :rocket: How to use

```
Get web page title via URL.
Usage: /usr/local/bin/entitle [--(no-)squared] [-h|--help] <url>
	<url>: Web page URL
	--squared, --no-squared: Escape square brackets (off by default)
	-h, --help: Prints help
```

```shell
# For the exact title.
entitle https://www.youtube.com/watch\?v\=dQw4w9WgXcQ

# For markdown friend output.
# Really it's just escaping the square brackets in some titles.
entitle --squared https://www.youtube.com/watch\?v\=dQw4w9WgXcQ
```



## :sparkling_heart: Like this project ?

Leave a :star: If you think this project is cool.
