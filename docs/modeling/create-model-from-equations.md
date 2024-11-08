---
title: Create a model from equations
---

# Create a model from equations

You can create models from equations that: 

- Have been automatically extracted from literature (a document). 
- You enter in LaTeX format.
- You captured in a screenshot.

!!! note

    - Terarium's equation extractor is not optimized to handle every single way to represent a model. Therefore, it's recommended that you to check any extracted equations before using them to create a model.
    - When you modify equations extract from a document, your changes are only saved to the current Create model from equations operator.

<figure markdown>
![](../img/models/model-equations-resource.png)
<figcaption markdown>How it works: [Model Service](https://github.com/DARPA-ASKEM/model-service/blob/07ae21cae2d5465f9ac5b5bbbe6c7b28b7259f04/src/ModelService.jl#L54) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption>
</figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Document (optional)

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Model

</div>

## Recommended LaTeX format

<div class="grid cards" markdown>

-   __Derivatives__

    ---

    - Derivatives must be written in Leibniz notation (`\frac{d X}{d t}`). Convert any equations using Newton or Lagrange notation.
    - Place first-order derivatives to the left of the equal sign.

-   __Mathematical notations__

    ---

    Avoid using: 

    - `(t)` to denote time.
    - Superscripts and LaTeX superscripts `^`, particularly to denote sub-variables.
    - Parentheses.
    - Capital sigma (Σ) and pi (Π) notations for summation and product.
    - Homoglyphs (characters that look similar but have different meanings).

-   __Subscripts__

    ---

    Subscripts using LaTeX `_` are permitted, but ensure that all characters in the subscript are enclosed by curly brackets `{...}`.

-   __Variable names__

    ---

    Avoid words or multi-character names for variables. Instead, use camel case to represent multi-word or multi-character names.

-   __ASCII characters__

    ---

    Avoid using non-ASCII characters when possible.

-   __Symbolic notation for multiplication__

    ---

    Do not use `\cdot` or `*` to indicate multiplication. Instead, use whitespace between variables.

-   __Symbolic notation for multiplication__

    ---

    Avoid using symbolic notation for constants like `e` and `pi`. Instead, use their actual values (up to 3 decimal places).

</div>

## Create a model from equations extracted from a document

???+ list "To extract model equations from a document"

    1. Add the Document to a workflow graph.
    3. Hover over the output of the Document resource and click :octicons-plus-24:{ title="Link" aria-label="Link" } > **Create model from equations**.
    4. Click **Edit** on the Create model from equations operator.
    5. To customize the extracted equations: 
        - Edit the LaTeX expressions.
        - Clear a checkbox to remove an equation.
        - Use the text box to add LaTeX equations to enter a new equation and click **Add**.
    6. Choose the **framework** for the new model.
    7. Click **Run**.
    8. Review the model preview and click **Save as new model**.

## Create a model by uploading or entering equations

???+ list "To create a model from manually entered equations"

    1. Right-click anywhere on the workflow graph and select **Modeling** > **Create model from equations**.
    2. Click **Edit** on the Create model from equations operator.
    3. Use the text box to add LaTeX equations to enter a new equation and click **Add**.
    5. Repeat step 3 for each equation you want to add.
    6. Enter a name for the new model and click **Run**.