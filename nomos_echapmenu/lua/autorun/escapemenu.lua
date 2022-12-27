AddCSLuaFile()

local blur = Material("pp/blurscreen")

local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface.SetDrawColor(255, 255, 255)
    surface.SetMaterial(blur)
    for i = 1, 3 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end


surface.CreateFont("Admin.Font",{

    font = "Roboto",
    size = 25,
    weight = 800,

})

    Escape = Escape or {}
    Escape.Menu = {}

    Escape.Menu.Menu = Base
    function Escape.Menu:OpenMenu()

    if IsValid(Escape.Menu.menu) then return end

    Escape.Menu.menu = vgui.Create("DPanel")

    Escape.Menu.menu:SetPos(0,0)

    Escape.Menu.menu:SetSize(ScrW(),ScrH())

    Escape.Menu.menu:SetAlpha(0)

    Escape.Menu.menu:AlphaTo(255,0.3)

    Escape.Menu.menu:MakePopup()

    Escape.Menu.menu.Paint = function(self,w,h)

        if not gui.IsGameUIVisible() then

            Escape.Menu.RemoveMenu()

            return

        end

        render.RenderView()

        DrawBlur(self,5)

        surface.SetDrawColor(0,0,0,150)

        surface.DrawRect(0,0,w,h)

    end
 
        local logo = vgui.Create( "DImage", Escape.Menu.menu )
        logo:SetSize( 300, 300 )
        logo:SetPos( ScrW() / 2.5 , ScrH() / 20)
        logo:SetImage( "petit_nomos.png" )



      local ingame = vgui.Create("DButton", Escape.Menu.menu)
            ingame:SetSize(180, 40)
            ingame:SetPos((Escape.Menu.menu:GetWide()/2)-(logo:GetWide()/2), ScrH() / 2.6)
            ingame:SetText("")
            ingame:SetTextColor(Color(0, 0, 0, 255))

            ingame.Paint = function(self, w, h)
                    if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Retourner en jeux","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)  

end

            ingame.DoClick = function()

Escape.Menu.RemoveMenu()
     

  end
 

      local menuprincipal = vgui.Create("DButton", Escape.Menu.menu)
            menuprincipal:SetSize(180, 40)
            menuprincipal:SetPos((Escape.Menu.menu:GetWide()/2)-(logo:GetWide()/2), ScrH() / 2.3)
            menuprincipal:SetText("")
            menuprincipal:SetTextColor(Color(0, 0, 0, 255))

            menuprincipal.Paint = function(self, w, h)
             if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Menu Principal","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)  
end

            menuprincipal.DoClick = function()

            Escape.Menu.menu:Remove()


  end


    local Options = vgui.Create("DButton", Escape.Menu.menu)
            Options:SetSize(180, 40)
            Options:SetPos((Escape.Menu.menu:GetWide()/2)-(logo:GetWide()/2), ScrH() / 2.07)
            Options:SetText("")
            Options:SetTextColor(Color(0, 0, 0, 255))

            Options.Paint = function(self, w, h)
                    if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Options","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)  

end

            Options.DoClick = function()

            RunConsoleCommand( "gamemenucommand", "openoptionsdialog" )


  end

   local Console = vgui.Create("DButton", Escape.Menu.menu)
            Console:SetSize(180, 40)
            Console:SetPos((Escape.Menu.menu:GetWide()/2)-(logo:GetWide()/2), ScrH() / 1.88)
            Console:SetText("")
            Console:SetTextColor(Color(0, 0, 0, 255))

            Console.Paint = function(self, w, h)
                 if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Console","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)  

end
            Console.DoClick = function()

RunConsoleCommand("showconsole")

  end


   local deconect = vgui.Create("DButton", Escape.Menu.menu)
            deconect:SetSize(180, 40)
            deconect:SetPos((Escape.Menu.menu:GetWide()/2)-(logo:GetWide()/2), ScrH() / 1.72)
            deconect:SetText("")
            deconect:SetTextColor(Color(0, 0, 0, 255))

            deconect.Paint = function(self, w, h)
            if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Se déconnecter","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)            end

            deconect.DoClick = function()

