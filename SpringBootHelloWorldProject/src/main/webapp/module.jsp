<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-image: url(Module.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            font-family: 'Montserrat', sans-serif;
        }


        h1 {
            font-size: 2.5rem;
            font-family: 'Montserrat', sans-serif;
            font-weight: normal;
            color: #444;
            text-align: center;
            margin: 2rem 0;
        }

        .wrapper {
            width: 90%;
            margin: 0 auto;
            max-width: 80rem;
        }

        .cols {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .col {
            width: calc(33.333333% - 2rem); /* Set to 33.333% for 3 cards in a row */
            margin: 1rem;
            cursor: pointer;
        }

        .container {
            transform-style: preserve-3d;
            perspective: 1000px;
        }

        .front,
        .back {
            background-size: cover;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.25);
            border-radius: 10px;
            background-position: center;
            transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            backface-visibility: hidden;
            text-align: center;
            min-height: 280px;
            height: auto;
            border-radius: 10px;
            color: #fff;
            font-size: 1.5rem;
        }

        .back {
            background: #cedce7;
            background: linear-gradient(45deg, #cedce7 0%, #596a72 100%);
        }

        .front:after {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
            width: 100%;
            height: 100%;
            content: '';
            display: block;
            opacity: .6;
            background-color: #000;
            backface-visibility: hidden;
            border-radius: 10px;
        }

        .container:hover .front,
        .container:hover .back {
            transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
        }

        .back {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }

        .inner {
            transform: translateY(-50%) translateZ(60px) scale(0.94);
            top: 50%;
            position: absolute;
            left: 0;
            width: 100%;
            padding: 2rem;
            box-sizing: border-box;
            outline: 1px solid transparent;
            perspective: inherit;
            z-index: 2;
        }

        .container .back {
            transform: rotateY(180deg);
            transform-style: preserve-3d;
        }

        .container .front {
            transform: rotateY(0deg);
            transform-style: preserve-3d;
        }

        .container:hover .back {
            transform: rotateY(0deg);
            transform-style: preserve-3d;
        }

        .container:hover .front {
            transform: rotateY(-180deg);
            transform-style: preserve-3d;
        }

        .front .inner p {
            font-size: 2rem;
            margin-bottom: 2rem;
            position: relative;
        }

        .front .inner p:after {
            content: '';
            width: 4rem;
            height: 2px;
            position: absolute;
            background: #C6D4DF;
            display: block;
            left: 0;
            right: 0;
            margin: 0 auto;
            bottom: -.75rem;
        }

        .front .inner span {
            color: rgba(255, 255, 255, 0.7);
            font-family: 'Montserrat', sans-serif;
            font-weight: 300;
        }

        @media screen and (max-width: 64rem) {
            .col {
                width: calc(50% - 2rem); /* Set to 50% for 2 cards in a row on medium screens */
            }
        }

        @media screen and (max-width: 48rem) {
            .col {
                width: 100%; /* Set to 100% for 1 card in a row on small screens */
                margin: 0 0 2rem 0;
            }
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <h1 style="color: white;">Our Services</h1> 
        <div class="cols">
            <a href="reviews" class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/500/500/)">
                        <div class="inner">
                            <p>Automobile Booking</p>
                            <span>Vehicle Booking</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                         <p>Easy Bookings for the Customers</p> 
                        </div>
                    </div>
                </div>
            </a>

            <a href="services.html" class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/511/511/)">
                        <div class="inner">
                            <p>Rocogged</p>
                            <span>Lorem ipsum</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
                        </div>
                    </div>
                </div>
            </a>



            <a href="Consultancy.html" class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/512/512/)">
                        <div class="inner">
                            <p>Rocogged</p>
                            <span>Lorem ipsum</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
                        </div>
                    </div>
                </div>
            </a>
            
            <a href="Parts.html" class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/513/513/)">
                        <div class="inner">
                            <p>Rocogged</p>
                            <span>Lorem ipsum</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
                        </div>
                    </div>
                </div>
            </a>
            
            
            <a href="Warranty.html" class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/514/514/)">
                        <div class="inner">
                            <p>Rocogged</p>
                            <span>Lorem ipsum</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
                        </div>
                    </div>
                </div>
            </a>

            <div class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/515/515/)">
                        <div class="inner">
                            <p>New Card 3</p>
                            <span>Lorem ipsum</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

