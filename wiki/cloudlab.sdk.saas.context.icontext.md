# IContext

Namespace: CloudLab.SDK.SaaS.Context

Represents the base environment for the objects that resides inside it and for which a policy can be enforced,
 which is the default building block for sharing information inside the application.

This type of context is a read-write informational context.

```csharp
public interface IContext : IContextId, CloudLab.SDK.SaaS.Core.IInitialization
```

Implements [IContextId](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.icontextid), [IInitialization](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.core.iinitialization)

**Remarks:**

A context is a place (object) where objects, properties and other information are grouped and become available to the
 application as a shared state. The responsability of a context is provide custom support to other objects or another contexts.

To simplify the user implementation, everything existing in a particular context, should be considered as a "session",
 which can have its own life cycle and its own behavior. The context lifecycle and behavior depends on the end-user implementation.

Also, a context can be used together with design-pattern and business concepts, like DDD (Domain Driven Design) or data concepts
 to create its behavior and define its necessary lifecycle for the application needs.

## Properties

### **Properties**

Gets or sets the custom-properties available of the context, representing a collection of
 key/value pairs, where the key is always a string, and the value is always an object.

```csharp
public abstract IDictionary<string, object> Properties { get; }
```

#### Property Value

[IDictionary&lt;String, Object&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2)<br>

## Methods

### **ToImmutableContext()**

Converts the read-write context to an immutable context.

```csharp
IImmutableContext ToImmutableContext()
```

#### Returns

[IImmutableContext](https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas.context.iimmutablecontext)<br>
Returns a  representing the converted read-only immutable
            context or null when the current context could not be converted to a read-only immutable context.
