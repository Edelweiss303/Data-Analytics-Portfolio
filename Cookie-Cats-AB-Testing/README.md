# 🐱 Cookie Cats: Mobile Game A/B Testing Analysis



\## 📌 Project Overview

\*\*Cookie Cats\*\* is a popular mobile puzzle game. This project analyzes the results of an A/B test where the first "gate" (a mechanism forcing players to wait or pay) was moved from \*\*Level 30\*\* to \*\*Level 40\*\*.



\*\*The Business Question:\*\* \*Does moving the gate to a later level improve player retention?\*



\## 🛠 Tools \& Technologies

\* \*\*Python:\*\* Data manipulation and cleaning.

\* \*\*Pandas:\*\* Aggregation and cohort analysis.

\* \*\*Bootstrapping:\*\* Statistical sampling to test significance (resampled 500 times).

\* \*\*Seaborn/Matplotlib:\*\* Visualization of retention distributions.



\## 📊 Key Findings

1\.  \*\*1-Day Retention:\*\* The control group (Gate @ 30) had a slightly higher retention rate (44.8%) compared to the test group (44.2%).

2\.  \*\*7-Day Retention:\*\* The advantage for the control group grew stronger over time.

3\.  \*\*Statistical Confidence:\*\* Bootstrap analysis indicates a \*\*99% probability\*\* that retention is higher when the gate is kept at Level 30.



\## 💡 Recommendation

\*\*Do not move the gate.\*\*

Keeping the gate at Level 30 results in higher long-term player engagement. Moving it to Level 40 likely reduces the urgency for players to return, negatively impacting LTV (Lifetime Value).



---

\*Check out the full analysis in the \[Jupyter Notebook](./notebook.ipynb).\*

