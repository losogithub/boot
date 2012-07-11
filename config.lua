specialState = false;



function InitBackLayer(filepath)
	
	backLayer = cocos2d.CCLayer:node();
	local mainScene = GameScene:getMainScene();
	mainScene:addChild(backLayer,0,1);
	
	collectgarbage("setpause",100);
    collectgarbage("setstepmul",5000);
	
	sprite1_1 = cocos2d.CCSprite:spriteWithFile(filepath .. "/1_1.png");
	sprite1_1:setAnchorPoint(cocos2d.CCPoint(0,1));
	backLayer:addChild(sprite1_1);
	sprite1_1:setPosition(cocos2d.CCPoint(-15,510-30));
	sprite1_1:setIsVisible(false);
	
	sprite1_2_1 = cocos2d.CCSprite:spriteWithFile(filepath .. "/1_2.png");
	backLayer:addChild(sprite1_2_1);
	sprite1_2_1:setPosition(cocos2d.CCPoint(200,440));
	sprite1_2_1:setIsVisible(false);
	
	sprite1_2_2 = cocos2d.CCSprite:spriteWithFile(filepath .. "/1_2.png");
	backLayer:addChild(sprite1_2_2);
	sprite1_2_2:setPosition(cocos2d.CCPoint(200,440));
	sprite1_2_2:setIsVisible(false);

	
	sprite1_3 = cocos2d.CCSprite:spriteWithFile(filepath .. "/1_3.png");
	sprite1_3:setAnchorPoint(cocos2d.CCPoint(0,1));
	backLayer:addChild(sprite1_3);
	sprite1_3:setPosition(cocos2d.CCPoint(30,500));
	sprite1_3:setIsVisible(false);	
	
	
	texture = cocos2d.CCTextureCache:sharedTextureCache():addImage(filepath .. "/2_2.png");
		
	sprite2_1_1 = cocos2d.CCSprite:spriteWithFile(filepath .. "/2_1.png");
	backLayer:addChild(sprite2_1_1);
	sprite2_1_1:setPosition(cocos2d.CCPoint(-5+335/2,490-284/2));	
	sprite2_1_1:setIsVisible(false);

	sprite2_1_2 = cocos2d.CCSprite:spriteWithFile(filepath .. "/2_1.png");
	backLayer:addChild(sprite2_1_2);
	sprite2_1_2:setPosition(cocos2d.CCPoint(-5+335/2,490-284/2));
	sprite2_1_2:setIsVisible(false);

	sprite2_2_1 = cocos2d.CCSprite:spriteWithTexture(texture,cocos2d.CCRectMake(0,0,texture:getContentSize().width/2,texture:getContentSize().height));
	sprite2_2_1:setAnchorPoint(cocos2d.CCPoint(0,1));
	backLayer:addChild(sprite2_2_1);
	sprite2_2_1:setIsVisible(false);

	sprite2_2_2 = cocos2d.CCSprite:spriteWithTexture(texture,cocos2d.CCRectMake(texture:getContentSize().width/2,0,texture:getContentSize().width/2,texture:getContentSize().height));
	sprite2_2_2:setAnchorPoint(cocos2d.CCPoint(0,1));
	backLayer:addChild(sprite2_2_2);
	sprite2_2_2:setIsVisible(false);
	
	cocos2d.CCScheduler:sharedScheduler():scheduleScriptFunc("move_tick", 0.01, false);
				
	PlayBg1();
end



function PlayBg1()

	sprite2_1_1:stopAllActions();
	sprite2_1_2:stopAllActions();

	sprite2_2_1:setIsVisible(false);
	sprite2_2_2:setIsVisible(false);
		
	sprite2_1_1:setIsVisible(false);	
	sprite2_1_2:setIsVisible(false);
	
	
			
	sprite1_1:setIsVisible(true);
	sprite1_3:setIsVisible(true);
	sprite1_2_1:setIsVisible(true);
	sprite1_2_2:setIsVisible(true);

	
	action121();
	action122();
	
end


function action1()
	local action = cocos2d.CCSequence:actionOneTwo(cocos2d.CCRotateBy:actionWithDuration(0.5,3),cocos2d.CCRotateBy:actionWithDuration(0.5,-3));
	sprite1_1:runAction(cocos2d.CCRepeatForever:actionWithAction(action));
end



