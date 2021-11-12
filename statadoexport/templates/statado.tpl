
{%- extends 'null.tpl' -%}

{% block in_prompt %}
{% if resources.global_content_filter.include_input_prompt -%}
    **# [{{ cell.execution_count if cell.execution_count else ' ' }}]:
{% endif %}
{% endblock in_prompt %}

{% block input %}
{{ cell.source | magic_converter }}
{% endblock input %}
