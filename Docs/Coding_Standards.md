Naming Convention

Indentation

Comments

Function Names

Variable Names

Macros

Enums

Structures

File Header


## Module Design Rules

Every module shall:

- Expose only APP_<MODULE>_Init() in its header.
- Keep TaskHandle_t private using static.
- Keep task entry function private using static.
- Own all resources related to that module.
- Never expose internal variables.