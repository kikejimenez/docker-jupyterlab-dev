FROM jupyter/minimal-notebook


USER $NB_USER

#upgrade jupyterlab
RUN pip install --upgrade jupyterlab 


#code formatter 
#collapse headings
#xeus-python
#python-language-server
RUN pip install jupyterlab_code_formatter && \
    pip install yapf && \
    pip install aquirdturtle_collapsible_headings && \
    pip install xeus-python notebook && \
    pip install 'jupyterlab>=3.0.0,<4.0.0a0' jupyterlab-lsp && \
    pip install 'python-language-server[all]' && \
    pip install jupyterlab_theme_solarized_dark

#nbdev
RUN pip install nbdev


#user settings
USER root

ENV NB_UID=$NB_UID \
    NB_GID=$NB_GID
ADD ./user-settings/.jupyter /home/$NB_USER/.jupyter
RUN chown -R $NB_UID:$NB_GID /home/$NB_USER/.jupyter
