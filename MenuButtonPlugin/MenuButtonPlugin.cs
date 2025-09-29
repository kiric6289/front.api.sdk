using System;
using System.Collections.Generic;
using Resto.Front.Api.Attributes;
using Resto.Front.Api;
using Resto.Front.Api.UI;
using Resto.Front.Api.Extensions;

namespace MenuButtonPlugin
{
    /// <summary>
    /// Простой плагин с кнопкой в меню дополнений
    /// </summary>
    [PluginLicenseModuleId(21016318)]
    public sealed class MenuButtonPlugin : IFrontPlugin
    {
        private readonly Stack<IDisposable> subscriptions = new Stack<IDisposable>();

        public MenuButtonPlugin()
        {
            PluginContext.Log.Info("MenuButtonPlugin инициализирован успешно!");
            
            // Добавляем кнопку в меню дополнений
            subscriptions.Push(PluginContext.Operations.AddButtonToPluginsMenu(
                "Тестовая кнопка плагина", 
                ShowTestDialog));
            
            PluginContext.Log.Info("Кнопка добавлена в меню дополнений");
        }

        public void Dispose()
        {
            while (subscriptions.Count > 0)
            {
                var subscription = subscriptions.Pop();
                subscription?.Dispose();
            }
            PluginContext.Log.Info("MenuButtonPlugin завершает работу");
        }

        private void ShowTestDialog((IViewManager vm, IReceiptPrinter printer) context)
        {
            try
            {
                PluginContext.Log.Info("Показываем тестовый диалог");
                
                context.vm.ShowOkPopup("Тестовая кнопка", "Плагин работает корректно!\n\nКнопка успешно добавлена в меню дополнений.");
                
                PluginContext.Log.Info("Тестовый диалог показан успешно");
            }
            catch (Exception ex)
            {
                PluginContext.Log.Error("Ошибка при показе диалога", ex);
            }
        }
    }
}
