using System;
using Resto.Front.Api.Attributes;
using Resto.Front.Api;

namespace MyFirstPlugin
{
    /// <summary>
    /// Минимальный тестовый плагин для iikoFront API v9
    /// </summary>
    [PluginLicenseModuleId(21016318)]
    public sealed class MinimalPlugin : IFrontPlugin
    {
        public MinimalPlugin()
        {
            PluginContext.Log.Info("MinimalPlugin инициализирован успешно!");
        }

        public void Dispose()
        {
            PluginContext.Log.Info("MinimalPlugin завершает работу");
        }
    }
}
