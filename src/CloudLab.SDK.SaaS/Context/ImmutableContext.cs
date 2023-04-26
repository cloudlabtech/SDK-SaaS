using System;
using System.Collections.Generic;
using System.Collections.Immutable;

namespace CloudLab.SDK.SaaS.Context;

/// <summary>
/// Represents the base environment for the objects that resides inside it and for which a policy can be enforced,
/// which is the default <b>building block</b> for sharing information inside the application.
/// <para><b>This type of context is a read-only immutable informational context.</b></para>
/// </summary>
/// <remarks>
/// <para>A context is a place (object) where objects, properties and other information are grouped and become available to the
/// application as a shared state. The responsability of a context is provide custom support to other objects or another contexts.</para>
/// <para>To simplify the user implementation, everything existing in a particular context, should be considered as a "session",
/// which can have its own life cycle and its own behavior. The context lifecycle and behavior depends on the end-user implementation.</para>
/// <para>Also, a context can be used together with design-pattern and business concepts, like DDD (Domain Driven Design) or data concepts
/// to create its behavior and define its necessary lifecycle for the application needs.</para>
/// </remarks>
public abstract class ImmutableContext : IImmutableContext {

    #region Ctor
    /// <summary>
    /// Initializes a new instance of the <see cref="ImmutableContext"/> class with the
    /// specified <see cref="Guid"/> and <see cref="Dictionary{TKey, TValue}"/> used as default
    /// values for the properties <see cref="ContextId"/> and <see cref="Properties"/>, respectively.
    /// 
    /// </summary>
    /// <param name="contextId">The Id of the context.</param>
    /// <param name="contextProperties">The custom-properties of the context.</param>
    public ImmutableContext(Guid contextId, Dictionary<string, object> contextProperties) {
#if NET6_0
        if (contextProperties is null) {
            throw new ArgumentNullException(nameof(contextProperties));
        }
#elif NET7_0
        ArgumentException.ThrowIfNullOrEmpty(nameof(contextProperties));
#endif

        ContextId = contextId;
        Properties = contextProperties.ToImmutableDictionary();
        IsInitialized = Initialize();
    }
    #endregion

    #region IImmutableContext
    /// <inheritdoc/>
    public IImmutableDictionary<string, object> Properties { get; private set; }

    /// <inheritdoc/>
    public Guid ContextId { get; }

    /// <inheritdoc/>
    public bool IsInitialized { get; }

    /// <inheritdoc/>
    public abstract bool Initialize();

    /// <inheritdoc/>
    public abstract IContext ToContext();
    #endregion

}