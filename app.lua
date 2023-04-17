function string.split(inputstr, sep)
    sep = sep or "%s"
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

function isMatching(input, keywords, am)
    vanilla = string.split(input, ' ');
    i = 0;
    for num = 1, #keywords do
        for inum = 1, #vanilla do
            if (string.lower(vanilla[inum]) == string.lower(keywords[num])) then
                i = i + 1;
            end
        end
    end
    return i >= am;
end

print(isMatching('hello world', {'hello', 'world'}, 2))