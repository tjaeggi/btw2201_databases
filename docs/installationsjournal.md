
{% include 'moduleinfuehrung.md' %}

# Installation und Links



## Useful Links:

[mkdocs.org](https://www.mkdocs.org)

[readthedocs](https://mkdocs-macros-plugin.readthedocs.io/en/stable/)

[voila](https://voila.readthedocs.io/en/stable/install.html)

[Icon Search](https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/#search)


[Used Header plugin](https://github.com/timvink/mkdocs-enumerate-headings-plugin)

[pdf export Button](https://adrienbrignon.github.io/mkdocs-exporter/setup/setting-up-documents/)


:material-account-school:

:simple-asciidoctor:

:fontawesome-brands-youtube:{ .youtube }




## Python
```
sudo apt update
```
```
sudo apt install python3 python3-pip
```

```
sudo apt install python-is-python3
```
```
sudo apt install -y python3-venv
```
```
python3 --version
```
```
pip3 --version
```
```
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
```

## Starten virtual Environment

```
python3 -m venv myenv
```
```
source myenv/bin/activate
```

## Stoppen virtual Environment
```
deactivate
```

## pip aktualisieren

```
pip install --upgrade pip
```



## Installation mkdocs-material

```
pip3 install mkdocs-material
```
eventuell:
```
pip install --upgrade --force-reinstall mkdocs-material
```

## Installation Zusatzpakete
```
pip install mkdocs-material-extensions
```
```
pip install mkdocs-pdf
```
```
pip install mkdocs-enumerate-headings-plugin
```
```
pip install mkdocstrings[python]
```
```
pip install mkdocs-video
```
```
pip install mkdocs-exporter
```
```
pip install mkdocs-macros-plugin
```
```
pip install markdown-include
```
```
pip install jupyterlab
```
```
pip install notebook
```
```
pip install voila
```
```
pip install bqplot
```
```
pip install jupyterlab_miami_nights
```
```
pip install bokeh
```
```
playwright install --with-deps
```
```
sudo apt install npm
```
```
sudo apt install nodejs
```
```
npx playwright install
```

## mkdocs Projekt kreieren
```
mkdir MyDocProject
cd MyDocProject
```

```
mkdocs new .
```
```
mkdocs serve -a 0.0.0.0:8000
```
```
mkdocs build
```


## launch JupyterLab

```
jupyter lab
```

## launch JupyterLab
```
jupyter notebook
```

## Voila Demo starten
```
python3 -m venv venv
```
```
source venv/bin/activate
```
```
cd /home/tom/voila
```

```
voila notebooks/dashboard.ipynb --theme="JupyterLab Miami Nights"
```


https://voila.readthedocs.io/en/stable/install.html




## Inhalt mkdocs.yml

```
site_name: Vorlage mkdocs 
copyright: Copyright &copy; 2024 Thomas Jäggi
theme:
  name: material
  custom_dir: my_theme_customizations
  icon:
    admonition:
      note: octicons/tag-16
      abstract: octicons/checklist-16
      info: octicons/info-16
      tip: octicons/squirrel-16
      success: octicons/check-16
      question: octicons/question-16
      warning: octicons/alert-16
      failure: octicons/x-circle-16
      danger: octicons/zap-16
      bug: octicons/bug-16
      example: octicons/beaker-16
      quote: octicons/quote-16
  #font:
  #  text: Ubuntu
  #  code: JetBrains Mono

  palette:
    # primary: deep orange
    - scheme: cyan
      toggle:
        icon: material/brightness-7 
        name: Switch to dark mode
    # Palette toggle for dark mode
    - scheme: slate
      toggle:
        icon: material/brightness-4
        name: Switch to light mode

  
  features:
    - content.code.copy
    - content.code.annotate
    - content.tabs.link
    - navigation.footer

markdown_extensions:
  - toc:
      permalink: "#"
  - pymdownx.highlight:
      anchor_linenums: true
      line_spans: __span
      pygments_lang_class: true
  - pymdownx.inlinehilite
  - pymdownx.snippets
  - pymdownx.superfences
  - pymdownx.tabbed:
      alternate_style: true
  - attr_list
  - pymdownx.emoji:
      emoji_index: !!python/name:material.extensions.emoji.twemoji
      emoji_generator: !!python/name:material.extensions.emoji.to_svg
  - admonition
  - pymdownx.details
  - pymdownx.superfences
  - attr_list
  - tables
  - md_in_html
  - footnotes


plugins:
    - search
    - enumerate-headings
    - exporter
    - exporter-pdf
    - exporter-extras:
        buttons:
          - title: Download as PDF
            icon: material-file-download-outline
            enabled: !!python/name:mkdocs_exporter.plugins.pdf.button.enabled
            attributes:
              href: !!python/name:mkdocs_exporter.plugins.pdf.button.href
              download: !!python/name:mkdocs_exporter.plugins.pdf.button.download

extra: 
    unit_price: 10
    dok_version: 0.1

extra_css:
  - stylesheets/extra.css

extra_javascript:
  - javascripts/extra.js
  - https://unpkg.com/tablesort@5.3.0/dist/tablesort.min.js
  - javascripts/tablesort.js




nav:
  - mkdocs Installation und Links: 'index.md'
  - 'mkdocs-Elemente':
    - 'Code Snippets': 'CodeSnippets.md'
    - 'Admonitions': 'Admonitions.md'
    - 'Tables': 'Tables.md'
    - 'Bilder/Buttons': 'BilderButtons.md'
    - 'Content Tabs': 'contentTabs.md'
    - 'Fussnoten': 'fussnoten.md'
    - 'leer3': 'free3.md'

```
## Makro Infos

{{ macros_info() }}


## Makro Included in md

The unit price of our product is {{ doc_version }} EUR.
Taking the standard discount into account,
the sale price of 50 units is {{ price(doc_version, 50) }} EUR.


~~~text
The unit price of our product is {{ doc_version }} EUR.
Taking the standard discount into account,
the sale price of 50 units is {{ price(doc_version, 50) }} EUR.
~~~

<pre>The unit price of our product is {{ doc_version }} EUR.
Taking the standard discount into account,
the sale price of 50 units is {{ price(doc_version, 50) }} EUR.</pre>

Document Version: {{ doc_version }}