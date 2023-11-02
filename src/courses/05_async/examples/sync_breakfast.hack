namespace AsyncBreakfast;

class Bacon { }
class Coffee { }
class Egg { }
class Juice { }
class Toast { }


function task()
{
    $start = \microtime(true);

    $cup = PourCoffee();
    echo("coffee is ready  \r\n");

    $eggs = FryEggs(2);
    echo("eggs are ready  \r\n");

    $bacon = FryBacon(3);
    echo("bacon is ready  \r\n");

    $toast = ToastBread(2);
    ApplyButter($toast);
    ApplyJam($toast);
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

function ToastBread(num $slices): Toast
{
    for ($slice = 0; $slice < $slices; $slice++)
    {
        echo("Putting a slice of bread in the toaster  \r\n");
    }
    echo("Start toasting... \r\n");
    \sleep(30);
    echo("Remove toast from toaster  \r\n");

    return new Toast();
}

function FryBacon(int $slices): Bacon
{
    echo("putting {$slices} slices of bacon in the pan  \r\n");
    echo("cooking first side of bacon... \r\n");
    \sleep(3);
    for ($slice = 0; $slice < $slices; $slice++)
    {
        echo("flipping a slice of bacon  \r\n");
    }
    echo("cooking the second side of bacon...  \r\n");
    \sleep(3);
    echo("Put bacon on plate \r\n");

    return new Bacon();
}

function FryEggs(num $howMany): Egg
{
    echo("Warming the egg pan... \r\n");
    \sleep(3);
    echo("cracking {$howMany} eggs  \r\n");
    echo("cooking the eggs ... \r\n");
    \sleep(3);
    echo("Put eggs on plate  \r\n");

    return new Egg();
}

function PourCoffee(): Coffee
{
    echo("Pouring coffee \r\n");
    return new Coffee();
}


<<__EntryPoint>>
function main(): void {
    $p = task();
}