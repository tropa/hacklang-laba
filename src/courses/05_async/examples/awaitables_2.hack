

<<__EntryPoint>>
async function main(): Awaitable<void> {
    
    $x = async { print("Hello, world\n"); return 42; };
    \var_dump(await $x);
   
}