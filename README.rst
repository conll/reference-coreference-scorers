Reference Coreference Scorer
============================

Description
-----------

This is the official implementation of the revised coreference scorer used for CoNLL-2011/2012 shared tasks on coreference resolution.
It addresses issues that prevented the consistent scoring of predicted mentions in the past.


VERSION
-------

The current stable version is v8.01

Citation
--------

We would appreciate if you cite the paper when you use this scorer as some of us are academics or wanting to be academics, and citations matter.

  ::
     
     @InProceedings{pradhan-EtAl:2014:P14-2,
     author    = {Pradhan, Sameer  and  Luo, Xiaoqiang  and  Recasens, Marta  and  Hovy, Eduard  and  Ng, Vincent  and  Strube, Michael},
     title     = {Scoring Coreference Partitions of Predicted Mentions: A Reference Implementation},
     booktitle = {Proceedings of the 52nd Annual Meeting of the Association for Computational Linguistics (Volume 2: Short Papers)},
     month     = {June},
     year      = {2014},
     address   = {Baltimore, Maryland},
     publisher = {Association for Computational Linguistics},
     pages     = {30--35},
     url       = {http://www.aclweb.org/anthology/P14-2006}
     }


Usage
-----


  ::
     
     perl scorer.pl <metric> <key> <response> [<document-id>]


     <metric>: the metric desired to score the results. one of the following values:

     muc: MUCScorer (Vilain et al, 1995)
     bcub: B-Cubed (Bagga and Baldwin, 1998)
     ceafm: CEAF (Luo et al., 2005) using mention-based similarity
     ceafe: CEAF (Luo et al., 2005) using entity-based similarity
     blanc: BLANC (Luo et al., 2014) BLANC metric for gold and predicted mentions
     all: uses all the metrics to score

     <key>: file with expected coreference chains in CoNLL-2011/2012 format

     <response>: file with output of coreference system (CoNLL-2011/2012 format)
 
     <document-id>: optional. The name of the document to score. If name is not
                    given, all the documents in the dataset will be scored. If given
                    name is "none" then all the documents are scored but only total
                    results are shown.


OUTPUT
------

The score subroutine returns an array with four values in this order:

Coreference Score
~~~~~~~~~~~~~~~~~

Recall = recall_numerator / recall_denominator
Precision = precision_numerator / precision_denominator
F1 = 2 * Recall * Precision / (Recall + Precision)

Also recall, precision and F1 are printed in the standard output when variable ``$VERBOSE`` is not null.


Identification of mentions
~~~~~~~~~~~~~~~~~~~~~~~~~~

A score for identification of mentions (recall, precision and F1) is
also included.  Mentions from system response are compared with key
mentions. This version performs strict mention matching as was used in
the CoNLL-2011 and 2012 shared tasks.

AUTHORS
-------

Emili Sapena, Universitat Politècnica de Catalunya, http://www.lsi.upc.edu/~esapena, esapena <at> lsi.upc.edu
   Sameer Pradhan, http://cemantix.org, pradhan <at> cemantix.org
   Sebastian Martschat, sebastian.martschat <at> h-its.org
   Xiaoqiang Luo, xql <at> google.com


LICENSE
-------
   This program is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2 of the License, or (at your
   option) any later version. This program is distributed in the hope that
   it will be useful, but WITHOUT ANY WARRANTY; without even the implied
   warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License along
   with this program; if not, write to the Free Software Foundation, Inc.,
   59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

COPYRIGHT
---------

2009-2011, Emili Sapena esapena <at> lsi.upc.edu
2011- Sameer Pradhan pradhan <at> cemantix.org

Reference Coreference Scorer
============================

Description
-----------

This is the official implementation of the revised coreference scorer as described in the following paper:

Citation
--------

We would appreciate if you cite the paper when you use this scorer as some of us are academics or wanting to be academics, and citations matter.

  ::

   @InProceedings{pradhan-EtAl:2014:P14-2,
     author    = {Pradhan, Sameer  and  Luo, Xiaoqiang  and  Recasens, Marta  and  Hovy, Eduard  and  Ng, Vincent  and  Strube, Michael},
     title     = {Scoring Coreference Partitions of Predicted Mentions: A Reference Implementation},
     booktitle = {Proceedings of the 52nd Annual Meeting of the Association for Computational Linguistics (Volume 2: Short Papers)},
     month     = {June},
     year      = {2014},
     address   = {Baltimore, Maryland},
     publisher = {Association for Computational Linguistics},
     pages     = {30--35},
     url       = {http://www.aclweb.org/anthology/P14-2006}
     }


VERSION
-------

The current stable (official) version for scoring predicted mentions is **v8.01**

Usage
-----

  ::

     perl scorer.pl <metric> <key> <response> [<document-id>]


     <metric>: the metric desired to score the results. one of the following values:

     muc: MUCScorer (Vilain et al, 1995)
     bcub: B-Cubed (Bagga and Baldwin, 1998)
     ceafm: CEAF (Luo et al., 2005) using mention-based similarity
     ceafe: CEAF (Luo et al., 2005) using entity-based similarity
     blanc: BLANC (Luo et al., 2014) BLANC metric for gold and predicted mentions
     all: uses all the metrics to score

     <key>: file with expected coreference chains in CoNLL-2011/2012 format

     <response>: file with output of coreference system (CoNLL-2011/2012 format)
 
     <document-id>: optional. The name of the document to score. If name is not
                    given, all the documents in the dataset will be scored. If given
                    name is "none" then all the documents are scored but only total
                    results are shown.


OUTPUT
------

The score subroutine returns an array with four values in this order:

Coreference Score
~~~~~~~~~~~~~~~~~

  ::

    Recall = recall_numerator / recall_denominator
    Precision = precision_numerator / precision_denominator
    F1 = 2 * Recall * Precision / (Recall + Precision)

These values are to standard output when variable ``$VERBOSE`` is not null.


Identification of mentions
~~~~~~~~~~~~~~~~~~~~~~~~~~

A score for identification of mentions (recall, precision and F1) is
also included.  Mentions from system response are compared with key
mentions. This version performs strict mention matching as was used in
the CoNLL-2011 and 2012 shared tasks.

AUTHORS
-------

* Emili Sapena, Universitat Politècnica de Catalunya, http://www.lsi.upc.edu/~esapena, esapena <at> lsi.upc.edu
* Sameer Pradhan, http://cemantix.org, pradhan <at> cemantix.org
* Sebastian Martschat, sebastian.martschat <at> h-its.org
* Xiaoqiang Luo, xql <at> google.com


LICENSE
-------

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2 of the License, or (at your
option) any later version. This program is distributed in the hope that
it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

COPYRIGHT
---------

  ::

    2009-2011, Emili Sapena esapena <at> lsi.upc.edu
    2011-      Sameer Pradhan pradhan <at> cemantix.org
