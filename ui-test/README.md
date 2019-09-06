Place `custom.css` to `~/.jupyter/custom/custom.css`

Running a local Jupyter Notebook on Aalto Linux desktop:

    module load anaconda3
    conda create -n jupyter-notebook python=3.7
    conda run -n jupyter-notebook jupyter notebook
