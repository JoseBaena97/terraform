# Rebase de commits en el proyecto Terraform

## Pasos realizados:
1. Realicé tres commits con mensajes poco claros
2. Ejecuté `git rebase -i HEAD~3` para reescribir los últimos 3 commits.
3. Cambié el primer commit a `reword` para editar su mensaje.
4. Fusioné los otros dos commits usando `squash`.
5. Subí los cambios con `git push --force origin main`.
