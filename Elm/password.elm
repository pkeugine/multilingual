import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

-- MAIN

main =
  Browser.sandbox { init = init, update = update, view = view }
  
-- MODEL

type alias Model =
  { name : String
  , password : String
  , passwordCheck : String
  }

init : Model
init =
  Model "" "" ""

-- UPDATE

type Msg
  = Name String
  | Password String
  | PasswordCheck String
  
update : Msg -> Model -> Model
update msg model =
  case msg of
    Name name ->
      { model | name = name }
      
    Password password ->
      { model | password = password }
      
    PasswordCheck passwordCheck ->
      { model | passwordCheck = passwordCheck }
      
-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ viewInput "text" "Name" model.name Name
    , viewInput "password" "Password" model.password Password
    , viewInput "password" "Re-enter Password" model.passwordCheck PasswordCheck
    , viewValidation model
    ]

viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [ type_ t, placeholder p, value v, onInput toMsg ] []


viewValidation : Model -> Html msg
viewValidation model =
  if (String.length model.password) == 0 then
    div [ style "color" "red" ] [ text "set the password" ]
  else if model.password == model.passwordCheck then
    div [ style "color" "green" ] [ text "OK" ]
  else
    div [ style "color" "red" ] [ text "Passwords do not match!" ]
