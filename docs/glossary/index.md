---
title: "Glossary"
---

## Models

`Model`{ #model }

: An abstract representation that approximates the behavior of a system. For example, a set of ordinary differential equations can approximate the course of an epidemic.

`Modeling`{ #modeling }

: The process of building a [model](#model) or a [simulation](#simulation).

`Modeling framework`{ #modeling-framework }

: Examples include petri nets, gene regulatory networks (regnets), and agent-based models (ABMs). Terarium uses the JSON serialization schemas defined in the [ASKEM Model Representations](https://github.com/DARPA-ASKEM/Model-Representations) repository.

`Simulation`{ #simulation }

: An executed instance of a [model](#model). A simulation suggests the behavior of the underlying system under specific conditions. What makes a model executable depends on the details of the model, the simulator, and the goals of the people involved. 

`Simulator`{ #simulator }

: A program that runs a [model](#model) with specific input values and generates output values.

## Scenarios

`Scenario`{ #scenario }

: A natural-language description of the context, problems, or questions that necessitate a modeling and simulation process.

    Given a scenario, you can construct a [simulation](#simulation) and a [configuration](#configuration) through modeling to execute a [run](#run) and generate a [result](#result). During a run, the [simulator](#simulator) has states and values (running time, memory usage) incidental to the simulation that are not considered part of the result, but that may influence future model and simulation selection.

`Configuration`{ #configuration }

: Any set of values used as input for a [simulator](#simulator). A configuration is a simulation and model-specific representation of a [scenario](#scenario).

`Run`{ #run }

: An execution of a [simulation](#simulation).

`Result`{ #result }

: The output of a [simulation](#simulation) (partial or complete).

`Simulating`{ #simulating }

: The process of executing a [simulation](#simulation) on a [simulator](#simulator).

## Variables

`State variable`{ #state-variable }

: A varying quantity of a system and corresponding model. In combination with others, these variables can fully determine the "state" of the underlying system. `S`, `I`, and `R` are state variables of the SIR compartmental model.

`Parameter`{ #parameter }

: A fixed quantity of a model. Parameters consist of the constants internal to the model. They can be inferred from data made from observations of the underlying system. `β` and `γ` are parameters of the SIR compartmental model and weights of an artificial neural network model.

`Hyperparameter`{ #hyperparameter }

: A quantity that is an input of a simulator. Hyperparameters cannot be inferred from data and can impact the precision and accuracy of the resulting simulation. `loss`, `penalty`, and `tol` are hyperparameters of the [stochastic gradient descent algorithm](https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.SGDRegressor.html#sklearn.linear_model.SGDRegressor).

`Initial condition`{ #initial-condition }

: A parameter that corresponds to the value of a state variable at a starting time point. In a model, there are as many initial conditions as state variables. `S₀`, `I₀`, and `R₀` are initial conditions of the SIR compartmental model.

## Observables

`Observable`{ #observable }

: A quantity of a system (and corresponding model) that can be measured as an "observation" data point. The SIR compartmental model has the following observables:

    + `I_obs` (observed infected population)
    + `N` (total population)
    + `R_frac` (recovered population fraction)
    + `ℜ₀` ([basic reproduction ratio](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3157160/))
    + `inc_I_obs` (observed incident infection rate)

`Observation function`{ #observation-function }

: A function that maps state variables to an observable, capturing knowledge such as the physics of the observation or measurement process and expert heuristics. For example: 

    ```
    I_obs = 0.50 * I
    N = S + I + R
    R_frac = R / N
    ℜ₀ = β * S / γ
    inc_I_ob = diff(I_obs(t), t)) * Heaviside(diff(I_obs(t), t))
    ```
    
    For convenience, an observation function may refer to observables in many cases.

`Alignment`{ #alignment }

: A mapping from the features of a dataset to the state variables, parameters, and initial conditions of model.  The alignment supports constructing configurations of a simulation. The SIR compartmental model and a training dataset with features `truth-incident_cases`, `truth-incident_deaths`, `truth-incident_hospitalization` can have the following model-data alignment:

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

## Fitting

`Calibration`{ #calibration }

: A form of statistical inference for determining or updating the value (point estimate or posterior distribution) of model parameters in light of a reference dataset of observations. The result is typically selected to balance tradeoffs between consistency with the modeler's expert knowledge and the "fit" of model observables to the dataset. In advanced cases, other selection criteria can include robustness to model misspecification, interpretability, focus on one statistical quantity of interest, and data privacy and security.

`Fitting`{ #fitting }

: See [Calibration](#calibration).

`Inference`{ #inference }

: See [Calibration](#calibration).

`Optimization`{ #optimization }

: The process of determining the values of some variable(s) that minimize or maximize some objective(s) subject to some constraints. In the ASKEM context, these variables typically represent possible `interventions` to achieve a desired outcome, e.g. duration of a masking policy with respect to minimizing the number of hospitalized individuals. In the case of "risk-based optmization under uncertainty" (RBOUU), the objectives and constraints may be functions of distributions of model parameters and outputs, e.g. the constraint that the probability of a superspreader event never exceeds some threshold value.

    !!! note

        `Fitting` *can* involve optimization (e.g. "optimal fitting" and "constrained optimal fitting") but *not* necessarily (e.g. approximation with a "particle filter").

`Training`{ #training }

: See [Calibration](#calibration).

## Stratification

`Stratification`{ #stratification }

: The process of dividing the populations of a model into subsets (subpopulations or strata), often into demographic characteristics such as age and location. The goal is to include more fine-grained interactions&mdash;those between the strata&mdash;into the model. 
It is [herein](https://algebraicjulia.github.io/AlgebraicPetri.jl/dev/generated/covid/stratification/stratification/) implemented as 
a kind of "typed" [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product_of_graphs) between the graph representation of a model `P` and that of one or many "strata model(s)" `Q`: the stratified model `G` has a node for every pair of nodes in `P` and `Q` of the same type and a link for every link in `P` or `Q` with the same pair of node types.

`Strata model`{ #strata-model }

: A model that captures the fine-grained interactions between the different strata state variables. 
Examples include infectious contact between subpopulations of different age groups and travel by individuals between different locations.


## Graphs

`Workflow graph`{ #workflow-graph }

: A high-level data-flow diagram that only shows the major steps of requiring user input such as configure model, calibrate model, and simulate model. 

`Provenance graph`{ #provenance-graph }

: A directed graph constructed from all the artifacts created by the workflow (as nodes) and the [relations](https://github.com/DARPA-ASKEM/data-service/blob/main/graph_relations.json) between them (as links):

    |    | Relation Type   | Source Node Type   | Target Node Type   |
    |---:|:----------------|:-------------------|:-------------------|
    |  0 | COPIED_FROM     | Model              | Model              |
    |  1 | COPIED_FROM     | ModelRevision      | ModelRevision      |
    |  2 | GLUED_FROM      | Model              | Model              |
    |    | ...             | ...                | ...                |
    | 32 | IS_CONCEPT_OF   | Concept            | Dataset            |


`Lineage graph`{ #lineage-graph }

: A subgraph of the provenance graph. A lineage graph tracks the versioning of an artifact, containing all the data processing steps that lead to its creation.