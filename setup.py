#!/usr/bin/env python

from setuptools import setup, find_packages

import madis.functions

setup(
    name='madis-openaire-iis',
    version=madis.functions.VERSION,
    author='Lefteris Stamatogiannakis, Mei Li Triantafyllidi, Ioannis Foufoulas, Maria Vayanou, Marialena Kyriakidiavroknife',
    packages=find_packages(),
    package_data={'': ['madis/lib/LM/*', 'madis/lib/jdbc/*']},
    include_package_data=True,
    url='https://code.google.com/p/madis',
    license='Custom Open Source',
    description='Complex data analysis/processing made easy',
    long_description='madIS is an extensible relational database system built on top of the SQLite database with extensions implemented in Python (via APSW SQLite wrapper).',
    install_requires=open('requirements.txt').read().split(),
    ## Add ability to run tests in the code through the setup.py script
    test_suite='nose.collector',
    keywords=['database', 'processing'],
    classifiers=[
        'Development Status :: 5 - Production/Stable    ',
        'Environment :: Console',
        'Intended Audience :: Developers',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2.7',
        'Topic :: Scientific/Engineering :: Information Analysis',
    ],
    scripts=['scripts/madis_mexec.py', 'scripts/madis_mterm.py']
)
