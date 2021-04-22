
include("autorun/alert_lang.lua")
local function ShowError()
    local DRKNAW_ALERT_BLUR = true
    local blur = Material 'pp/blurscreen' function drawBlur( pan, amt ) local x, y = pan:LocalToScreen( 0, 0 ) surface.SetDrawColor( 255, 255, 255 ) surface.SetMaterial( blur ) for i = 1, 3 do blur:SetFloat( '$blur', ( i / 3 ) * ( amt or 6 ) ) blur:Recompute(  ) render.UpdateScreenEffectTexture(  ) surface.DrawTexturedRect( x * -1, y * -1, ScrW(), ScrH() ) end end
    local frame = vgui.Create( "DFrame")
        frame:SetSize(800,360)
        frame:MakePopup()
        frame:Center()
        frame:SetDraggable(false)
        frame:ShowCloseButton(false)
        frame:SetTitle(" ")
        frame.Paint = function(self, w, h)
     drawBlur(self, 2) 
    if DRKNAW_ALERT_BLUR == true then
     Derma_DrawBackgroundBlur(self, 255)
     end
     draw.RoundedBox(10,(800/2)-(700/2),40,700 , 100, Color(25, 25, 25, 200) )
        draw.RoundedBox(20,0,0,w , h, Color(25, 25, 25, 220) )
        draw.RoundedBox(0,0,0,w , h / 15, Color(255, 25, 25) )
        end
        local closeButton = vgui.Create("DButton" , frame)
        closeButton:SetPos(774,0)
        closeButton:SetSize(26,26)
        closeButton:SetText("X")
        closeButton:SetFont("GModToolHelp")
        closeButton:SetTextColor(Color(255, 255, 255))
        closeButton.DoClick = function()
        frame:Close()
        end
        closeButton.Paint = function(s , w , h)
        if closeButton:IsHovered() then
            draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
            
        end
        end
        closeButton.OnCursorEntered = function()
        surface.PlaySound("UI/buttonrollover.wav")
        end
        local Title = vgui.Create( "DLabel", frame )
        Title:SetPos( 10, 4 )
        Title:SetSize(300, 20)
        Title:SetText(DRKNAW_ALERT_TITLE_ERROR)
        Title:SetFont("GModToolHelp")
        local DLabel = vgui.Create( "DLabel", frame )
        DLabel:SetPos( (800/2)-(700/2)+10, 40 )
        DLabel:SetSize(700, 100)
        DLabel:SetText(DRKNAW_ALERT_TEXT_ERROR)
        DLabel:SetTextColor(Color(255, 255, 255))
        DLabel:SetFont("GModToolSubtitle")
        
local DermaButton1 = vgui.Create( "DButton", frame ) 
DermaButton1:SetText(DRKNAW_ALERT_TEXT_HAVE_CSS)		
DermaButton1:SetFont("GModToolHelp")
DermaButton1:SetTextColor(Color(255, 255, 255))			
DermaButton1:SetPos( (800/2)-(500/2), 500/3 )					
DermaButton1:SetSize( 500, 50 )			
DermaButton1.Paint = function(s , w , h)
	if DermaButton1:IsHovered() then
		draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
        else
		draw.RoundedBox(0,0,0,w , h, Color(51, 51, 51) )
	end
	end		
DermaButton1.OnCursorEntered = function()
	surface.PlaySound("UI/buttonrollover.wav")
	end
