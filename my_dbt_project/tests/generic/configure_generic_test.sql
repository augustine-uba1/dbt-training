{% test configure_generic_test(model, column_name) %}

SELECT * FROM {{ model }}
WHERE LEN({{ column_name }}) < 3

{% endtest %}