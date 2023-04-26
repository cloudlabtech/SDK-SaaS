# IImmutableContext

Namespace: CloudLab.SDK.SaaS.Context

Represents the base environment for the objects that resides inside it and for which a policy can be enforced,
 which is the default building block for sharing information inside the application.

This type of context is a read-only immutable informational context.

```csharp
public interface IImmutableContext : IContextId, CloudLab.SDK.SaaS.Core.IInitialization
```

Implements [IContextId](./cloudlab.sdk.saas.context.icontextid.md), [IInitialization](./cloudlab.sdk.saas.core.iinitialization.md)

**Remarks:**

A context is a place (object) where objects, properties and other information are grouped and become available to the
 application as a shared state. The responsability of a context is provide custom support to other objects or another contexts.

To simplify the user implementation, everything existing in a particular context, should be considered as a "session",
 which can have its own life cycle and its own behavior. The context lifecycle and behavior depends on the end-user implementation.

Also, a context can be used together with design-pattern and business concepts, like DDD (Domain Driven Design) or data concepts
 to create its behavior and define its necessary lifecycle for the application needs.

## Properties

### **Properties**

Gets the custom-properties available of the context, representing a collection of
 key/value pairs, where the key is always a string, and the value is always an object.

```csharp
public abstract IImmutableDictionary<string, object> Properties { get; }
```

#### Property Value

IImmutableDictionary&lt;String, Object&gt;<br>

**Remarks:**

This collection is immutable and cannot be changed in runtime. To initialize the 
 , use the default class constructor.

## Methods

### **ToContext()**

Converts the immutable context to a read-write context.

```csharp
IContext ToContext()
```

#### Returns

[IContext](./cloudlab.sdk.saas.context.icontext.md)<br>
Returns a  representing the converted read-write context or 
            null when the current context could not be converted to a read-write context.
