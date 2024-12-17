using System.Diagnostics;
using BulletMLLib.SharedProject.Nodes;

namespace BulletMLLib.SharedProject.Tasks;

/// <summary>
/// This task sets the direction of a bullet
/// </summary>
public class SetDirectionTask : BulletMLTask
{
    #region Methods

    /// <summary>
    /// Initializes a new instance of the <see cref="BulletMLTask"/> class.
    /// </summary>
    /// <param name="node">Node.</param>
    /// <param name="owner">Owner.</param>
    public SetDirectionTask(DirectionNode node, BulletMLTask owner)
        : base(node, owner)
    {
        Debug.Assert(null != Node);
        Debug.Assert(null != Owner);
    }

    #endregion //Methods
}