function onCreate()
	
makeLuaSprite('uglyHB', 'HB', 0, 0)
	
setObjectCamera('uglyHB', 'hud')
	
setScrollFactor('uglyHB', 0.9, 0.9)
	
	
addLuaSprite('uglyHB', true)
end



function onCreatePost()
	
--Fucker's Healthbar
   
setProperty('uglyHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('uglyHB.x', getProperty('healthBar.x') - 33)

    
setProperty('uglyHB.angle', getProperty('healthBar.angle'))
    
setProperty('uglyHB.y', getProperty('healthBar.y') - 38.5)
    
setProperty('uglyHB.scale.x', getProperty('healthBar.scale.x'))
    
setProperty('uglyHB.scale.y', getProperty('healthBar.scale.y'))
    
setObjectOrder('uglyHB', 4)
	
setObjectOrder('healthBar', 3)
	
setObjectOrder('healthBarBG', 2)

end


