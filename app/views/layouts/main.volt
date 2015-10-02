<header>
    {{ partial('main/header') }}
</header>

<div id="main">

    {{ content() }}

</div>

<footer>
    {{ partial('main/footer') }}
</footer>

{{ helper.javascript('body') }}