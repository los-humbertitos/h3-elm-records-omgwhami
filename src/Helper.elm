module Helper exposing (..)

import Html exposing (Html)
import Html.Attributes


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "Java"
      , releaseYear = 1991
      , currentVersion = "23.0"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames inData =
    List.map .name inData


type alias User =
    { name : String
    , uType : String
    }

users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    , { name = "Andrea", uType = "Student" }
    ]

onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name
            else
                ""
        )
        userList

type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videogames : List Videogame
videogames =
    [ { title = "equisde"
      , releaseYear = 2067
      , available = False
      , downloads = 67000
      , genres = [ "Meme" ]
      }
    , { title = "xde"
      , releaseYear = 2012
      , available = True
      , downloads = 349554
      , genres = [ "Meme" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "8GB"
    , model = "Nitro V15"
    , brand = "Acer"
    , screenSize = "15.6"
    }


main : Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
