<!DOCTYPE html>
<html>

<head>
    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            background: rgb(243, 247, 247);
            margin: 0;
        }


        .header-area {
            background: green;
        }

        .header {
            position: sticky;
            top: 0;
            width: 80%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 50px;
            background: green;
            margin: 0 auto;

        }

        h1 a {
            color: white;
            text-decoration: none;
            font-weight: bolder;
        }

        nav {
            position: relative;
        }

        nav ul {
            display: flex;
            align-items: center;
            gap: 20px;
            list-style: none;
        }

        nav ul li {
            position: relative;
        }

        nav ul li a {
            padding: 5px 10px;
            color: white;
            text-decoration: none;
            font-weight: medium;
        }

        nav ul li a.active {
            color: rgb(26, 205, 140);
        }

        .details {

            margin: 0 auto;
            text-align: center;
        }

        .details h1 {
            font-size: 30px;
        }

        hr {
            width: 80px;
            margin-bottom: 40px;

        }

        @import url(https://fonts.googleapis.com/css?family=Lato:400,600,700);

        .snip1527 {
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
            color: #ffffff;
            float: left;
            font-family: 'Lato', Arial, sans-serif;
            font-size: 16px;
            margin: 10px 1%;
            max-width: 310px;
            min-width: 250px;
            overflow: hidden;
            position: relative;
            text-align: left;
            width: 100%;
            border-radius: 10px
        }

        .snip1527 * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-transition: all 0.25s ease;
            transition: all 0.25s ease;

        }

        .snip1527 img {
            width: 320px;
            height: 300px;
            vertical-align: top;
            position: relative;

        }

        .snip1527 figcaption {
            padding: 25px 20px 25px;
            position: absolute;
            bottom: 0;
            z-index: 1;
        }

        .snip1527 figcaption:before {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: #700877;
            content: '';
            background: -moz-linear-gradient(90deg, #700877 0%, #ff2759 100%, #ff2759 100%);
            background: -webkit-linear-gradient(90deg, #700877 0%, #ff2759 100%, #ff2759 100%);
            background: linear-gradient(90deg, #700877 0%, #ff2759 100%, #ff2759 100%);
            opacity: 0.8;
            z-index: -1;

        }



        .snip1527 h3 {
            margin: 0;
            padding: 0;
        }

        .snip1527 h3 {
            display: inline-block;
            font-weight: 700;
            letter-spacing: -0.4px;
            margin-bottom: 5px;
        }

        .snip1527:hover img,
        .snip1527.hover img {
            -webkit-transform: scale(1.1);
            transform: scale(1.1);
        }

        .container {
            width: 80%;
            margin: 40px auto;
            padding-left: 70px;
        }

        .shine {
            background: #f6f7f8;
            background-image: linear-gradient(to right, #f6f7f8 0%, #edeef1 20%, #f6f7f8 40%, #f6f7f8 100%);
            background-repeat: no-repeat;
            background-size: 320px 300px;
            display: inline-block;
            position: relative;

            -webkit-animation-duration: 1s;
            -webkit-animation-fill-mode: forwards;
            -webkit-animation-iteration-count: infinite;
            -webkit-animation-name: placeholderShimmer;
            -webkit-animation-timing-function: linear;
        }

        @-webkit-keyframes placeholderShimmer {
            0% {
                background-position: -468px 0;
            }

            100% {
                background-position: 468px 0;
            }
        }
    </style>
</head>

<body>
    <div class="header-area">
        <header class="header">
            <h1><a href="#">{{.Hola}}</a></h1>
            <nav>
                <ul>
                    <li>
                        <a class="active" href="#" data-scrollto="home">{{.Deals}}</a>
                    </li>
                    <li>
                        <a href="#" data-scrollto="about">{{.NearBy}}</a>
                    </li>
                    <li>
                        <a href="#" data-scrollto="faq">{{.Destination}}</a>
                    </li>
                    <li>
                        <a href="#" data-scrollto="contact">{{.List}}</a>
                    </li>
                </ul>
            </nav>
        </header>
    </div>



    <div class="container">
        <div class="details">
            <h1>{{.H11}}</h1>
            <h1>{{.H12}}</h1>
            <h1>{{.H13}}</h1>
            <h4>{{.H4}}</h4>
            <hr>
        </div>
        {{range $key, $val := .s}}
        <figure class="snip1527 shine">
            <div class="image"><img src="{{$val.Image}}" alt="pr-sample23" /></div>
            <figcaption>

                <h3>{{$val.Name}}</h3>

            </figcaption>
            <a href="#"></a>
        </figure>

        {{end}}

    </div>


</body>

</html>