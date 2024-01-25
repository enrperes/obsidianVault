#### The problem
A class `RemoteControl` depends on the class `Television`. 
`RemoteCOntrol` has the `click()` method, while `Television` has `turnOn()` and `turnOff()`
So we have a **high level component** (remote) that depends on a low level one (tv). 

####  The solution: A remote that can control everything
A class `RemoteControl` which depends on the **Abstraction** `OnOffDevice` and a class `Television` which depends on the same abstraction. 

