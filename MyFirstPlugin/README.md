# MinimalPlugin - Минимальный плагин для iikoFront API v9

Это простой тестовый плагин, демонстрирующий базовую структуру плагина для iikoFront API v9.

## Структура файлов

- `MinimalPlugin.cs` - основной класс плагина
- `MinimalPlugin.csproj` - файл проекта .NET
- `Manifest.xml` - манифест плагина (обязательный для V9)
- `bin/Debug/net472/MinimalPlugin.dll` - скомпилированный плагин

## Установка

1. Скопируйте папку `MyFirstPlugin` в папку `Plugins` приложения iikoFront
2. Убедитесь, что в папке есть файлы:
   - `MinimalPlugin.dll`
   - `Manifest.xml`
3. Перезапустите iikoFront

## Особенности

- Использует `LicenseModuleId = 0` (без лицензионных ограничений)
- Логирует сообщения при инициализации и завершении работы
- Реализует интерфейс `IFrontPlugin`
- Совместим с iikoFront API v9

## Сборка

```bash
dotnet build MinimalPlugin.csproj
```

## Логи

Плагин выводит следующие сообщения в лог iikoFront:
- "MinimalPlugin инициализирован успешно!" - при запуске
- "MinimalPlugin завершает работу" - при остановке
