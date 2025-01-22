using System;
using System.Collections.Generic;
using System.Text;

namespace App45W.Interface
{
    public enum ConnectionType
    {
        Wifi, Mobile, nothing
    }
    public interface IConnectionStatus
    {
        ConnectionType connectionType { get; }
        bool isConnected { get; }
    }
}