DermaButton1.DoClick = function()	
    frame:Close()			
    local blur = Material 'pp/blurscreen' function drawBlur( pan, amt ) local x, y = pan:LocalToScreen( 0, 0 ) surface.SetDrawColor( 255, 255, 255 ) surface.SetMaterial( blur ) for i = 1, 3 do blur:SetFloat( '$blur', ( i / 3 ) * ( amt or 6 ) ) blur:Recompute(  ) render.UpdateScreenEffectTexture(  ) surface.DrawTexturedRect( x * -1, y * -1, ScrW(), ScrH() ) end end
    local FrameHaveCSS = vgui.Create( "DFrame")
        FrameHaveCSS:SetSize(800,400)
        FrameHaveCSS:MakePopup()
        FrameHaveCSS:Center()
        FrameHaveCSS:SetDraggable(false)
        FrameHaveCSS:ShowCloseButton(false)
        FrameHaveCSS:SetTitle(" ")
        FrameHaveCSS.Paint = function(self, w, h)
     drawBlur(self, 2) 
    if DRKNAW_ALERT_BLUR == true then
     Derma_DrawBackgroundBlur(self, 255)
     end
     draw.RoundedBox(10,(800/2)-(700/2),60,700, 200, Color(255, 255, 255, 200) )
        draw.RoundedBox(20,0,0,w , h, Color(25, 25, 25, 220) )
        draw.RoundedBox(0,0,0,w , h / 15, Color(0, 129, 17) )
        end
        local closeButton = vgui.Create("DButton" , FrameHaveCSS)
        closeButton:SetPos(774,0)
        closeButton:SetSize(26,26)
        closeButton:SetText("X")
        closeButton:SetFont("GModToolHelp")
        closeButton:SetTextColor(Color(255, 255, 255))
        closeButton.DoClick = function()
        FrameHaveCSS:Close()
        end
        closeButton.Paint = function(s , w , h)
        if closeButton:IsHovered() then
            draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
            
        end
        end
        closeButton.OnCursorEntered = function()
        surface.PlaySound("UI/buttonrollover.wav")
        end
        local Title = vgui.Create( "DLabel", FrameHaveCSS )
        Title:SetPos( 10, 4 )
        Title:SetSize(300, 20)
        Title:SetText( DRKNAW_ALERT_TITLE_HAVE_CSS )
        Title:SetFont("GModToolHelp")
        local DLabel = vgui.Create( "DLabel", FrameHaveCSS )
        DLabel:SetPos( (800/2)-(700/2)+10, 70 )
        DLabel:SetSize(700, 150)
        DLabel:SetText(DRKNAW_ALERT_TEXT_HAVE_CSS_INSTRU)
        DLabel:SetTextColor(Color(255, 255, 255))
        DLabel:SetFont("GModToolSubtitle")
        
local DermaButton1 = vgui.Create( "DButton", FrameHaveCSS ) 
DermaButton1:SetText(DRKNAW_ALERT_TEXT_ALRIGHT)		
DermaButton1:SetFont("GModToolHelp")
DermaButton1:SetTextColor(Color(255, 255, 255))			
DermaButton1:SetPos( (800/2)-(500/2), 400/2 + 100 )					
DermaButton1:SetSize( 500, 50 )			
DermaButton1.Paint = function(s , w , h)
	if DermaButton1:IsHovered() then
		draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
        else
		draw.RoundedBox(0,0,0,w , h, Color(51, 51, 51) )
	end
	end		
DermaButton1.OnCursorEntered = function()
	surface.PlaySound("UI/buttonrollover.wav")
	end
DermaButton1.DoClick = function()				
    RunConsoleCommand( "disconnect")
end
end
local DermaButton2 = vgui.Create( "DButton", frame ) 
DermaButton2:SetText(DRKNAW_ALERT_TEXT_DWB_CSS)		
DermaButton2:SetFont("GModToolHelp")
DermaButton2:SetTextColor(Color(255, 255, 255))			
DermaButton2:SetPos( (800/2)-(500/2), 500/3 + 60 )					
DermaButton2:SetSize( 500, 50 )			
DermaButton2.Paint = function(s , w , h)
	if DermaButton2:IsHovered() then
		draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
        else
		draw.RoundedBox(0,0,0,w , h, Color(51, 51, 51) )
	end
	end		
DermaButton2.OnCursorEntered = function()
	surface.PlaySound("UI/buttonrollover.wav")
	end
DermaButton2.DoClick = function()				
    frame:Close()			
    local blur = Material 'pp/blurscreen' function drawBlur( pan, amt ) local x, y = pan:LocalToScreen( 0, 0 ) surface.SetDrawColor( 255, 255, 255 ) surface.SetMaterial( blur ) for i = 1, 3 do blur:SetFloat( '$blur', ( i / 3 ) * ( amt or 6 ) ) blur:Recompute(  ) render.UpdateScreenEffectTexture(  ) surface.DrawTexturedRect( x * -1, y * -1, ScrW(), ScrH() ) end end
    local FrameDHaveCSS = vgui.Create( "DFrame")
        FrameDHaveCSS:SetSize(800,400)
        FrameDHaveCSS:MakePopup()
        FrameDHaveCSS:Center()
        FrameDHaveCSS:SetDraggable(false)
        FrameDHaveCSS:ShowCloseButton(false)
        FrameDHaveCSS:SetTitle(" ")
        FrameDHaveCSS.Paint = function(self, w, h)
     drawBlur(self, 2) 
    if DRKNAW_ALERT_BLUR == true then
     Derma_DrawBackgroundBlur(self, 255)
     end
     draw.RoundedBox(10,(800/2)-(700/2),60,700, 200, Color(75, 75, 75, 200) )
        draw.RoundedBox(20,0,0,w , h, Color(25, 25, 25, 238) )
        draw.RoundedBox(0,0,0,w , h / 15, Color(0, 129, 17) )
        end
        local closeButton = vgui.Create("DButton" , FrameDHaveCSS)
        closeButton:SetPos(774,0)
        closeButton:SetSize(26,26)
        closeButton:SetText("X")
        closeButton:SetFont("GModToolHelp")
        closeButton:SetTextColor(Color(255, 255, 255))
        closeButton.DoClick = function()
        FrameDHaveCSS:Close()
        end
        closeButton.Paint = function(s , w , h)
        if closeButton:IsHovered() then
            draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
            
        end
        end
        closeButton.OnCursorEntered = function()
        surface.PlaySound("UI/buttonrollover.wav")
        end
        local Title = vgui.Create( "DLabel", FrameDHaveCSS )
        Title:SetPos( 10, 4 )
        Title:SetSize(300, 20)
        Title:SetText( DRKNAW_ALERT_TITLE_DONT_CSS_INSTRU )
        Title:SetFont("GModToolHelp")
        local DLabel = vgui.Create( "DLabel", FrameDHaveCSS )
        DLabel:SetPos( (800/2)-(700/2)+10, 70 )
        DLabel:SetSize(700, 150)
        DLabel:SetText(DRKNAW_ALERT_TEXT_DONT_CSS_INSTRU)
        DLabel:SetTextColor(Color(255, 255, 255))
        DLabel:SetFont("GModToolSubtitle")
        
