(function ($) {
	"use strict";

    
     var tpj=jQuery;               // MAKE JQUERY PLUGIN CONFLICTFREE
      tpj.noConflict();
                
      tpj(document).ready(function() {
	
	   if (tpj.fn.cssOriginal!=undefined)   // CHECK IF fn.css already extended
	   tpj.fn.css = tpj.fn.cssOriginal;

		tpj('.fullwidthbanner').revolution(
			{    
				delay:9000,                                                
				startheight:548,                            
				startwidth:840,
				
				hideThumbs:200,
				
				thumbWidth:100,                            
				thumbHeight:50,
				thumbAmount:5,
				
				navigationType:"bullet",
				navigationArrows:"solo",
				navigationStyle:"preview1",               
				touchenabled:"on",                      
				onHoverStop:"on",                        
				
				navOffsetHorizontal:0,
				navOffsetVertical:20,
				
				stopAtSlide:-1,
				stopAfterLoops:-1,
				
				shadow:1,
				fullWidth:"off"    
											
			}); 
			}); 
    
     var tpjs=jQuery;               // MAKE JQUERY PLUGIN CONFLICTFREE
      tpjs.noConflict();
                
      tpjs(document).ready(function() {
	
	   if (tpjs.fn.cssOriginal!=undefined)   // CHECK IF fn.css already extended
	   tpjs.fn.css = tpjs.fn.cssOriginal;

		tpjs('.fullheightbanner').revolution(
			{    
				delay:9000,                                                
				startheight:627,                            
				startwidth:890,
				
				hideThumbs:200,
				
				thumbWidth:100,                            
				thumbHeight:50,
				thumbAmount:5,
				
				navigationType:"both",                  
				navigationArrows:"nexttobullets",        
				navigationStyle:"round",                
				touchenabled:"on",                      
				onHoverStop:"on",                        
				
				navOffsetHorizontal:0,
				navOffsetVertical:20,
				
				stopAtSlide:-1,
				stopAfterLoops:-1,
				
				shadow:1,
				fullWidth:"off"    
											
			}); 
			}); 
    


}(jQuery));	