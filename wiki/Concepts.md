# CloudLab SDK Concepts <!-- omit in toc -->

In a cloud development environment, there is a lot of concepts where you can define, produce and consume code artifacts. These artifacts are considered the basic building blocks of any application you want to develop and deploy in a cloud environment platform, building your business application ecosystem.

Concept is a broad term, which implies its own applications, based on its own definitions. For the SDK especific case, you should consider this two meanings of a word ***concept***:

1. It **IS** a cloud computing related idea that solves an specific problem, being this problem a business or technical ones;
2. It **IS** an architectural pattern, structure or definition which you should or would develop your solution upon.

With this in mind, you can have a clear vision of what concepts, from the most basic ones to the most advanced or complex ones implemented in the SDK. In addition, there is only three reasons why something is considered to be implemented in this SDK:

1. It SOLVES a SaaS or Micro-SaaS problem through software implementations;
2. It CREATES a base cloud platform environment to develop software solutions for any especific needs;
3. It GENERATES business value to the SaaS or Micro-SaaS solution by either:
   1. Creating technology needed for the software solution
   2. Creating patterns used to create the technology needed for the software solution.

Table of contents:

# Software Architecture Concepts <!-- omit in toc -->
For the implementation details, there are some basic concepts used as a base implementation level of any SDK building blocks. This architetural concepts are a MUST KNOW starting point to understand from the theoric concept to the implementation details.

- [Contexts](#contexts)
- [Responsability](#responsability)
- [Idempotency](#idempotency)


## Contexts
In every application, we need to share or even scope different kinds of information.

This creates the necessity to create an environment which this information will become available in and to various places inside the SaaS application. This *shared place* has its own lifeclycle, boudaries, constraints, policies, reinforced rules and behavior.

This is what we called **Context**. It is similar to the context concept dotnet and ASP.NET brings up.

From the software perspective, a context is a place represented by one or more object where any other objects, properties and information are grouped, becoming  available to the application as a shared information state. 

The SOLE responsability of a context is provide custom support to other objects and/or another contexts.

To simplify the user implementation, everything existing in a particular context, should be considered as a type of "session", which can have its own life cycle and its own behavior. The context lifecycle and behavior depends on the end-user implementation. Also, a context can be used together with design-pattern and business concepts, like DDD (Domain Driven Design) or data concepts to create its own particular behavior and defining its own required lifecycle for the application needs.

> As implicit in our SDK implemented concepts, a context is a **data type that you can use to store sets of data and share it between objects and another contexts inside the application.**

Inside the SDK, every context is inherited from the interfaces `IContext` and `IImmutableContext`, also, the context have some behaviors, accessed through some implementation methods. For simplicity reasons, there are two base types of context you can inherit from:

- **A read-write Context**: represented by the `Context` class and the `IContext` interface
  - In this kind of context, you can read and write information on.
- **A read-only-immutable Context**: represented by the `ImmutableContext` and the `IImmutableContext` interface.
  - In this kind of context, you can only initialize the information when creating the context and once created, all the information are frozen and any other external class or method cannot change its information values.

Both context types can be reused in any inheritance or composition.

## Responsability
For the SDK, responsability means all the boundaries of any code implementation, defining exactly what and why the code should do. It defines the most basic objective of the implementation, and exactly what are the limits the implementation should care.

Any piece of code should be answering very especific questions and resolving very especific problems, or at least, part of them.

This results not only in simpler code, easier to maintain, refactor and quick to deploy, but also from the business perspective, the responsability defines which part of the application does what, and why they do what they are supposed to do.

[Robert C. Martin](https://en.wikipedia.org/wiki/Robert_C._Martin), better known as **Uncle Bob** created and published the theory of [Design Principles and Design Patterns](http://staff.cs.utu.fi/~jounsmed/doos_06/material/DesignPrinciplesAndPatterns.pdf). Within this principles, if we apply the [*S*](https://blog.cleancoder.com/uncle-bob/2014/05/08/SingleReponsibilityPrinciple.html), also known as *SRP* (Single-responsability principle) of the [*S.O.L.I.D.*](https://en.wikipedia.org/wiki/SOLID) principles of object-oriented design, we have this definition:

> Defines a responsibility as a *reason to change*, and concludes that a class or module should have one, and only one, reason to be changed (e.g. rewritten).
> 
> As an example, consider a module that compiles and prints a report. Imagine such a module can be changed for two reasons. First, the content of the report could change. Second, the format of the report could change. These two things change for different causes. The single-responsibility principle says that these two aspects of the problem are really two separate responsibilities, and should, therefore, be in separate classes or modules. It would be a bad design to couple two things that change for different reasons at different times.
> 
> The reason it is important to keep a class focused on a single concern is that it makes the class more robust. Continuing with the foregoing example, if there is a change to the report compilation process, there is a greater danger that the printing code will break if it is part of the same class.

As we evaluate our approach to solving problems through code, this principle encourages complicated classes to be divided into smaller classes that have explicit responsibilities. While this may seem like a fairly straight forward principle to follow, it is often difficult to put into practice if a class responsibility is not immediately clear. Martin has helped us capture the responsibility of a class by arguing that responsibility is a “reason to change.” Thus, you can identify bad design when there are multiple entities that change for different reasons.

This also helps to break the complexity when tackling business rules that needs to be implemented using the SDK building blocks. The same principle applies when constructing over the SDK objects and structures, helping the user to follow the path already estabilshed by following this principles used on the base implementations.

Inside the SDK, the [*S.O.L.I.D.*](https://en.wikipedia.org/wiki/SOLID) principles are applied to all implementations and you should be continue doing so when extend your own implementations from the existing in SDK.

## Idempotency
Idempotency is a word that often sometimes offer a confusing concept.

From a product point of view, we are asked to design our systems to be idempotent but, for some reasons out of our control, this is not always possible, either because we cannot control the outside services consumed by our implementations or most of times, there is technical debt outside the boundaries we can control through code implementation.

In software development, we can consider an operation idempotent when we make calls, being this calls to objects, internal structures, internal or external services, including API requests that provides the same response or result everytime the call is made with the same parameters.

There are also some benefits implementing some operations idempotent: There are no overload on the backend systems, since the operation is processed only once and its results are persisted. Any other call than the first one don't need and would not to be fully processed again. This also eliminates duplications of data transactions.

From a RESTful service standpoint, for an operation or service call to be idempotent, clients can make that same call repeatedly while producing the same result. In other words, making multiple identical requests has the same effect as making a single request. Note that while idempotent operations produce the same result on the server with no side effects, the response itself may not be the same. For example, a resource's state may change between requests.

The PUT and DELETE methods are defined to be idempotent. However, there is a caveat on DELETE. The problem with DELETE, which if successful would normally return a 200 (OK) or 204 (No Content), will often return a 404 (Not Found) on subsequent calls, unless the service is configured to "mark" resources for deletion without actually deleting them. However, when the service actually deletes the resource, the next call will not find the resource to delete it and return a 404. However, the state on the server is the same after each DELETE call, but the response is different.

GET, HEAD, OPTIONS and TRACE methods are defined as safe, meaning they are only intended for retrieving data. This makes them idempotent as well since multiple, identical requests will behave the same.

Finally, inside the SDK, this concept is implemented where the results can be persisted in-memory or to any other persistation layer, like a database, cache or files. Usually, all idempotent objects are also linked to a [Context](#contexts) since we want the same idempotent result and contexts provide this *share* state of information over the application layers.




