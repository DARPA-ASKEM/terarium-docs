---
title: "Glossary"
---

# Glossary

## A&ndash;M

`Alignment`{ #alignment }

: A mapping from the features of a dataset to the [state variables](#state-variable), [parameters](#parameter), and [initial conditions](#initial-condition) of a [model](#model).  The alignment supports constructing [configurations](#configuration) of a [simulation](#simulation). The SIR compartmental model and a training dataset with features `truth-incident_cases`, `truth-incident_deaths`, `truth-incident_hospitalization` can have the following model-data alignment:

    ```json
    {
        "S": null,
        "I": null,
        "R": null,
        "I_obs": null,
        "N": null,
        "R_frac": null,
        "ℜ₀": null,
        "inc_I_obs": "truth-incident_cases",
        "inc_D": "truth-incident_deaths",
        "inc_H": "truth-incident_hospitalization"
    }
    ```

    ???+ note 

        Incident refers to *new* occurrences, while "prevalent" refers to *current* (new and preexisting) occurrences.

`Calibration`{ #calibration }

: A form of statistical inference for determining or updating the value (point estimate or posterior distribution) of [model](#model) [parameters](#parameter) given a reference dataset of observations. The result is typically selected to balance trade-offs between consistency with the modeler's expert knowledge and the "fit" of model [observables](#observable) to the dataset. In advanced cases, other selection criteria can include robustness to model misspecification, interpretability, focus on one statistical quantity of interest, and data privacy and security.

`Configuration`{ #configuration }

: Any set of values used as input for a [simulator](#simulator). A configuration is a simulation and model-specific representation of a [scenario](#scenario).

`Downscaling`{ #downscaling }

: In climate science, the process of combining high-resolution observational data with low-resolution models to generate high-resolution simulation results that would otherwise be too coarse to accurately capture the dynamics of large-scale phenomena such as hurricanes.

`Fitting`{ #fitting }

: See [Calibration](#calibration).

`Gene regulatory network`{ #gene-regulatory-network }

See [RegNet](#regnet).

`GNR`{ #GNR }

See [RegNet](#regnet).

`Hyperparameter`{ #hyperparameter }

: A quantity that's an input of a [simulator](#simulator). Hyperparameters can't be inferred from data and can impact the precision and accuracy of the resulting [simulation](#simulation). `loss`, `penalty`, and `tol` are hyperparameters of the [stochastic gradient descent algorithm](https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.SGDRegressor.html#sklearn.linear_model.SGDRegressor) :octicons-link-external-24:.

`Inference`{ #inference }

: See [Calibration](#calibration).

`Initial condition`{ #initial-condition }

: A [parameter](#parameter) that corresponds to the value of a [state variable](#state-variable) at a starting time point. In a [model](#model), there are as many initial conditions as state variables. `S₀`, `I₀`, and `R₀` are initial conditions of the SIR compartmental model.

`Lineage graph`{ #lineage-graph }

: A subgraph of the [provenance graph](#provenance-graph). A lineage graph tracks the versioning of an artifact, containing all the data processing steps that lead to its creation.

`Model`{ #model }

: An abstract representation that approximates the behavior of a system. For example, a set of ordinary differential equations can approximate the course of an epidemic.

`Model template`{ #modeling-template }

: A template is a piece of a model that depicts a common transition for a variable or group of variables. Model templates can be used to quickly edit or create a model. For each model framework, the available model templates make up a list of all the possible states and transitions.

    Depending on the modeling framework, available model templates may include: 

    - Natural conversion
    - Natural production
    - Natural degradation
    - Controlled conversion
    - Controlled production
    - Controlled degradation
    - Grouped controlled conversion
    - Grouped controlled production
    - Grouped controlled degradation
    - Natural replication
    - Controlled replication

`Modeling`{ #modeling }

: The process of building a [model](#model) or a [simulation](#simulation).

`Modeling framework`{ #modeling-framework }

: Examples include [PetriNets](#petrinet), [gene regulatory networks (regnets)](#regnet), [stock and flow diagrams](#stock-and-flow), and agent-based models (ABMs). Terarium uses the JSON serialization schemas defined in the [ASKEM Model Representations](https://github.com/DARPA-ASKEM/Model-Representations) :octicons-link-external-24: repository.

## N&ndash;Z

`Observable`{ #observable }

: A quantity of a system (and corresponding [model](#model)) that's measurable as an "observation" data point. The SIR compartmental model has the following observables:

    + `I_obs` (observed infected population)
    + `N` (total population)
    + `R_frac` (recovered population fraction)
    + `ℜ₀` ([basic reproduction ratio](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3157160/) :octicons-link-external-24:)
    + `inc_I_obs` (observed incident infection rate)

`Observation function`{ #observation-function }

: A function that maps [state variables](#state-variable) to an [observable](#observable), capturing knowledge such as the physics of the observation or measurement process and expert heuristics. For example: 

    ```
    I_obs = 0.50 * I
    N = S + I + R
    R_frac = R / N
    ℜ₀ = β * S / γ
    inc_I_ob = diff(I_obs(t), t)) * Heaviside(diff(I_obs(t), t))
    ```
    
    For convenience, an observation function may refer to observables in many cases.

`Operator` { #operator }

: An operator in the [workflow graph](#workflow-graph) is a node that can represent a model, dataset, or document or a scientific modeling process that modifies or executes project resources.

    Operators that perform scientific modeling processes have two configuration methods. A wizard view exposes the most common configuration options, while a notebook view provides a direct interface to writing and editing executable code. Additionally, an integrated AI assistant can generate code based on natural language input.


`Optimization`{ #optimization }

: The process of determining the values of variables that minimize or maximize some objectives subject to constraints. These variables typically represent possible `interventions` to achieve an outcome (for example, adjusting the duration of a masking policy to reduce the number of hospitalized individuals). In risk-based optimization under uncertainty (RBOUU), the objectives and constraints can be functions of distributions of model parameters and outputs. For example, the constraint that the probability of a super-spreader event never exceeds a threshold value.

    !!! note

        `Fitting` *can* involve optimization ("optimal fitting" and "constrained optimal fitting") but *not* necessarily (approximation with a "particle filter").

`Parameter`{ #parameter }

: A fixed quantity of a [model](#model). Parameters consist of the constants internal to the model. They can be inferred from data made from observations of the underlying system. `β` and `γ` are parameters of the SIR compartmental model and weights of an artificial neural network model.

`PetriNet`{ #petrinet }

: A PetriNet---or place/transition network---is a modeling framework that represents the dynamic behavior of a system. Circular nodes represent variables or places taken at states or compartments. Square nodes represent transitions. Edges between nodes show the flow of variables or places through various transitions.

    A PetriNet could, for example, represent populations of people transitioning between the different states in an SIR (susceptible/infected/recovered) model.

`Provenance graph`{ #provenance-graph }

: A directed graph constructed from all the artifacts created by the workflow (as nodes) and the [relations](https://github.com/DARPA-ASKEM/data-service/blob/main/graph_relations.json) :octicons-link-external-24: between them (as links):

    |    | Relation Type   | Source Node Type   | Target Node Type   |
    |---:|:----------------|:-------------------|:-------------------|
    |  0 | COPIED_FROM     | Model              | Model              |
    |  1 | COPIED_FROM     | ModelRevision      | ModelRevision      |
    |  2 | GLUED_FROM      | Model              | Model              |
    |    | ...             | ...                | ...                |
    | 32 | IS_CONCEPT_OF   | Concept            | Dataset            |

`RegNet`{ #regnet }

: A RegNet---or gene regulatory network (GNR)---is a modeling framework commonly used in systems biology. Nodes (or vertices) represent genes, proteins, or chemicals, while edges represent regulatory relationships or interactions between them.

`Result`{ #result }

: The output of a [simulation](#simulation) (partial or complete).

`Run`{ #run }

: An execution of a [simulation](#simulation).

`Scenario`{ #scenario }

: A natural-language description of the context, problems, or questions that require a modeling and simulation process.

    Given a scenario, you can construct a [simulation](#simulation) and a [configuration](#configuration) through modeling to execute a [run](#run) and generate a [result](#result). During a run, the [simulator](#simulator) has states and values (running time, memory usage) incidental to the simulation that are not considered part of the result, but that may influence future model and simulation selection.

`Simulating`{ #simulating }

: The process of executing a [simulation](#simulation) on a [simulator](#simulator).

`Simulation`{ #simulation }

: An executed instance of a [model](#model). A simulation suggests the behavior of the underlying system under specific conditions. What makes a model executable depends on the details of the model, the simulator, and the goals of the people involved. 

`Simulator`{ #simulator }

: A program that runs a [model](#model) with specific input values and generates output values.

`State variable`{ #state-variable }

: A varying quantity of a system and corresponding [model](#model). In combination with others, these variables can fully determine the "state" of the underlying system. `S`, `I`, and `R` are state variables of the SIR compartmental model.

`Stock and flow`{ #stock-and-flow }

: Stock and flow is a modeling framework commonly used in system dynamics. Nodes represent stocks or reservoirs that accumulate over time. Edges between stocks flow into valves that represent how accumulations change.

`Strata model`{ #strata-model }

: A [model](#model) that captures the fine-grained interactions between the different strata [state variables](#state-variable). 
Examples include infectious contact between subpopulations of different age groups and travel by individuals between different locations.

`Stratification`{ #stratification }

: The process of dividing the populations of a [model](#model) into subsets (subpopulations or strata), often along demographic characteristics such as age and location. The goal is to include more fine-grained interactions&mdash;those between the strata&mdash;into the model. 

    It is [herein](https://algebraicjulia.github.io/AlgebraicPetri.jl/dev/generated/covid/stratification/) :octicons-link-external-24: implemented as a kind of "typed" [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product_of_graphs) :octicons-link-external-24: between the graph representation of a model `P` and that of one or many "strata models" `Q`. The stratified model `G` has: 

    - A node for every pair of nodes in `P` and `Q` of the same type.
    - A link for every link in `P` or `Q` with the same pair of node types.

`Training`{ #training }

: See [Calibration](#calibration).

`Workflow graph`{ #workflow-graph }

: A data-flow diagram made up of high-level [operators](#operator) that represent resources and scientific modeling processes such as configure model, calibrate model, and simulate model.