from setuptools import setup, find_packages

setup(
        name='what.fm',
        version='0.0.1',
        long_description=__doc__,
        packages=find_packages(),
        include_package_data=True,
        zip_safe=False,
        install_requires=[
            'Flask'
            ],
        include_package_data=True,
        entry_points={
            'console_scripts': [
                'what.fm = what.fm.runserver:main'
                ]
            }
        )
