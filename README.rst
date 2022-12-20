#####################
The CIFAR-100 dataset
#####################

`<https://www.cs.toronto.edu/~kriz/cifar.html>`_

This dataset is just like the CIFAR-10, except it has 100 classes containing
600 images each. There are 500 training images and 100 testing images per
class. The 100 classes in the CIFAR-100 are grouped into 20 superclasses. Each
image comes with a "fine" label (the class to which it belongs) and a "coarse"
label (the superclass to which it belongs).

Here is the list of classes in the CIFAR-100:

+--------------------------------+------------------------------------+
| Superclass                     | Classes                            |
+--------------------------------+------------------------------------+
| aquatic mammals                | beaver, dolphin, otter, seal,      |
|                                | whale                              |
+--------------------------------+------------------------------------+
| fish                           | aquarium fish, flatfish, ray,      |
|                                | shark, trout                       |
+--------------------------------+------------------------------------+
| flowers                        | orchids, poppies, roses,           |
|                                | sunflowers, tulips                 |
+--------------------------------+------------------------------------+
| food containers                | bottles, bowls, cans, cups, plates |
+--------------------------------+------------------------------------+
| fruit and vegetables           | apples, mushrooms, oranges, pears, |
|                                | sweet peppers                      |
+--------------------------------+------------------------------------+
| household electrical devices   | clock, computer keyboard, lamp,    |
|                                | telephone, television              |
+--------------------------------+------------------------------------+
| household furniture            | bed, chair, couch, table, wardrobe |
+--------------------------------+------------------------------------+
| insects                        | bee, beetle, butterfly,            |
|                                | caterpillar, cockroach             |
+--------------------------------+------------------------------------+
| large carnivores               | bear, leopard, lion, tiger, wolf   |
+--------------------------------+------------------------------------+
| large man-made outdoor things  | bridge, castle, house, road,       |
|                                | skyscraper                         |
+--------------------------------+------------------------------------+
| large natural outdoor scenes   | cloud, forest, mountain, plain,    |
|                                | sea                                |
+--------------------------------+------------------------------------+
| large omnivores and herbivores | camel, cattle, chimpanzee,         |
|                                | elephant, kangaroo                 |
+--------------------------------+------------------------------------+
| medium-sized mammals           | fox, porcupine, possum, raccoon,   |
|                                | skunk                              |
+--------------------------------+------------------------------------+
| non-insect invertebrates       | crab, lobster, snail, spider, worm |
+--------------------------------+------------------------------------+
| people                         | baby, boy, girl, man, woman        |
+--------------------------------+------------------------------------+
| reptiles                       | crocodile, dinosaur, lizard,       |
|                                | snake, turtle                      |
+--------------------------------+------------------------------------+
| small mammals                  | hamster, mouse, rabbit, shrew,     |
|                                | squirrel                           |
+--------------------------------+------------------------------------+
| trees                          | maple, oak, palm, pine, willow     |
+--------------------------------+------------------------------------+
| vehicles 1                     | bicycle, bus, motorcycle, pickup   |
|                                | truck, train                       |
+--------------------------------+------------------------------------+
| vehicles 2                     | lawn-mower, rocket, streetcar,     |
|                                | tank, tractor                      |
+--------------------------------+------------------------------------+

Yes, I know mushrooms aren't really fruit or vegetables and bears aren't really
carnivores.

********
Download
********

+-----------------------------+--------+-----------------------------+
| Version                     | Size   | md5sum                      |
+-----------------------------+--------+-----------------------------+
| `CIFAR-100 python           | 161 MB | eb905                       |
| version <                   |        | 8c3a382ffc7106e4002c42a8d85 |
| cifar-100-python.tar.gz>`__ |        |                             |
+-----------------------------+--------+-----------------------------+
| `CIFAR-100 Matlab           | 175 MB | 6a4bf                       |
| version <                   |        | a1dcd5c9453dda6bb54194911f4 |
| cifar-100-matlab.tar.gz>`__ |        |                             |
+-----------------------------+--------+-----------------------------+
| `CIFAR-100 binary version   | 161 MB | 03b5d                       |
| (suitable for C             |        | ce01913d631647c71ecec9e9cb8 |
| programs) <                 |        |                             |
| cifar-100-binary.tar.gz>`__ |        |                             |
+-----------------------------+--------+-----------------------------+


**************
Dataset layout
**************

Python / Matlab versions
========================

The python and Matlab versions are identical in layout to the CIFAR-10, so I
won't waste space describing them here.

Binary version
==============

The binary version of the CIFAR-100 is just like the binary version of the
CIFAR-10, except that each image has two label bytes (coarse and fine) and 3072
pixel bytes, so the binary files look like this:

.. code:: code

   <1 x coarse label><1 x fine label><3072 x pixel>
   ...
   <1 x coarse label><1 x fine label><3072 x pixel>

Indices into the original 80 million tiny images dataset
========================================================

Sivan Sabato was kind enough to provide `this file <cifar_indexes>`__, which
maps CIFAR-100 images to images in the 80 million tiny images dataset. Sivan
Writes:

.. code:: code

   The file has 60000 rows, each row contains a single index into the tiny db,
   where the first image in the tiny db is indexed "1". "0" stands for an image that is not from the tiny db.
   The first 50000 lines correspond to the training set, and the last 10000 lines correspond
   to the test set.

*********
Reference
*********

This tech report (Chapter 3) describes the dataset and the methodology followed
when collecting it in much greater detail. Please cite it if you intend to use
this dataset.

-  `Learning Multiple Layers of Features from Tiny Images
   <learning-features-2009-TR.pdf>`__, Alex Krizhevsky, 2009.
