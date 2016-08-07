LEA Coreference Scorer
======================

Implementation of the **LEA** coreference evaluation metric integrated into the CoNLL official scorer v8.01.

Description
-----------

LEA is a Link-Based Entity-Aware metric that is designed to overcome the shortcomings of the previous evaluation metrics.
For each entity, **LEA** considers how important the entity is and how well it is resolved, i.e. importance(entity) * resolution-score(entity).

The number of unique links in an entity with :math:`n` mentions is :math:`links_{entity} = n * (n-1)/2`.
The resolution score of an entity is computed as the fraction of correctly resolved coreference links.
In this implementation, we consider the size of an entity as a measure of importance, i.e. :math:`importance_{entity} = |entity|`.
Therefore, the more prominent entities of the text get higher importance values.
However, according to the end-task or domain used, one can choose other importance measures based on other factors like the entity type or the included mention types.