RunConsoleCommand("disconnect")

  end

  local workshop = vgui.Create("DButton", Escape.Menu.menu)
            workshop:SetSize(150, 40)
            workshop:SetPos((Escape.Menu.menu:GetWide()/10)-(logo:GetWide()/2), ScrH() / 1.1)
            workshop:SetText("")
            workshop:SetTextColor(Color(0, 0, 0, 255))

            workshop.Paint = function(self, w, h)
                   if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Workshop","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)
            end

            workshop.DoClick = function()

            notification.AddLegacy( "Url Copié !", NOTIFY_UNDO, 2 )
surface.PlaySound( "buttons/button15.wav" )
                gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=1632022837")
                                                                SetClipboardText( "https://steamcommunity.com/sharedfiles/filedetails/?id=1632022837" )
  end


  local site = vgui.Create("DButton", Escape.Menu.menu)
            site:SetSize(150, 40)
            site:SetPos((Escape.Menu.menu:GetWide()/2)-(logo:GetWide()/2), ScrH() / 1.1)
            site:SetText("")
            site:SetTextColor(Color(0, 0, 0, 255))

            site.Paint = function(self, w, h)
            if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Site","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)
            end

            site.DoClick = function()

            notification.AddLegacy( "Url Copié !", NOTIFY_UNDO, 2 )
surface.PlaySound( "buttons/button15.wav" )
                gui.OpenURL("https://nomos-roleplay.fr/")
                                                                SetClipboardText( "https://nomos-roleplay.fr/" )
  end



  local discord = vgui.Create("DButton", Escape.Menu.menu)
            discord:SetSize(150, 40)
            discord:SetPos((Escape.Menu.menu:GetWide() / 1.05)-(logo:GetWide()/2), ScrH() / 1.1)
            discord:SetText("")
            discord:SetTextColor(Color(0, 0, 0, 255))

            discord.Paint = function(self, w, h)
       if self:IsHovered() then       
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Discord","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)
            end

            discord.DoClick = function()

            notification.AddLegacy( "Url Copié !", NOTIFY_UNDO, 2 )
surface.PlaySound( "buttons/button15.wav" )
                gui.OpenURL("https://discord.gg/BM6FFAq")
                                                                SetClipboardText( "https://discord.gg/BM6FFAq" )
  end

end            




local closing = false

function Escape.Menu.RemoveMenu()

    if closing then return end

    if IsValid(Escape.Menu.menu) then

        closing = true

        Escape.Menu.menu:AlphaTo(0, 0.3, 0, function()

            Escape.Menu.menu:Remove()

            closing = false

        end)

    end

    gui.HideGameUI()

end


        Escape.Menu.StillFrames = 0

function Escape.Menu.PreventGameMenu()

    if gui.IsGameUIVisible() then

        Escape.Menu.StillFrames = 1

    end

end



hook.Add("PostRenderVGUI", "!EscFix", function()

    if Escape.Menu.StillFrames > 0 then

        --render.DrawTextureToScreen("_rt_fullscreen")

        render.DrawTextureToScreen("_rt_fullframefb")

        Escape.Menu.StillFrames = Escape.Menu.StillFrames - 1

    end

end)



local wasPressed = input.IsKeyDown(KEY_ESCAPE)

hook.Add("PreRender", "!EscFix", function()

    if input.IsKeyDown(KEY_ESCAPE) and gui.IsGameUIVisible() and not wasPressed then

        Escape.Menu.PreventGameMenu()



        if not IsValid(Escape.Menu.menu) then

            Escape.Menu:OpenMenu()


            if gui.IsConsoleVisible() then

                RunConsoleCommand("hideconsole")

            end

        else

            Escape.Menu.RemoveMenu()

        end

    end



    wasPressed = input.IsKeyDown(KEY_ESCAPE)

end)


--[[ 
hook.Add("VGUIMousePressed", "!EscFix", function(panel, code)

    if panel == Escape.Menu.menu then

        Escape.Menu.RemoveMenu()

    end

end)
--]] 