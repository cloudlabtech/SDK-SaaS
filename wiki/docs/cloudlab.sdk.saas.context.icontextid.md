# IContextId

Namespace: CloudLab.SDK.SaaS.Context

Represents the implementation contract for the ContextId properties.

```csharp
public interface IContextId
```

## Properties

### **ContextId**

Gets or sets the Id of the current context.

```csharp
public abstract Guid ContextId { get; }
```

#### Property Value

[Guid](https://docs.microsoft.com/en-us/dotnet/api/system.guid)<br>

**Remarks:**

The value of this property should be unique and should be used to implement idempotency.
