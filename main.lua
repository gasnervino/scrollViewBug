


local widget = require "widget"

--[[
BUG SUBMISSION
There is a bug in the scrollView Widget.
It's  visible just in the devices ( Android and iPhone ) but not in simulator.
You can see 2 thin diagonal white or black lines on top of the scrollView elements, 
the lines are same color of the background.

I made this easy example to show how it happen

]]--

local scrollView;
local DeltaX = (display.contentWidth   - 640 ) / 2
local DeltaY = (display.contentHeight - 960) / 2;
local TMPmenuItem;

local function scrollViewListener( event )
    local s = event.target    -- reference to scrollView object
end

local function drawScrollView( totalMenuItems )
    
     TMPmenuItem = display.newImage("menuItem.png", 18+DeltaX, DeltaY);    
    TMPmenuItem.alpha = 0.0;
    
    -- Create a new ScrollView widget:
    scrollView = widget.newScrollView{ 
    width = 606,
    height = 496,
    scrollWidth = 606,
    scrollHeight = TMPmenuItem.height * totalMenuItems,
    --maskFile="scrollViewMask.png",
    maskFile="scrollViewMask.jpg",
    listener = scrollViewListener
    }
    
    TMPmenuItem:removeSelf( );
    
    scrollView.x = 18+DeltaX;
    scrollView.y = 333+DeltaY;
end

 drawScrollView(5);
 TMPmenuItem = display.newImage("menuItem.png", DeltaX, DeltaY);
 scrollView:insert( TMPmenuItem )    
 TMPmenuItem = display.newImage("menuItem.png", DeltaX, ( TMPmenuItem.height*1 )+DeltaY )	
  scrollView:insert( TMPmenuItem )   
  TMPmenuItem = display.newImage("menuItem.png", DeltaX, ( TMPmenuItem.height*2)+DeltaY )	
  scrollView:insert( TMPmenuItem )   
  TMPmenuItem = display.newImage("menuItem.png", DeltaX, ( TMPmenuItem.height*3 )+DeltaY )	
  scrollView:insert( TMPmenuItem )   
  TMPmenuItem = display.newImage("menuItem.png", DeltaX, ( TMPmenuItem.height*4 )+DeltaY )	
  scrollView:insert( TMPmenuItem )   

