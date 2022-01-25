<?php
namespace Adapter\Conceptual;
class money
{

    public function request(): string
    {
        return "money";
    }
}
class Adaptee
{
    public function specificRequest(): string
    {
        return "money convert to any thing you want";
    }
}
class Adapter extends money
{
    private $adaptee;

    public function __construct(Adaptee $adaptee)
    {
        $this->adaptee = $adaptee;
    }

    public function request(): string
    {
        return "Money: (converted) " . strrev($this->adaptee->specificRequest());
    }
}
function clientCode(money $target)
{
    echo $target->request();
}
echo "we can work just fine with the money:\n";
$target = new money();
clientCode($target);
echo "\n\n";

$adaptee = new Adaptee();
echo "Client: The Adaptee class has a weird interface. See, I don't understand it:\n";
echo "Adaptee: " . $adaptee->specificRequest();
echo "\n\n";

echo " But we can convert it :\n";
$adapter = new Adapter($adaptee);
clientCode($adapter);