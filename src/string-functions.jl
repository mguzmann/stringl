## case functions. These are simple renames for consistency only

str_to_upper(str::AbstractString) = uppercase(str)
str_to_lower(str::AbstractString) = lowercase(str)
str_to_title(str::AbstractString) = titlecase(str)
str_to_fupper(str::AbstractString) = ucfirst(str)
str_to_flower(str::AbstractString) = lcfirst(str)

## lenght

str_length(str::AbstractString) = length(str)

## detect functions

str_detect(data::AbstractString, rx::Regex)::Bool = 
    ismatch(rx, data)
str_detect(data::AbstractString, rx::AbstractString)::Bool = 
    ismatch(Regex(rx), data)

## concatenation

str_c(data::Array{AbstractString}) = ""

## counting
## issues: matchall(r"", "hola") gives 5 instead of 4

str_count(data::AbstractString, rx::Regex) =
    length(matchall(rx, data))
str_count(data::AbstractString, rx::AbstractString) =
    str_count(data, Regex(rx))

## replace

str_replace(data::AbstractString, rx::Regex, repl::AbstractString) =
    replace(data, rx, repl, 1)
str_replace(data::AbstractString, rx::AbstractString, repl::String) =
    str_replace(data, Regex(rx), repl)
str_replace_all(data::AbstractString,
                rx::Regex,
                repl::AbstractString) =
                    replace(data, rx, repl)
str_replace_all(data::AbstractString,
                rx::AbstractString,
                repl::String) =
                    str_replace_all(data, Regex(rx), repl)
