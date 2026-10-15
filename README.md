# atomes

![](https://github.com/Slookeur/atomes.io/workflows/ns/badge.svg)
![](https://www.codefactor.io/repository/github/Slookeur/atomes/badge)

[atomes][atomes] is a Free (Open Source) cross-platform software licensed under the terms of the Affero GPL v3+ license. 
**atomes** is a toolbox developed to analyze, to visualize and to create/edit three-dimensional atomic scale models.
It offers a workspace that allows to have many projects opened simultaneously.

The different projects in the workspace can exchange data: analysis results, atomic coordinates ...
**atomes** also provides an advanced input preparation system for further calculations using well known molecular dynamics codes:

- Classical MD : [DLPOLY][dlpoly] and [LAMMPS][lammps]
- ab-initio MD : [CPMD][cpmd] and [CP2K][cp2k]
- QM-MM MD : [CPMD][cpmd] and [CP2K][cp2k]

To prepare the input ﬁlles for these calculations is likely to be the key, and most complicated step towards MD simulations. 
**atomes** offers a user-friendly assistant to help and guide the user step by step to achieve this crucial step.

## Features

  - Analysis of 3D atomistic models: neutrons and x-rays diffraction, ring statistics, chain statistics, bond order, MSD ...
  - Visualization: measures, coordination polyhedras, advanced coloring, advanced design
  - Edition: molecular library, crystal builder, cell edition, surface creation and passivation ...
  - MD input preparation: 
	- Classical MD: [DLPOLY][dlpoly] and [LAMMPS][lammps]
	- ab-initio MD: [CPMD][cpmd] and [CP2K][cp2k]
	- QM-MM MD: [CPMD][cpmd] and [CP2K][cp2k]

## Who's behind ***atomes***


**atomes** is developed by [Dr. Sébastien Le Roux][slr], research engineer for the [CNRS][cnrs]

<p align="center">
  <a href="https://www.cnrs.fr/"><img width="100" src="https://www.cnrs.fr/themes/custom/cnrs/logo.svg" alt="CNRS logo" align="center"></a>
</p>

[Dr. Sébastien Le Roux][slr] works at the Institut de Physique et Chimie des Matériaux de Strasbourg [IPCMS][ipcms]

<p align="center">
  <a href="https://www.ipcms.fr/"><img width="100" src="https://www.ipcms.fr/uploads/2020/09/cropped-dessin_logo_IPCMS_couleur_vectoriel_r%C3%A9%C3%A9quilibr%C3%A9-2.png" alt="IPCMS logo" align="center"></a>
</p>

## APPIMAGE

## Building the Appimage

- Download the latest version of atomes sources

```
VERSION="1.3.1"
wget https://github.com/Slookeur/atomes-GNU/archive/refs/tags/v$VERSION.tar.gz
```

- Install the `appimage-builder tool`

https://appimage-builder.readthedocs.io/en/latest/intro/install.html

- Build atomes using the sources:

```
tar -jxf v*.tar.bz2
cd ./atomes-*
./configure --prefix=/usr
```

- Create an `AppDir` directory

```
mkdir AppDir
```

- Install the newly built atomes package in the new `AppDir` directory

```
make install DESTDIR=$PWD"/AppDir"
```

- Download the recipies to build atomes appimage:

```
wget https://github.com/Slookeur/atomes-appimage-build/blob/main/atomes-AppImageBuilder.yml
```

- Finally build the appimage using the `appimage-builder` tool

```
appimage-builder --recipe ./atomes-AppImageBuilder.yml
```

## Running the Appimage

Simply double click on the appimage

## Documentation

The documentation is hosted on [GitHub][github] here: [atomes documentation][atomes-doc]

Developer contribution guidelines are hosted on [GitHub][github] here: [atomes developer guidelines][devel-guide]

Developer documentation is hosted on [GitHub][github] here: [atomes developer documenation][devel-doc]

## Tutorials

Tutorial are regrouped and hosted on [GitHub][github] here: [atomes tutorials][atomes-tuto]

[slr]:https://www.ipcms.fr/sebastien-le-roux/
[cnrs]:https://www.cnrs.fr/
[ipcms]:https://www.ipcms.fr/
[github]:https://github.com/
[jekyll]:https://jekyllrb.com/
[atomes]:https://atomes.ipcms.fr/
[atomes-rpm-build]:https://slookeur.github.io/atomes-rpm-build/
[atomes-doc]:https://slookeur.github.io/atomes-doc/
[atomes-tuto]:https://slookeur.github.io/atomes-tuto/
[devel-doc]:https://slookeur.github.io/atomes-doxygen/
[devel-guide]:https://github.com/Slookeur/atomes/blob/main/DEVELOPER.md
[dlpoly]:https://www.scd.stfc.ac.uk/Pages/DL_POLY.aspx
[lammps]:https://lammps.sandia.gov/
[cpmd]:http://www.cpmd.org
[cp2k]:http://cp2k.berlios.de
