#!/usr/bin/env python
import preprocessing
postgres = {'host': 'localhost',
            'user': 'root',
            'passwd': 'Mfon@Learn2019',
            'db': 'SQL-Homework'}
preprocessing_queue = [preprocessing.scale_and_center,
                       preprocessing.dot_reduction,
                       preprocessing.connect_lines]
use_anonymous = True