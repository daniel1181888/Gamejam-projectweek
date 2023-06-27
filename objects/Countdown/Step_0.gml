if (timer > 0)
{
    timer -= 1; // Decrease the timer by 1 each step
}
else
{
    game_restart(); // Reset the game when the timer reaches zero
}