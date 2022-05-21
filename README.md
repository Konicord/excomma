# Excomma
Convert any number to the european style format with ease. 

> ### 🦹🏾‍♀️ Get started

Open your terminal and run the following commands (within mix project)
```
$ mix deps.get

$ iex -S mix 

iex> Excomma.parse("example here")
```


> #### 🙆🏾‍♂️ Examples
```
iex> Excomma.parse("61,55")
{:ok, 61.55}

iex> Excomma.parse("61.55")
{:error, "expected end of string", ".55"}
```
 [Library used](https://github.com/dashbitco/nimble_parsec) + [Docs](https://hexdocs.pm/nimble_parsec/NimbleParsec.html)