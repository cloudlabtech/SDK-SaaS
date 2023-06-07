# Background and the Vision for a SaaS Software Development Kit
CloudLab is a cloud-first company. As our name suggests, we not only love, but we heavily rely on the cloud architecture foundations and concepts to create rich, easy to maintain and scalable applications that will run on cloud platforms (like Azure).

Over the years, we've used a lot of open-source and proprietary SDKs and frameworks to develop our applications, even when the cloud did not exist yet, in the early 90's and 2000's. With the evolutions of software development presented with cloud computing platforms technology, sometimes we feel we fell behind in creating good solutions, most of the times because of the dependencies created in this 3rd party SDKs and frameworks.

There was situations where the 3rd party software we was consuming to produce our own was just dragging out the development of the architecture decisions due its high level of coupling (tecnical and conceptual) created inside some specific framework.

That is the main reason why we hate the misused word "framework". Frameworks in its pure form, was supposed to be something you should be building over it, not only using as a part of your software as we see all over the place this days. Also, 3rd party SDKs was sometimes too shallow and too agnostic, bringing the burden of create a building block before the building block itself.

With this in mind, over the past two decades building and creating software, we discovered a lot of "must-have" pieces of code, structures, algorithms and implemented concepts, which we was using over and over again, for every each single new application we decided to build and deploy over the cloud.

The CloudLab SDK is about this concept and about this specific needs. Inside this SDK you'll find from primitive cloud concepts to advanced design-patterns implemented in C# with dotnet, which you can consume, change, distribute or even improve while creating your dotnet and netcore cloud applications. 

This is what we called "our building blocks": single code pieces through the dotnet implementations need to fulfill this promises for the software own needs, shaped in groups of structures, classes and algorithms. So you just need to pick what you want, use where you need, and change how you desire.

The whole code is fully documented, so you can find out very quickly what the implementation is all about.

Finally, the SDK offers separated libraries to deal with some especific tools, like MongoDB and WhatsApp Business. As we progress in development, we will add newer tool-related SDKs, offering to the developer, our end-user, an out-of-the-box usable code for implementing its own SaaS or Micro-SaaS solutions.