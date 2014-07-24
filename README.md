Getting and Cleaning Data Course Project README
===============================================

- Human Activity Recognition Using Smartphones Dataset
- Cleaned, Aggregated and just made Better
- Version 2.0
- osiPete
- some guy studing MOOC data science

Background
----------
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the raw data was obtained for this project: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Focus
-----
- This tidy_data.txt is a summary of the above dataset, cleaning and aggregating the raw data into a user friendly single table.
- The assignment itself that resulted in all this is described here;
https://class.coursera.org/getdata-005/human_grading/view/courses/972582/assessments/3/submissions
- A handy discussion forum with TA pointers can be found here:
https://class.coursera.org/getdata-005/forum/thread?thread_id=23
- The script itself tries in best efforts to follow Hadley's tidy data ta principles;
http://vita.had.co.nz/papers/tidy-data.pdf

The script produces tidy_data.txt. For each record it is provided:
-------------------------------------------------------------------

- Average of mean and std variables as described in the code book. The Average is taken for each of these variables after first grouping by Subject and Activity.
- *Note that other variables with "mean" in name are excluded because they are
"derived" variables from the other variables. ie; not tidy data!*
- An identifier variable of the Subject who carried out the experiment.
- An description variable of the Activity being undertaken.

The dataset includes the following files:
-----------------------------------------
- 'README.txt': What you're looking at now.
- 'run_analysis.R': R script for reproducing the tidy_data.txt dataset from the raw data.
- 'code_book.txt': Code book for the tidy_data.txt, describing the data / transformations in place.
- 'tidy_data.txt': The tidy dataset. Please see code_book.txt for details.

Notes: 
------
- Had fun putting this one together.
- Beer and R don't always mix.
- For more information about this dataset contact: osipete@github.com

License:
--------
- Do as you like, seriously I don't mind. Remember to cite the data though.
- This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

osiPete, July 2014.
