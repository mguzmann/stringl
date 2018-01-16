str_find(data::Array{String, 1}, rx::Regex)::Array{String, 1} =
    filter(x->str_detect(x, rx), data)
str_find(data::Array{String, 1}, rx::String)::Array{String, 1} =
    filter(x->str_detect(x, Regex(rx)), data)
