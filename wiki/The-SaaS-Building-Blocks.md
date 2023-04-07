# The SaaS Building Blocks
Every **SaaS** (Software-as-a-Service) has it's own features, it's own goals and it's own market. The concept of SaaS itself it's pretty simple: *it's a software distribution model in which a cloud provider hosts applications and makes them available to end users over the internet.*

Over the time, some problems went big, and some problems went small. With the market niches all over the world and all big markets, a new concept was brought to us: the **Micro-SaaS**. The main difference shows itself from its monetary and company size point of view, where *Micro-SaaS is a small, self-funded software venture, run by one or two developers, that addresses a specific need. A micro-SaaS follows a service model (Software as a Service), with recurring payments (subscriptions) from hundreds or a few thousand customers.*

It's important to compare this two categories and discover what they have in common, that concepts they share and what solutions are funtamentally the same for both business scenarios.

In one side we have the SaaS: tends to be bigger and broader, solving bigger problems for bigger markets, where the costs are higher with a higher number of people working in the software solution, reflecting in bigger costs and provisioning of the cloud resources and infrastructure, requiring even more higher maintenability and observability. 

As the other side, the Micro-SaaS tends to reduce this investment gap for some market niches for small companies, solving smaller problems, with smaller teams, inside smaller infrastructures, resulting in lower costs and higher profitability. The lifetime of a Micro-SaaS is way small compared to a full SaaS solution, so it needs to be build, deployed and used as fast as possible.

One or the other, they share some problems, with is software architecture: doesn't matter the size of the business or the solution, the *concept* behind both is the same, they only difer in their implementation, which reflects in its own architecture over the cloud. Here is where the building blocks concept comes into place.

In this SDK, you'll find the implementation of the concepts needed by any SaaS or Micro-SaaS, and you can scale out as you need. This are, literally, the building blocks of any cloud application, be that an enterprise-size or a small solution. They are specific classes, structures and implementations that serve one single purpose, solving a single problem.

The building blocks are not coupled, and have only the required dependencies inside the implementations. So you can use just one thing without be worried with the other ones available. We applied the S.O.L.I.D principles everywhere and believe good software is as good as it was implemented. For this reason, we trully believe in reusing solid implementations, that was tested in the cloud application environments over time.

You can extend almost every single building block we implemented. The exception to this is when some implementation represents a concept should not be modified through inheritance or composition. In all other cases, you can change the implementation behavior with your own implementation variations, inheritance or composition.

Finally, every concept implemented is designed to be available in smaller building blocks. So if you liked a single implementation concept, you probably can reuse all the little pieces used to create that specific building block.

Reuse, share, improve: this is the goal, this is the vision behind the concept of this SDK.
