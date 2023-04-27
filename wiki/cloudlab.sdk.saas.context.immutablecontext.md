# ImmutableContext

Namespace: CloudLab.SDK.SaaS.Context

Represents the base environment for the objects that resides inside it and for which a policy can be enforced,
 which is the default building block for sharing information inside the application.

This type of context is a read-only immutable informational context.

```csharp
public abstract class ImmutableContext : IImmutableContext, IContextId, CloudLab.SDK.SaaS.Core.IInitialization
```

Inheritance [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object) → [ImmutableContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.immutablecontext.md)<br>
Implements [IImmutableContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.iimmutablecontext.md), [IContextId](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.icontextid.md), [IInitialization](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.core.iinitialization.md)

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
public IImmutableDictionary<string, object> Properties { get; private set; }
```

#### Property Value

IImmutableDictionary&lt;String, Object&gt;<br>

### **ContextId**

```csharp
public Guid ContextId { get; }
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

### **ImmutableContext(Guid, Dictionary&lt;String, Object&gt;)**

Initializes a new instance of the [ImmutableContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.immutablecontext.md) class with the
 specified [Guid](https://docs.microsoft.com/en-us/dotnet/api/system.guid) and [Dictionary&lt;TKey, TValue&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.dictionary-2) used as default
 values for the properties [ImmutableContext.ContextId](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.immutablecontext.md#contextid) and [ImmutableContext.Properties](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.immutablecontext.md#properties), respectively.

```csharp
public ImmutableContext(Guid contextId, Dictionary<string, object> contextProperties)
```

#### Parameters

`contextId` [Guid](https://docs.microsoft.com/en-us/dotnet/api/system.guid)<br>
The Id of the context.

`contextProperties` [Dictionary&lt;String, Object&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.dictionary-2)<br>
The custom-properties of the context.

## Methods

### **Initialize()**

```csharp
public abstract bool Initialize()
```

#### Returns

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean)<br>

### **ToContext()**

```csharp
public abstract IContext ToContext()
```

#### Returns

[IContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.icontext.md)<br>
