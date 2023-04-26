# The SaaS Building Blocks - The design principles and business goals
Every **SaaS** (Software-as-a-Service) has it's own features, it's own goals and it's own market. The concept of SaaS itself it's pretty simple: *it's a software distribution model in which a cloud provider hosts applications and makes them available to end users over the internet.*

Over the time, some problems went big, and some problems went small. With the market niches all over the world and all big markets, a new concept was brought to us: the **Micro-SaaS**. The main difference shows itself from its monetary and company size point of view, where *Micro-SaaS is a small, self-funded software venture, run by one or two developers, that addresses a specific need. A micro-SaaS follows a service model (Software as a Service), with recurring payments (subscriptions) from hundreds or a few thousand customers.*

It's important to compare this two categories and discover what they have in common, the concepts they share and what solutions are fundamentally the same for both business scenarios.

In one side we have the **SaaS**: tends to be bigger and broader, proposing solutions to bigger problems for bigger markets, where the costs are higher, with a higher number of people working in the software solution. This reflects into bigger costs of provisioning cloud resources and infrastructure, requiring even more higher maintenability and observability. 

As the other side, the **Micro-SaaS** tends to reduce this investment gap for some market niches for small companies, proposing solutions to smaller problems, with smaller teams, inside smaller infrastructures, resulting in lower costs and higher profitability. The lifetime of a Micro-SaaS is way small compared to a full SaaS solution, so it needs to be build, deployed and used as fast as possible to justify the investments done and the time consumed over the product launch process.

One or the other, they share some problems, which is software architecture: doesn't matter the size of the business or the solution, the *concept* and *patterns* behind both are the same, they only differ in their implementation, which reflects in its own architecture over the cloud. 

Here is where the building blocks concept comes into place: we need find a way to create solutions that scale, based on small software pieces that can work together and do the solving problem job.

In this SDK, you'll find the implementation of the concepts needed by any SaaS or Micro-SaaS, where you can scale out as you need. This are, literally, the building blocks of any cloud application, be that an enterprise-size or a small solution. They are specific classes, structures and implementations that serve one single purpose, solving a single problem through a group of structures, classes and algorithms.

The building blocks are not coupled, and have only the required dependencies inside the implementations. So you can use just one thing without be worried with the other ones available. We applied the S.O.L.I.D principles everywhere and believe good software is as good as it was implemented. For this reason, we trully believe in reusing solid implementations, that was tested in the cloud application environments over time.

You can extend almost every single building block we implemented. The exception to this is when some implementation represents a concept should not be never modified through inheritance or composition, where you will find the classes sealed. In all other cases, you can change the implementation behavior with your own implementation variations, inheritance or composition.

Finally, every concept implemented is designed to be available in smaller building blocks. So if you liked a single implementation concept, you probably can reuse all the little pieces used to create that specific building block.

Reuse, share, improve: this is the goal, this is the vision behind the concept of this SDK.
