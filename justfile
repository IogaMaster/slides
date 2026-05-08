
default:
    @ls presentations/*.md | xargs -n 1 basename | sed 's/\.md//'

run name:
    presenterm --config-file  ./config.yaml presentations/{{name}}.md

pdf name:
    presenterm --export pdf presentations/{{name}}.md