local DermaButton1 = vgui.Create( "DButton", FrameDHaveCSS ) 
DermaButton1:SetText(DRKNAW_ALERT_OPENLINK)		
DermaButton1:SetFont("GModToolHelp")
DermaButton1:SetTextColor(Color(255, 255, 255))			
DermaButton1:SetPos( (800/2)-(500/2), 400/2 + 100 )					
DermaButton1:SetSize( 500, 50 )			
DermaButton1.Paint = function(s , w , h)
	if DermaButton1:IsHovered() then
		draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
        else
		draw.RoundedBox(0,0,0,w , h, Color(51, 51, 51) )
	end
	end		
DermaButton1.OnCursorEntered = function()
	surface.PlaySound("UI/buttonrollover.wav")
	end
DermaButton1.DoClick = function()	
    gui.OpenURL( DRKNAW_ALERT_CSS_LINK )			
end
end
local DermaButtonIgnore = vgui.Create( "DButton", frame ) 
DermaButtonIgnore:SetText( DRKNAW_ALERT_TEXT_IGNORE )		
DermaButtonIgnore:SetFont("GModToolHelp")
DermaButtonIgnore:SetTextColor(Color(75, 75, 75))			
DermaButtonIgnore:SetPos( (800/2)-(500/2), 315 )					
DermaButtonIgnore:SetSize( 60, 30)			
DermaButtonIgnore.Paint = function(s , w , h)
	if DermaButtonIgnore:IsHovered() then
		draw.RoundedBox(0,0,0,w , h, Color(25, 25, 25) )
        else
		draw.RoundedBox(0,0,0,w , h, Color(51, 51, 51) )
	end
	end		
DermaButtonIgnore.OnCursorEntered = function()
	surface.PlaySound("UI/buttonrollover.wav")
	end
DermaButtonIgnore.DoClick = function()				
    hook.Remove("KeyPress", "CheckPlayerCSS") -- They are aware now, remove this hook		
    frame:Close()	
end


        
end

local function ErrorGUI()
    draw.DrawText(DRKNAW_ALERT_TITLE_ERROR, "CloseCaption_Bold", ScrW() / 2, 0, Color(255, 0, 0), TEXT_ALIGN_CENTER)
    draw.DrawText(DRKNAW_ALERT_COMMAND_INFO, "TargetIDSmall", ScrW() / 2, 30, Color(255, 0, 0), TEXT_ALIGN_CENTER)
end



local function Checking()
    if !IsMounted("cstrike") && Material("skybox/de_cobble_hdrbk.vtf"):IsError() then 
        chat.AddText(Color(255, 0, 0), "VOUS N'AVEZ PAS LE CONTENU CSS TÉLÉCHARGÉ ! !! Il y aura ", Color(255, 0, 0), "PLUSIEURS ERREURS !")
        ShowError()
        hook.Add("HUDPaint", "RenderCSSErrorText", ErrorGUI)    
        hook.Add("OnPlayerChat", "MissingCSSSaidSomething", PlayerSaidSomething)
    end

end

local function PlayerSaidSomething(ply, text)
    if ply == LocalPlayer() then    
        if string.lower(text) == "!".. DRKNAW_ALERT_COMMAND || string.lower(text) == "/".. DRKNAW_ALERT_COMMAND then ShowError() end
    end 
end
hook.Add("OnPlayerChat", "MissingCSSSaidSomething", PlayerSaidSomething)
hook.Add("KeyPress", "CheckPlayerCSS", Checking)