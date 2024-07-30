name = "Bread"
id = "DEFAULT_BREAD"
author = "sharp(original from samplue)"
texture = "bread_cell.png"
updateIndex = 9001
-- level 2 awnser:
-- SC1;ewEAAB+LCAAAAAAAAAsBewGE/hsEAAAfiwgAAAAAAAALXZNLbsMwDEQvFBimbOoDrdI06CZpACNo0PtfpJwZZtPNe5RCjmQBKTatzbGUk62ABcayYbVhtcVqx2rHKtCBocpROaqKqqJqqBqqjqqjGqgGKltRBgM80ngmWMHY5tnGw0EnK9nAaOGFjDcCnaxke+84d5w7Pu+Pn+sxkRunzK/r9/U4Px/HjIDoslNZ+NELj5uX1/F4np8xURblhnkd9O3z8r9hO0U0bjc/juv5Ewcthr14TZC/x5uBHizkRu6ks9/Z7+x39vviM257/52YMk7ZfJ1vt/ya9UQPqUtNqhLyTcfE96Wq1KSuliHlqknoLFG97ek9vaVL2tKrPKQuNSmzMiqTMuidI/H7htSlJlXJpX3Jl6CKZJJSFKIMRShBAZrXeE6Ta9LIQm7kTjpZyUZ2cmgqhzVtGjfNmwJMCXxey1eWNmmXXKpSk7o0cvwdkzmWQZZJllGWWZZhlmmWcfiL1vkHWOV02xsEAACuge33ewEAAA==;;
function Push(this, dir, bias)
    if (bias >= 3) then
        this.Delete()
        
        this.EmitParticles(0.9, 0.5, 0.2)
        this.PlaySound("crash.wav")
        return {false, true}
    else
        return {false, false}
    end
end