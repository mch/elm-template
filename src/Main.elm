module Main exposing (..)

import Browser
import Html exposing (Html, text, p, div)



-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- MODEL


type alias Model
  = { message: String
    , counter: Int
    }


init : () -> (Model, Cmd Msg)
init _ =
  ( Model "Hello world" 42
  , Cmd.none
  )



-- UPDATE


type Msg
  = None


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
      None -> ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div [] [ p [] [ text ("The message is: " ++ model.message) ]
           , p [] [ text ("The current count is: " ++ (String.fromInt model.counter)) ]
           ]
    
