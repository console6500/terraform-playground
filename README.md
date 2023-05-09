# terraform-playground

In Terraform, there are several resource actions that can be reported in a plan. The most common ones are:

- Created: A new resource will be created.
- Updated: An existing resource will be updated.
- Replaced: An existing resource will be replaced with a new one.
- Destroyed: An existing resource will be destroyed.
- No changes: The resource has not changed since the last Terraform run.

Additionally, there are a few less common actions that may appear in a plan:

- Tainted: A resource has been marked as tainted and will be recreated on the next Terraform run.
- Imported: An existing resource has been imported into Terraform state.
- Ignored: A resource has been ignored due to the ignore_changes setting in the configuration.
- Moved: A resource has been moved to a different location within the infrastructure.

It's worth noting that some of these actions, such as "tainted" and "ignored", are specific to Terraform and not used in other infrastructure-as-code tools.

