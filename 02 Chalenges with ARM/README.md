Traditional Azure Resource Manager (ARM) templates, while powerful, can pose several challenges for developers, especially those who are new to cloud technologies or Infrastructure as Code (IaC) practices. Here are some common challenges associated with traditional ARM templates:

1. **Verbosity**: ARM templates are written in JSON, which can be verbose and repetitive, leading to larger and harder-to-read files. This verbosity can make it challenging to quickly understand the purpose and structure of the template.

2. **Complexity**: ARM templates can become complex, especially for large and intricate infrastructure deployments. Managing complex templates with multiple resources, dependencies, and configurations can be daunting and error-prone.

3. **Limited Abstraction**: JSON's lack of abstraction makes it difficult to reuse code and maintain consistency across templates. Developers often find themselves copying and pasting code segments, leading to duplication and potential inconsistencies.

4. **Limited Tooling Support**: While there are tools and extensions available for editing ARM templates, the support may not be as comprehensive or user-friendly as other programming languages or formats. This limited tooling can hinder developer productivity and make it harder to debug and troubleshoot issues.

5. **Learning Curve**: Learning to author ARM templates effectively requires understanding not only the JSON syntax but also the specific structure and schema required by ARM. This learning curve can be steep for developers who are new to cloud technologies or accustomed to other programming languages.

6. **Static Typing**: ARM templates lack static typing, making it challenging to catch errors and validate configurations during development. Developers may need to rely on manual testing or deploy-and-observe practices to identify issues, leading to longer development cycles and potential production issues.

7. **Versioning and Source Control**: Managing versioning and source control for ARM templates can be challenging, especially in team environments. Traditional source control systems may not provide the same level of granularity and collaboration features as software code repositories.

8. **Limited Expressiveness**: While ARM templates offer a wide range of capabilities for defining Azure resources, they may lack certain features or expressiveness compared to higher-level programming languages. This limitation can make it challenging to implement advanced logic or dynamic configurations in templates.

Addressing these challenges is where Azure Bicep comes in, as it aims to simplify the authoring and management of Azure infrastructure by providing a more concise, readable, and developer-friendly DSL (domain-specific language) on top of ARM templates.