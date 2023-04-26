# IInitialization

Namespace: CloudLab.SDK.SaaS.Core

Represents the implementation contract for classes that supports initialization.

```csharp
public interface IInitialization
```

## Properties

### **IsInitialized**

Gets or sets if the instance was already initialized.

```csharp
public abstract bool IsInitialized { get; }
```

#### Property Value

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean)<br>

## Methods

### **Initialize()**

Initializes the object instance.

```csharp
bool Initialize()
```

#### Returns

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean)<br>
Returns true when the object was successfully initialized; false otherwise.
