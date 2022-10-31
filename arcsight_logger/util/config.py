# -*- coding: utf-8 -*-

"""Generate a default configuration-file section for arcsight_logger"""


def config_section_data():
    """
    Produce add the default configuration section to app.config,
    for arcsight_logger when called by `resilient-circuits config [-c|-u]`
    """
    config_data = u"""[arcsight_logger]
url=.....
username=....
password=....
"""
    return config_data
