#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation G


- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character]

-(void)update:(CCTime)delta
{
        // this will be run every frame.
        // delta is the time that has elapsed since the last time it was run. This is usually 1/60, but can be bigger if the game slows down
    }
    // Increment the time since the last obstacle was added
    'timeSinceObstacle' += delta; // delta is approximately 1/60th of a second
}
    // Check to see if two seconds have passed
    if ('timeSinceObstacle > 2.0f')

        {
        // touches the screen
            [character flap];
        }
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 1.0f;
    }
    // this will be run every frame.
    // delta is the time that has elapsed since the last time it was run. This is usually 1/60, but can be bigger if the game slows down

    // put update code here


    // put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
}
// Increment the time since the last obstacle was added
timeSinceObstacle += delta; // delta is approximately 1/60th of a second

// Check to see if two seconds have passed
if (timeSinceObstacle > 2.0f)
{
    // Add a new obstacle
    [self addObstacle];
    
    // Then reset the timer.
    timeSinceObstacle = 0.0f;
}
@end
