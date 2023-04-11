namespace CloudLab.SDK.Context;

/// <summary>
/// Represents the implementation contract for classes that supports initialization.
/// </summary>
public interface IInitialization {
    /// <summary>
    /// Gets or sets if the instance was already initialized.
    /// </summary>
    bool IsInitialized { get; }

    /// <summary>
    /// Initializes the object instance.
    /// </summary>
    /// <returns>Returns <c>true</c> when the object was successfully initialized; <c>false</c> otherwise.</returns>
    bool Initialize();
}
