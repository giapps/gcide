<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-collapse">

            <ul class="nav navbar-nav navbar-left">
                <li><a href="{{ url.path() }}#about">About</a></li>
                <li><a href="{{ url.path() }}#license">License</a></li>
                <li><a href="{{ url.path() }}#download">Download</a></li>
            </ul>

            <ul class="nav navbar navbar-right">
                <form id="lookup" action="{{ url.path() }}/index/lookup" class="form-wrapper cf">
                    <input type="text" name="q" placeholder="The Collaborative International Dictionary of English ..."
                           required>
                    <button type="submit">Lookup</button>
                </form>
            </ul>

        </div>
        <!--/.nav-collapse -->
    </div>
</div>
