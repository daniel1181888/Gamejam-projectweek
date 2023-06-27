if (keyboard_check(ord("A"))) x -= 3;
if (keyboard_check(ord("D"))) x += 3;
if (keyboard_check(ord("W"))) y -= 3;
if (keyboard_check(ord("S"))) y += 3;


// Create the timer variable and initial delay in the Create Event
shotDelay = 30; // Adjust the value as needed (measured in steps)
canShoot = true;

// Step Event
if (!canShoot) {
    shotDelay -= 1; // Decrease the timer each step

    if (shotDelay <= 0) {
        canShoot = true; // Enable shooting when the timer reaches zero
    }
}

if (keyboard_check_pressed(vk_up) && canShoot)
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 90; // Set bullet direction to up (90 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (keyboard_check_pressed(vk_left) && canShoot)
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 180; // Set bullet direction to left (180 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (keyboard_check_pressed(vk_right) && canShoot)
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 0; // Set bullet direction to right (0 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (keyboard_check_pressed(vk_down) && canShoot)
{
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 270; // Set bullet direction to down (270 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (place_meeting(x, y, Enemy1))
{
    game_restart(); // Restart the game when colliding with obj_Enemy
}

// Check collision with obj_EnemyBullet
if (place_meeting(x, y, BulletEnemy))
{
    game_restart(); // Restart the game when colliding with obj_EnemyBullet
}
