function string.StartWith(_str, _startStr)
    return string.sub(_str, 1, string.len(_startStr)) == _startStr
end

function string.EndWith(_str, _endStr)
    return string.sub(_str, -string.len(_endStr)) == _endStr
end
