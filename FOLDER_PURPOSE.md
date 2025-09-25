# Flutter Clean Architecture Template

This document explains the folder structure, purpose, and usage for this Flutter project template.

---

## /lib/core
Contains **core functionality used across the app**, independent of any feature.

### /config
- `app_routes.dart` → Define named routes for navigation.
- `app_theme.dart` → App-wide theme definitions (colors, typography, etc.).
- `environment.dart` → Environment-specific configurations (dev, prod, staging).

### /error
- `exceptions.dart` → Define custom exceptions for error handling.
- `failures.dart` → Standardized failure classes for domain or data layer.

### /network
- `api_client.dart` → Handles all HTTP requests and network configuration.

### /services
- `local_storage.dart` → Wrapper for local persistence (shared_preferences, Hive, etc.).
- `notification_service.dart` → Push notifications or local notifications handling.

---

## /lib/shared
Contains **reusable code across multiple features**.

### /constants
- `strings.dart` → App-wide string constants.
- `assets.dart` → Paths to images, icons, fonts, etc.

### /utils
- `validators.dart` → Form and input validation functions.
- `date_utils.dart` → Date formatting and manipulation helpers.

### /widgets
- `app_button.dart` → Reusable button widget.
- `app_text_field.dart` → Reusable text input field widget.
- `app_loader.dart` → Generic loading indicator widget.

---

## /lib/features
Contains **self-contained features**, each with its own data, domain, and presentation layers.

### Structure per feature (`features/feature_name/`):

#### /data
- `/models` → Data models returned by APIs or databases.  
  Example: `sample_model.dart`.
- `/repositories` → Feature-specific repository implementations.  
  Example: `sample_repository_impl.dart`.
- `/datasources` → Remote or local data sources.  
  Example: `sample_remote_datasource.dart`.

#### /domain
- `/entities` → Core business objects for the feature.  
  Example: `sample_entity.dart`.
- `/usecases` → Feature-specific business logic operations.  
  Example: `sample_usecase.dart`.

#### /presentation
- `/screens` → UI pages/screens for this feature.  
  Example: `sample_screen.dart`.
- `/widgets` → Reusable widgets specific to this feature.  
  Example: `sample_widget.dart`.
- `/bloc` → State management files (Bloc or Cubit).  
  Example: `sample_bloc.dart`.

---

## Usage Guidelines

1. **Adding a new feature**:
    - Copy `features/feature_name/` template.
    - Rename `feature_name` to your feature (e.g., `auth`, `profile`).
    - Update model, entity, usecase, repository, and UI as needed.

2. **Using shared/common code**:
    - Import `shared/widgets` for reusable UI components.
    - Import `shared/utils` for utilities like validators or date helpers.
    - Import `shared/constants` for strings or asset paths.

3. **Core services**:
    - Use `core/services` for app-wide functionality like storage or notifications.
    - Use `core/network/api_client.dart` for all API calls.

---

This structure enforces **clean architecture principles**: separation of concerns, modularity, and maintainability.
