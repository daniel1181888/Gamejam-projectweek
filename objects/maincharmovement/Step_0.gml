// Step Event

// Check collision with obj_EnemyBullet
if (instance_position(x, y, BulletEnemy) != noone) {
    instance_destroy(instance_position(x, y,BulletEnemy)); // Destroy the enemy bullet
    lives -= 1; // Decrease the life count
    if (lives <= 0) {
        game_restart(); // Restart the game when lives reach zero
    }
}

var moveSpeed = 3;

if (keyboard_check(ord("A"))) {
    x -= moveSpeed;
}

if (keyboard_check(ord("D"))) {
    x += moveSpeed;
}

if (keyboard_check(ord("W"))) {
    y -= moveSpeed;
}

if (keyboard_check(ord("S"))) {
    y += moveSpeed;
}

// Check if player can shoot
if (!canShoot) {
    shotDelay -= 1; // Decrease the timer each step

    if (shotDelay <= 0) {
        canShoot = true; // Enable shooting when the timer reaches zero
    }
}

if (keyboard_check_pressed(vk_up) && canShoot) {
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 90; // Set bullet direction to up (90 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (keyboard_check_pressed(vk_left) && canShoot) {
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 180; // Set bullet direction to left (180 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (keyboard_check_pressed(vk_right) && canShoot) {
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 0; // Set bullet direction to right (0 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}

if (keyboard_check_pressed(vk_down) && canShoot) {
    var bulletInstance = instance_create_layer(x, y, layer, bullet);
    bulletInstance.direction = 270; // Set bullet direction to down (270 degrees)
    canShoot = false; // Disable shooting
    shotDelay = 30; // Reset the timer to the desired delay value
}
