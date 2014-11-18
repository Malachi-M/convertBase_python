<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Discrete Math</title>
    <link rel="stylesheet" href="/static/kube.min.css" type="text/css" /> 
    <link rel="stylesheet" href="/static/styles.css" type="text/css" />
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>

<body class="units-row">
    <main class="unit-centered units-padding unit-70">
        <h2 class="project-title">Base Conversion</h1>
        <div class="result-area">
            <h1 class="query-result"></h2>
        </div>
        <form action="/convertbase" method="GET" class="forms">
            <label>Enter Base 10 Number
            <input type="number" name="n" required autofocus tabindex="1" class="width-40" autofocus placeholder="( Enter # )"/>
            </label>
            <label>Enter Base
            <input type="number" name="base" required tabindex="2" class="width-40" placeholder="( 2 - 36 )" />
            </label>
            <input type="submit" class="btn" value="Convert">
            <button class="btn reset">Reset</button>
        </form>
        <article class="additional-results units-row units-padding">
            <section class="unit-33">
                <h4 class="additional-result-heading">Binary</h4>
                <p class="binary-result"></p>
            </section>
            <section class="unit-33">
                <h4 class="additional-result-heading">Hexadecimal</h4>
                <p class="hexdec-result"></p>
            </section>
            <section class="unit-33">
                <h4 class="additional-result-heading">Decimal</h4>
                <p class="decimal-result"></p>
            </section>
        </article>
    </main>
    <script type="text/javascript" src="/static/loadResult.js"></script>
</body>
</html>