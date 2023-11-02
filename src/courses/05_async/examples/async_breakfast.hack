namespace AsyncBreakfast;

use namespace HH\Lib\Vec;

class Bacon { }
class Coffee { }
class Egg { }
class Juice { }
class Toast { }

async function task(): Awaitable<void>
{
    $start = \microtime(true);

    list($cup, $eggs, $bacon,$toast) = await Vec\from_async(
        vec[
            PourCoffee(),
            FryEggsAsync(2), 
            FryBaconAsync(3), 
            ToastBreadAsync(2)
        ]
    );

    echo("coffee is ready  \r\n");
    echo("eggs are ready  \r\n");
    echo("bacon is ready  \r\n");

    await ApplyButter($toast);
    await ApplyJam($toast);
    echo("toast is ready  \r\n");

    $oj = PourOJ();
    echo("oj is ready  \r\n");

    echo("Breakfast is ready!  \r\n");

    $end = \microtime(true);
    echo "Total time taken: ".\strval($end - $start)." seconds\n";
}

function PourOJ(): Juice
{
    echo("Pouring orange juice \r\n");
    return new Juice();
}

function ApplyJam(Toast $toast): void {
    echo("Putting jam on the toast \r\n");
}

function ApplyButter(Toast $toast): void {
    echo("Putting butter on the toast  \r\n");
} 

async function ToastBreadAsync(num $slices): Awaitable<Toast>
{
    for ($slice = 0; $slice < $slices; $slice++)
    {
        echo("Putting a slice of bread in the toaster  \r\n");
    }
    echo("START TOASTING... \r\n");
    await \HH\Asio\usleep(30000000);
    echo("REMOVE TOAST FROM TOASTER  \r\n");

    return new Toast();
}

async function FryBaconAsync(int $slices): Awaitable<Bacon>
{
    echo("putting {$slices} slices of bacon in the pan  \r\n");
    echo("cooking first side of bacon... \r\n");
    await \HH\Asio\usleep(3000000);
    for ($slice = 0; $slice < $slices; $slice++)
    {
        echo("flipping a slice of bacon  \r\n");
    }
    echo("cooking the second side of bacon...  \r\n");
    await \HH\Asio\usleep(3000000);
    echo("Put bacon on plate \r\n");

    return new Bacon();
}

async function FryEggsAsync(num $howMany): Awaitable<Egg>
{
    echo("Warming the egg pan... \r\n");
    await \HH\Asio\usleep(3000000);
    echo("cracking {$howMany} eggs  \r\n");
    echo("cooking the eggs ... \r\n");
    await \HH\Asio\usleep(3000000);
    echo("Put eggs on plate  \r\n");

    return new Egg();
}

async function PourCoffee(): Awaitable<Coffee>
{
    echo("Pouring coffee \r\n");
    return new Coffee();
}


<<__EntryPoint>>
function main(): void {
    \HH\Asio\join(task());
}