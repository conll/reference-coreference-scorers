NAME
   CorScorer: Perl package for scoring coreference resolution systems
   using different metrics.


VERSION
   v7.0 -- reference implementations of MUC, B-cubed and CEAF metrics.


INSTALLATION
   Requirements:
      1. Perl: downloadable from http://perl.org
      2. Algorithm-Munkres: included in this package and downloadable
         from CPAN http://search.cpan.org/~tpederse/Algorithm-Munkres-0.08

USE
   This package is distributed with two scripts to execute the scorer from
   the command line.

   Windows (tm): scorer.bat
   Linux: scorer.pl


SYNOPSIS
   use CorScorer;

   $metric = 'ceafm';

   # Scores the whole dataset
   &CorScorer::Score($metric, $keys_file, $response_file);

   # Scores one file
   &CorScorer::Score($metric, $keys_file, $response_file, $name);


INPUT
   metric: the metric desired to score the results:
     muc: MUCScorer (Vilain et al, 1995)
     bcub: B-Cubed (Bagga and Baldwin, 1998)
     ceafm: CEAF (Luo et al, 2005) using mention-based similarity
     ceafe: CEAF (Luo et al, 2005) using entity-based similarity
     all: uses all the metrics to score

   keys_file: file with expected coreference chains in SemEval format

   response_file: file with output of coreference system (SemEval format)

   name: [optional] the name of the document to score. If name is not
     given, all the documents in the dataset will be scored. If given
     name is "none" then all the documents are scored but only total
     results are shown.


OUTPUT
   The score subroutine returns an array with four values in this order:
   1) Recall numerator
   2) Recall denominator
   3) Precision numerator
   4) Precision denominator

   Also recall, precision and F1 are printed in the standard output when variable
   $VERBOSE is not null.

   Final scores:
   Recall = recall_numerator / recall_denominator
   Precision = precision_numerator / precision_denominator
   F1 = 2 * Recall * Precision / (Recall + Precision)

   Identification of mentions
   An scorer for identification of mentions (recall, precision and F1) is also included.
   Mentions from system response are compared with key mentions. There are two kind of
   positive matching response mentions:

   a) Strictly correct identified mentions: Tokens included in response mention are exactly
   the same tokens included in key mention.

   b) Partially correct identified mentions: Response mention tokens include the head token
   of the key mention and no new tokens are added (i.e. the key mention bounds are not 
   overcome).


   The partially correct mentions can be given some credit (for
   example, a weight of 0.5) to get a combined score as follows:

   Recall = (a + 0.5 * b) / #key mentions
   Precision = (a + 0.5 * b) / #response mentions
   F1 = 2 * Recall * Precision / (Recall + Precision)

   The official CoNLL evaluation only considered mentions with exact
   boundaries as being correct.

SEE ALSO

1. http://stel.ub.edu/semeval2010-coref/

2. Marta Recasens, Lluís Màrquez, Emili Sapena, M. Antònia Martí, Mariona Taulé,
   Véronique Hoste, Massimo Poesio, and Yannick Versley. 2010. SemEval-2010 Task 1:
   Coreference Resolution in Multiple Languages. In Proceedings of the ACL International
   Workshop on Semantic Evaluation (SemEval-2010), pp. 1-8, Uppsala, Sweden.


AUTHOR
   Emili Sapena, Universitat Politècnica de Catalunya, http://www.lsi.upc.edu/~esapena, esapena <at> lsi.upc.edu
   Sebastian Martschat, sebastian.martschat <at> h-its.org
   Xiaoqiang Luo, xql <at> google.com


COPYRIGHT AND LICENSE
   Copyright (C) 2009-2011, Emili Sapena esapena <at> lsi.upc.edu

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

