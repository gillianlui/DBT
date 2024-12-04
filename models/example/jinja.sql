{%for i in range(10)%}
    select {{1}} as number {%if not loop.last%} union all {%endif%}
{%endfor%}