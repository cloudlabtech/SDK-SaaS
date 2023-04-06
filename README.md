# The CloudLab Software Development Kit (SDK) <!-- omit in toc -->
This project refers to a SDK used to build SaaS and Micro-SaaS for cloud platforms, especially for Microsoft Azure, using dotnet, netcore and C#.

# Table of Contents <!-- omit in toc -->

- [Background and the Vision](#background-and-the-vision)
- [The SaaS Building Blocks](#the-saas-building-blocks)
  - [Concepts](#concepts)
  - [Features](#features)
  - [Packages and documentation](#packages-and-documentation)
- [TL;DR: Quickstart](#tldr-quickstart)
- [Samples](#samples)
- [Contributors](#contributors)
- [Acknowledgement](#acknowledgement)
    - [From contributor: Eric Roberto Darruiz - @edarruiz](#from-contributor-eric-roberto-darruiz---edarruiz)
- [Roadmap](#roadmap)
- [License](#license)


## Background and the Vision 
CloudLab is a cloud-first company. As our name suggests, we not only love, but we heavily rely on the cloud architecture foundations and concepts to create rich, easy to maintain and scalable applications that will run on cloud platforms (like Azure).

Over the years, we've used a lot of open-source and proprietary SDKs and frameworks to develop our applications, even when the cloud did not exist yet. With the evolutions of software development presented with cloud computing platforms technology, sometimes we feel we fell behind in creating good solutions, most of the times because of the dependencies created in this 3rd party SDKs and frameworks.

There was situations where the 3rd party software we was consuming to produce our own was just dragging the development of the architecture decisions due its high level of coupling (tecnical and conceptual) created inside some specific framework.

That is the main reason why we hate the misused word "framework". Frameworks in its pure form, was supposed to be something you should be building over it, not only using as a part of your software as we see all over the place this days. Also, 3rd party SDKs was sometimes too shallow and too agnostic, bringing the burden of create a building block before the building block itself.

With this in mind, over the past decade building and creating cloud software, we discovered a lot of "must-have" pieces of code, structures, algorithms and implemented concepts, which we was using over and over again, for every each single new application we decided to build and deploy over the cloud.

The CloudLab SDK is about this concept and about this specific needs. Inside this SDK you'll find from primitive cloud concepts to advanced design-patterns implemented in C# with dotnet, which you can consume, change, distribute or even improve while creating your dotnet and netcore cloud applications. This is what we called "our building blocks": single code pieces through the dotnet implementations need to fulfill this promises for the software own needs. So you just need to pick what you want, use where you need, and change how you desire.

The whole code is fully documented, so you can find out very quickly what the implementation is all about.

## The SaaS Building Blocks
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

### Concepts
On the [Concepts page][concepts_doc] you can find all the cloud concepts behind every and each dotnet implementation, where you can better understand the exact reasons, decisions and objectives which particular building block are aiming.

### Features
On the [Features page][features_doc] you can find a list of all features implemented from the [cloud concepts][concepts_doc].

### Packages and documentation
In this repository you will find the following packages:

- [CloudLab.SDK][sdk_doc]: The core building blocks, all the implementation bread and butter
  - This is the main package where all the core implementations are located. All other packages available and deployed from this repository  depend upon this one.
- [CloudLab.SDK.MongoDB][mongodb_doc]: The MongoDB NoSQL building blocks
  - This is the package where you can find wrappers to deal with MongoDB operations through [MongoDB.Driver][nuget_mongodb], version ![mongodb_nugetversion][mongodb_ver_shield].

## TL;DR: Quickstart
On the [Quickstart page][quickstart_doc] you can find how to start using the CloudLab packages, how to install and configure them for immediate use.

## Samples
On the [Samples page[samples_doc]] you can find samples, use cases and usage examples for every building block existing in the packages

## Contributors
If you want to contribute with this project, please read the [contribution guidelines][contributing].

Thanks to the following contributors who have helped with the project:
- Eric Roberto Darruiz - [@edarruiz][user_edarruiz]

## Acknowledgement
#### From contributor: Eric Roberto Darruiz - [@edarruiz][user_edarruiz]
I personally thank all the great developers, projects and companies I had the opportunity to worked with in the past 24 years, through successes and failures, that made possible the vision and created the necessary skills to create this project today. Over countless years and hours of coding, testing, studying and improving, now I can share a little bit of what I've learned over the years, which I found useful and useless. I hope this content can help you with your projects and as a developer, with your life goals. I wish the best for you developer and technology person, the most successful things hoping you can improve, and one day in the future, share your knowledge with others.

You can reach me out on eric@cloudlabtecnologia.com.br. Feel free to contact me ;)


## Roadmap
On the [Roadmap page][roadmap_doc] you can find our development roadmap, where we share our vision and our strategic objectives for this project.

## License
This project is licensed under the [MIT License][license].

[user_edarruiz]: https://github.com/edarruiz
[nuget_mongodb]: https://www.nuget.org/packages/MongoDB.Driver
[mongodb_ver_shield]: https://img.shields.io/nuget/v/MongoDB.Driver
[contributing]: https://github.com/cloudlabtech/SDK/blob/main/CONTRIBUTING.md
[sdk_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/cloudlab.sdk.md
[mongodb_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/cloudlab.sdk.mongodb.md
[samples_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/samples.md
[quickstart_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/quickstart.md
[concepts_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/concepts.md
[features_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/features.md
[samples_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/samples.md
[roadmap_doc]: https://github.com/cloudlabtech/SDK/blob/main/doc/roadmap.md
[license]: https://github.com/cloudlabtech/SDK/blob/main/LICENSE
