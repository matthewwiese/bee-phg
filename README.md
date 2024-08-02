# Bee PHG
Testing an idea related to [VSH](https://www.ars.usda.gov/southeast-area/baton-rouge-la/honeybeelab/docs/varroa-sensitive-hygiene-vsh/) - work in progress

Currently focused on using all available genomes on NCBI to build the PHG and [BioProject PRJNA605407](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA605407) short reads for imputation.

* [Genome-wide patterns of differentiation within and among U.S. commercial honey bee stocks](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7545854/)
    * This is the publication associated with the reads I'm using
    * Page 6 - 7:
        > CSS scores improve the power to detect and resolve selection signals and localize candidate regions involved in traits experiencing selection pressure. Regions under selection shared by Minnesota Hygienic, Pol-line, Hilo, and Russian stocks provide actionable targets for future research and breeding. Our annotation using haplotype blocks identified 46 of the 58,333 [23] that were shared among the four stocks with a strong signal of selection providing evidence of a common selection signal among stocks associated with mite- and disease-resistance traits. However, there remains an unlikely possibility that a CSS signal may arise of a specific region that is highly selected in only the Italian stocks and not of the other populations. Though we feel that it is more likely that the research stocks are arriving at a shared resistance given the intent of their respective programs.

    * Table 4 spread between page 8 and 9 of great interest
* [Sequence-based genome-wide association studies reveal the polygenic architecture of Varroa destructor resistance in Western honey bees Apis mellifera](https://www.biorxiv.org/content/10.1101/2024.02.16.580755v3)
    * Varroa resistance is polygenic, with 60 genetic markers having significant impact
    * Their code: https://github.com/seynard/gwas_beestrong
    * Page 7, subheading "Associated variants"; page 10, subheading "Example of associations"
    * Page 18:
        > Varroa resistance mechanisms can be partitioned into two types of traits: first, traits related to hygiene (including VSH, recapping and MNR, but also more broadly grooming behaviour) that involve the accurate detection by workers of varroa infested cells and second, their subsequent inspection/destruction. It has been shown that VSH bees target more specifically cells with highly compromised brood, which is related to the level of infestation in the cells [47, 14]. As a result, cells with fewer mites or mites that are not effectively reproducing are more likely to stay intact, thus increasing the level of mite non reproduction in the colony (MNR). The second type of trait is a trait expressed by either the workers or the brood, that would disrupt mite reproduction within capped cells (and thus increase MNR). Both trait types can reduce mite infestation in the colony, thus increasing varroa resistance of honey bee colonies. Interestingly, in this study we found markers associated with genes that relate to these two categories.
* [Genetic markers for the resistance of honey bee to Varroa destructor](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8763714/)
    * Table top of page 5 of interest
