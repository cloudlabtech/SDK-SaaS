# Context

Namespace: CloudLab.SDK.SaaS.Context

Represents the base environment for the objects that resides inside it and for which a policy can be enforced,
 which is the default building block for sharing information inside the application.

This type of context is a read-write informational context.

```csharp
public abstract class Context : IContext, IContextId, CloudLab.SDK.SaaS.Core.IInitialization
```

Inheritance [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object) → [Context](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.context.md)<br>
Implements [IContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.icontext.md), [IContextId](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.icontextid.md), [IInitialization](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.core.iinitialization.md)

**Remarks:**

A context is a place (object) where objects, properties and other information are grouped and become available to the
 application as a shared state. The responsability of a context is provide custom support to other objects or another contexts.

To simplify the user implementation, everything existing in a particular context, should be considered as a "session",
 which can have its own life cycle and its own behavior. The context lifecycle and behavior depends on the end-user implementation.

Also, a context can be used together with design-pattern and business concepts, like DDD (Domain Driven Design) or data concepts
 to create its behavior and define its necessary lifecycle for the application needs.

## Properties

### **Properties**

```csharp
public IDictionary<string, object> Properties { get; private set; }
```

#### Property Value

[IDictionary&lt;String, Object&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2)<br>

### **ContextId**

```csharp
public Guid ContextId { get; set; }
```

#### Property Value

[Guid](https://docs.microsoft.com/en-us/dotnet/api/system.guid)<br>

### **IsInitialized**

```csharp
public bool IsInitialized { get; }
```

#### Property Value

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean)<br>

## Constructors

### **Context()**

Initializes a new instance of the [Context](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.context.md) class.

```csharp
public Context()
```

## Methods

### **Initialize()**

```csharp
public abstract bool Initialize()
```

#### Returns

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean)<br>

### **ToImmutableContext()**

```csharp
public abstract IImmutableContext ToImmutableContext()
```

#### Returns

[IImmutableContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.iimmutablecontext.md)<br>
