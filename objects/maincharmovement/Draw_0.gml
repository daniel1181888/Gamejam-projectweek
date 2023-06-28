draw_self(); // Draw the character


// Draw lives
var lifePosX = x - sprite_width * 0.5; // Adjust the position based on the character's width
var lifePosY = y + sprite_height * 0.5 + 10; // Adjust the position based on the character's height and desired spacing

var lifeSpacing = 20; // Spacing between heart sprites

for (var i = 0; i < lives; i++) {
    draw_sprite(Heart, 0, lifePosX + i * lifeSpacing, lifePosY);
}