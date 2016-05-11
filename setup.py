from pip.req import parse_requirements
from setuptools import setup, find_packages

install_reqs = parse_requirements("requirements.txt", session=False)

setup(
        name='what.fm',
        version='0.0.1',
        long_description=__doc__,
        packages=find_packages(),
        include_package_data=True,
        zip_safe=False,
        install_requires=[str(i.req) for i in install_reqs]
        )
