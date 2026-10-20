from setuptools import setup, find_packages

setup(
    name='apiverve_dictionary',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Dictionary looks up word definitions for any given term. It returns every recorded meaning as a text list with a total definition count for e-readers, vocabulary builders, and writing assistants.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/dictionary?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
