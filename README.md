# iikoFront API SDK - Плагины

Этот репозиторий содержит примеры плагинов для iikoFront API v9.

## 📁 Структура проекта

```
front.api.sdk/
├── MyFirstPlugin/           # Простой минимальный плагин
├── MenuButtonPlugin/        # Плагин с кнопкой в меню дополнений
├── build-*.bat             # Windows батники для сборки
└── docs/                   # Документация API
```

## 🚀 Быстрый старт

### 1. Минимальный плагин (MyFirstPlugin)
```bash
# Windows
build-minimal.bat
```

### 2. Плагин с кнопкой в меню (MenuButtonPlugin)
```bash
# Windows
build-menubutton.bat
```

### 2. Плагин кассовой смены (CashShiftPlugin)
```bash
# macOS/Linux
./build-cashshift.sh

# Windows
build-cashshift.bat
```

## 📋 Доступные плагины

### 1. MyFirstPlugin - Минимальный плагин
**Описание**: Простейший плагин для изучения основ iikoFront API
**Файлы**:
- `MyFirstPlugin/MinimalPlugin.cs`
- `MyFirstPlugin/Manifest.xml`
- `MyFirstPlugin/MinimalPlugin.csproj`

**Функции**:
- ✅ Базовая инициализация плагина
- ✅ Логирование в iikoFront
- ✅ Совместимость с API v9

### 2. CashShiftPlugin - Плагин кассовой смены
**Описание**: Полнофункциональный плагин для автоматического открытия кассовой смены
**Файлы**:
- `CashShiftPlugin/SimpleCashShiftPlugin.cs`
- `CashShiftPlugin/CashShiftSettings.cs`
- `CashShiftPlugin/Manifest.xml`
- `CashShiftPlugin/SimpleCashShiftPlugin.csproj`

**Функции**:
- ✅ Кнопка в меню дополнений iikoFront
- ✅ Диалог настроек с текущей конфигурацией
- ✅ Выбор реальных кассовых регистраторов из системы
- ✅ Настройка времени открытия смены через стандартное окно выбора времени
- ✅ Автоматическое открытие по таймеру
- ✅ Уведомления пользователя
- ✅ Подробное логирование
- ✅ Сохранение настроек

## 🛠️ Скрипты сборки

### Windows (BAT файлы):
- `build-minimal.bat` - Сборка минимального плагина
- `build-cashshift.bat` - Полная сборка плагина кассовой смены
- `build-quick.bat` - Быстрая сборка
- `clean.bat` - Очистка артефактов сборки

### macOS/Linux (Shell скрипты):
- `build-minimal.bat` - Сборка минимального плагина
- `build-cashshift.sh` - Полная сборка плагина кассовой смены
- `build-quick.sh` - Быстрая сборка
- `clean.sh` - Очистка артефактов сборки

## 📖 Документация

- `BUILD_INSTRUCTIONS.md` - Подробные инструкции по сборке
- `CashShiftPlugin/README.md` - Документация плагина кассовой смены
- `MyFirstPlugin/README.md` - Документация минимального плагина
- `docs/` - Официальная документация iikoFront API

## 🔧 Требования

- .NET Framework 4.7.2 или выше
- iikoFront API v9
- Windows (для iikoFront)
- macOS/Linux (для разработки)

## 📦 Установка плагинов

1. Скомпилируйте плагин используя соответствующий скрипт
2. Скопируйте файлы в папку Plugins iikoFront:
   - `*.dll` - основной файл плагина
   - `Manifest.xml` - манифест плагина
3. Перезапустите iikoFront
4. Плагин появится в меню "Дополнения"

## 🐛 Устранение проблем

### Ошибки компиляции:
1. Запустите скрипт очистки (`clean.bat` или `./clean.sh`)
2. Запустите полную сборку
3. Проверьте сообщения об ошибках

### Плагин не загружается:
1. Проверьте правильность копирования файлов
2. Убедитесь в совместимости версии iikoFront
3. Проверьте логи iikoFront
4. Убедитесь в наличии необходимых лицензий

## 📝 Лицензии

- **MyFirstPlugin**: LicenseModuleId = 21016318
- **CashShiftPlugin**: LicenseModuleId = 21016318

## 🤝 Поддержка

При возникновении проблем:
1. Проверьте логи iikoFront
2. Убедитесь в правильности установки
3. Проверьте совместимость версий
4. Обратитесь к документации API

## 📚 Полезные ссылки

- [Официальная документация iikoFront API](https://api-ru.iiko.services/)
- [Примеры плагинов](https://github.com/iiko/iiko-front-api-samples)
- [Сообщество разработчиков](https://community.iiko.com/)

---

**Версия**: 1.0.0  
**API**: iikoFront v9  
**Последнее обновление**: Сентябрь 2025