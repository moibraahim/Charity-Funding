<?php

namespace RefactoringGuru\Observer\Conceptual;
class System implements \SplSubject
{
    public $state;
    private $observers;

    public function __construct()
    {
        $this->observers = new \SplObjectStorage();
    }
    public function attach(\SplObserver $observer)
    {
        echo "System: Attached an observer.\n";
        $this->observers->attach($observer);
    }

    public function detach(\SplObserver $observer)
    {
        $this->observers->detach($observer);
        echo "System: Detached an observer.\n";
    }
    public function notify()
    {
        echo "System: Notifying observers...    .\n";
        foreach ($this->observers as $observer) {
            $observer->update($this);
        }
    }
    public function someBusinessLogic()
    {
        echo "\nSystem: I'm doing something important.\n";
        $this->state = rand(0, 10);

        echo "System: My state has just changed to: {$this->state}\n";
        $this->notify();
    }

}
class volunteer implements \SplObserver
{
    public function update(\SplSubject $subject)
    {
        if ($subject->state < 3) {
            echo "volunteer: Reacted to the event.\n";
        }
    }
}
class ConcreteObserverB implements \SplObserver
{
    public function update(\SplSubject $subject)
    {
        if ($subject->state == 0 || $subject->state >= 2) {
            echo "ConcreteObserverB: Reacted to the event.\n";
        }
    }
}
$subject = new System();

$o1 = new volunteer();
$subject->attach($o1);

$o2 = new ConcreteObserverB();
$subject->attach($o2);

$subject->someBusinessLogic();
$subject->someBusinessLogic();

$subject->detach($o2);

$subject->someBusinessLogic();

?>