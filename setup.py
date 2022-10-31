#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
import glob
import ntpath


def get_module_name(module_path):
    """
    Return the module name of the module path
    """
    return ntpath.split(module_path)[1].split(".")[0]


def snake_to_camel(word):
    """
    Convert a word from snake_case to CamelCase
    """
    return ''.join(x.capitalize() or '_' for x in word.split('_'))


setup(
    name="arcsight_logger",
    display_name="ArcSight Logger",
    version="1.0.0",
    license="MIT",
    author="Axenta a.s.",
    author_email="axenta@info.cz",
    url="axenta.cz",
    description="Resilient Circuits Components for 'arcsight_logger'",
    long_description="""Function offering use of chart queiries for SOAR """,
    install_requires=[
        "resilient-circuits>=45.0.0",
        "pygal"
    ],
    python_requires='>=3.6',
    packages=find_packages(),
    include_package_data=True,
    platforms="any",
    classifiers=[
        "Programming Language :: Python",
    ],
    entry_points={
        "resilient.circuits.components": [
            # When setup.py is executed, loop through the .py files in the components directory and create the entry points.
            "{}FunctionComponent = arcsight_logger.components.{}:FunctionComponent".format(
                snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in
            glob.glob("./arcsight_logger/components/[a-zA-Z]*.py")
        ],
        "resilient.circuits.configsection": ["gen_config = arcsight_logger.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = arcsight_logger.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = arcsight_logger.util.selftest:selftest_function"]
    }
)
