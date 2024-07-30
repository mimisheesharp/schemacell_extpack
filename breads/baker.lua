name = "Baker"
id = "BAKER"
author = "sharp"
texture = "baker.png"
updateIndex = 9001
-- level 2 awnser:
-- SC1;ewEAAB+LCAAAAAAAAAsBewGE/hsEAAAfiwgAAAAAAAALXZNLbsMwDEQvFBimbOoDrdI06CZpACNo0PtfpJwZZtPNe5RCjmQBKTatzbGUk62ABcayYbVhtcVqx2rHKtCBocpROaqKqqJqqBqqjqqjGqgGKltRBgM80ngmWMHY5tnGw0EnK9nAaOGFjDcCnaxke+84d5w7Pu+Pn+sxkRunzK/r9/U4Px/HjIDoslNZ+NELj5uX1/F4np8xURblhnkd9O3z8r9hO0U0bjc/juv5Ewcthr14TZC/x5uBHizkRu6ks9/Z7+x39vviM257/52YMk7ZfJ1vt/ya9UQPqUtNqhLyTcfE96Wq1KSuliHlqknoLFG97ek9vaVL2tKrPKQuNSmzMiqTMuidI/H7htSlJlXJpX3Jl6CKZJJSFKIMRShBAZrXeE6Ta9LIQm7kTjpZyUZ2cmgqhzVtGjfNmwJMCXxey1eWNmmXXKpSk7o0cvwdkzmWQZZJllGWWZZhlmmWcfiL1vkHWOV02xsEAACuge33ewEAAA==;;
function Start(this)
    this.data.baketg = false ;
end


function Push(this, dir ,bias)
    
    local thisdir = this.direction

    if this.GetCell(thisdir, 1).name == "EMPTY" then

        if this.GetCell(thisdir+2, 1).name == "BREAD" 
        or this.GetCell(thisdir+2, 1).name == "DEFAULT_BREAD" 
        or this.GetCell(thisdir+2, 1).name == "PUSHABLE_BREAD" then
            
            local by_cell = this.GetCell(thisdir+2, 1).direction
            
            if this.GetCell(thisdir+2, 1).name == "PUSHABLE_BREAD" then
                this.ChangeTexture("baker_on.png")
                if thisdir == 0 then
                    grid.CreateCell("PUSHABLE_TOAST", this.x+1, this.y, by_cell)
                elseif thisdir == 1 then
                    grid.CreateCell("PUSHABLE_TOAST", this.x, this.y-1, by_cell)
                elseif thisdir == 2 then
                    grid.CreateCell("PUSHABLE_TOAST", this.x-1, this.y, by_cell)
                elseif thisdir == 3 then
                    grid.CreateCell("PUSHABLE_BREAD", this.x, this.y+1, by_cell)
                end
                this.PlaySound("bake.wav")
                this.data.baketg = true
            else 
                this.ChangeTexture("baker_on.png")
                if thisdir == 0 then
                    grid.CreateCell("TOAST", this.x+1, this.y, by_cell)
                elseif thisdir == 1 then
                    grid.CreateCell("TOAST", this.x, this.y-1, by_cell)
                elseif thisdir == 2 then
                    grid.CreateCell("TOAST", this.x-1, this.y, by_cell)
                elseif thisdir == 3 then
                    grid.CreateCell("TOAST", this.x, this.y+1, by_cell)
                end
                this.PlaySound("bake.wav")
                this.data.baketg = true
            end
            this.GetCell(thisdir+2, 1).Delete()
            
        end
    else
        if this.GetCell(thisdir+2, 1).name == "BREAD" 
        or this.GetCell(thisdir+2, 1).name == "DEFAULT_BREAD" 
        or this.GetCell(thisdir+2, 1).name == "PUSHABLE_BREAD" then
        this.GetCell(thisdir, 1).Push(0, 1)
        end
    end
    return { false, false }
end

function Step(this)
    if this.data.baketg == true then
        this.ChangeTexture("baker.png")
        this.data.baketg = false;
    end
end