using System;
using System.Collections.Generic;

namespace CloudLab.SDK.Context;

/// <summary>
/// Represents the base environment for the objects that resides inside it and for which a policy can be enforced,
/// which is the default <b>building block</b> for sharing information inside the application.
/// <para><b>This type of context is a read-write informational context.</b></para>
/// </summary>
/// <remarks>
/// <para>A context is a place (object) where objects, properties and other information are grouped and become available to the
/// application as a shared state. The responsability of a context is provide custom support to other objects or another contexts.</para>
/// <para>To simplify the user implementation, everything existing in a particular context, should be considered as a "session",
/// which can have its own life cycle and its own behavior. The context lifecycle and behavior depends on the end-user implementation.</para>
/// <para>Also, a context can be used together with design-pattern and business concepts, like DDD (Domain Driven Design) or data concepts
/// to create its behavior and define its necessary lifecycle for the application needs.</para>
/// </remarks>
public abstract class Context : IContext {

    #region Ctor
    /// <summary>
    /// Initializes a new instance of the <see cref="Context"/> class.
    /// </summary>
    public Context() {
        IsInitialized = Initialize();
    }
    #endregion

    #region IContext
    /// <inheritdoc/>
    public virtual IDictionary<string, object> Properties { get; private set; } = new Dictionary<string, object>();

    /// <inheritdoc/>
    public virtual Guid ContextId { get; set; } = Guid.NewGuid();

    /// <inheritdoc/>
    public virtual bool IsInitialized { get; } = false;

    /// <inheritdoc/>
    public abstract bool Initialize();

    /// <inheritdoc/>
    public abstract IImmutableContext ToImmutableContext();
    #endregion

}
