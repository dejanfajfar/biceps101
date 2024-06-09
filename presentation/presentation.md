%title: Azure Bicep 101
%author: dfajfar

# Azure Bicep 101


----

# What is Bicep

- Bicep is a domain-specific language (DSL) for deploying Azure resources.
- It provides a declarative syntax that simplifies the authoring and management of Azure Resource Manager (ARM) templates.
- Bicep files are compiled into ARM templates, which are then deployed to Azure.
- It offers a more concise and readable syntax compared to JSON-based ARM templates.
- Bicep supports all Azure resource types and features, including the latest Azure services and capabilities.
- It provides better tooling support, including IntelliSense, code navigation, and validation, making it easier to develop and maintain infrastructure-as-code solutions.
- Bicep is an open-source project and is actively maintained by Microsoft.

----

# Code formatting 


```
struct User {
    name: String,
    surname: String,
}

fn main() {
    let user = User {
        name: String::from("John"),
        surname: String::from("Doe"),
    };

    // Accessing user's name and surname
    println!("Name: {}", user.name);
    println!("Surname: {}", user.surname);
}
```