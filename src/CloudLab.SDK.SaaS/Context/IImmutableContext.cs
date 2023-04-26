using System.Collections.Immutable;
using CloudLab.SDK.SaaS.Core;

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
public interface IImmutableContext : IContextId, IInitialization {
    /// <summary>
    /// Gets the custom-properties available of the context, representing a collection of
    /// key/value pairs, where the key is always a string, and the value is always an object.
    /// </summary>
    /// <remarks>This collection is immutable and cannot be changed in runtime. To initialize the 
    /// <see cref="ImmutableDictionary{TKey, TValue}"/>, use the default class constructor.</remarks>
    IImmutableDictionary<string, object> Properties { get; }

    /// <summary>
    /// Converts the immutable context to a read-write context.
    /// </summary>
    /// <returns>Returns a <see cref="IContext"/> representing the converted read-write context or 
    /// <c>null</c> when the current context could not be converted to a read-write context.</returns>
    IContext ToContext();
}
