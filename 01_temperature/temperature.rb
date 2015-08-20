def ftoc (ftemp)
    return (ftemp - 32) * 5/9
end

def ctof (ctemp)
    return (ctemp.to_f*9 / (5) + 32)
end