using System;

namespace CloudLab.SDK.SaaS.Context;

/// <summary>
/// Represents the implementation contract for the ContextId properties.
/// </summary>
public interface IContextId {
    /// <summary>
    /// Gets or sets the Id of the current context.
    /// </summary>
    /// <remarks>The value of this property should be unique and should be used to implement idempotency.</remarks>
    Guid ContextId { get; }
}