function action121()
	
	local action1 = cocos2d.CCSequence:actionOneTwo(cocos2d.CCScaleTo:actionWithDuration(0.1,0.2),cocos2d.CCFadeIn:actionWithDuration(0.1));
	
	local action = cocos2d.CCSequence:actionOneTwo(action1,cocos2d.CCScaleTo:actionWithDuration(1.0,0.8));
	
	local action2 = cocos2d.CCSpawn:actionOneTwo(cocos2d.CCFadeOut:actionWithDuration(1),cocos2d.CCScaleTo:actionWithDuration(1,1.8));	
	action = cocos2d.CCSequence:actionOneTwo(action,action2);
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCDelayTime:actionWithDuration(0.5));
	sprite1_2_1:runAction(cocos2d.CCRepeatForever:actionWithAction(action));
end

function action122()
	local action1 = cocos2d.CCSequence:actionOneTwo(cocos2d.CCScaleTo:actionWithDuration(0.1,0.6),cocos2d.CCFadeIn:actionWithDuration(0.1));
	
	local action = cocos2d.CCSequence:actionOneTwo(action1,cocos2d.CCScaleTo:actionWithDuration(1,1.8));
	
	local action2 = cocos2d.CCSpawn:actionOneTwo(cocos2d.CCFadeOut:actionWithDuration(0.25),cocos2d.CCScaleTo:actionWithDuration(0.25,1.4));	
	action = cocos2d.CCSequence:actionOneTwo(action,action2);
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCDelayTime:actionWithDuration(1.25));
	sprite1_2_2:runAction(cocos2d.CCRepeatForever:actionWithAction(action));
end


function PlayBg2()
	sprite1_1:stopAllActions();
	sprite1_1:setIsVisible(false);
	sprite1_2_1:stopAllActions();
	sprite1_2_1:setIsVisible(false);
	sprite1_2_2:stopAllActions();
	sprite1_2_2:setIsVisible(false);
	
	sprite1_3:setIsVisible(false);



	sprite2_2_1:setPosition(cocos2d.CCPoint(0,480));
	sprite2_2_1:setIsVisible(true);
	
	sprite2_2_2:setPosition(cocos2d.CCPoint(texture:getContentSize().width/2,480));
	sprite2_2_2:setIsVisible(true);
		
	sprite2_1_1:setIsVisible(true);	
	sprite2_1_2:setIsVisible(true);
	
	action211();
end	

function action211()	
	local action = cocos2d.CCSequence:actionOneTwo(cocos2d.CCDelayTime:actionWithDuration(1),cocos2d.CCScaleTo:actionWithDuration(0.1,1.2));
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCScaleTo:actionWithDuration(0.1,1));
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCScaleTo:actionWithDuration(0.1,1.2));
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCScaleTo:actionWithDuration(0.1,1));	
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCCallFunc:actionWithScriptFuncName("action212"));
	sprite2_1_1:runAction(action);
	
end

function action212()
	local action2 = cocos2d.CCSpawn:actionOneTwo(cocos2d.CCFadeIn:actionWithDuration(0.01),cocos2d.CCScaleTo:actionWithDuration(0.01,1));
	local action3 = cocos2d.CCSpawn:actionOneTwo(cocos2d.CCFadeOut:actionWithDuration(0.2),cocos2d.CCScaleTo:actionWithDuration(0.2,1.3));		
	local action = cocos2d.CCSequence:actionOneTwo(action2,action3);
	action = cocos2d.CCSequence:actionOneTwo(action,cocos2d.CCCallFunc:actionWithScriptFuncName("action211"));
	sprite2_1_2:runAction(action);
end

function move_tick(dt)

	if specialState then
		local scroll_x = 100.0 * dt;
		sprite2_2_1:setPosition(cocos2d.CCPoint(sprite2_2_1:getPosition().x-scroll_x,480));
		sprite2_2_2:setPosition(cocos2d.CCPoint(sprite2_2_2:getPosition().x-scroll_x,480));
	
		if sprite2_2_1:getPosition().x <= -texture:getContentSize().width/2 then
			sprite2_2_1:setPosition(cocos2d.CCPoint(texture:getContentSize().width/2+sprite2_2_2:getPosition().x,480));
		end	
	
		if sprite2_2_2:getPosition().x <= -texture:getContentSize().width/2 then
			sprite2_2_2:setPosition(cocos2d.CCPoint(texture:getContentSize().width/2+sprite2_2_1:getPosition().x,480));
		end
	end
end

function backLayerCommonState()
	specialState = false;
	PlayBg1();
end

function backlayerSpecialState()
	specialState = true;
	PlayBg2();
end

function releaseBackLayer()
	specialState = false;
    cocos2d.CCTextureCache:sharedTextureCache():removeTexture(texture);

	backLayer:removeAllChildrenWithCleanup(true);
	backLayer:removeFromParentAndCleanup(true);
	backLayer = nil;
	collectgarbage(); 
end


