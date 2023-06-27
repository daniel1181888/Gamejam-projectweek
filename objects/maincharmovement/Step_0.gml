if (keyboard_check(ord("A"))) x -= 3;
if (keyboard_check(ord("D"))) x += 3;
if (keyboard_check(ord("W"))) y -= 3;
if (keyboard_check(ord("S"))) y += 3;

if (keyboard_check(vk_up))
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 90; // Set bullet direction to up (90 degrees)
}

if (keyboard_check(vk_left))
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 180; // Set bullet direction to left (180 degrees)
}

if (keyboard_check(vk_right))
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 0; // Set bullet direction to right (0 degrees)
}

if (keyboard_check(vk_down))
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 270; // Set bullet direction to down (270 degrees)
}

