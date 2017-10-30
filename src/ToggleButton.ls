{create-class, create-factory, DOM:{path,g, rect}} = require \react
SvgWrapper = create-factory require \./SvgWrapper

module.exports = create-class do 

    # get-default-props :: () -> Props
    get-default-props: ->
        open: false
        flipped: false

    # render :: a -> ReactElement
    render: ->
        SvgWrapper do 
            class-name: \react-selectize-toggle-button
            style: 
                width: 10
                height: 8
            g(rect {
                height: 249 
                width: 249
                y: 0
                x: 0.173838
                stroke-width: 0
                stroke: "#000000"
            }, path {
                transform: | (@props.open and !@props.flipped) or (!@props.open and @props.flipped) => "rotate(-180 124.67384338378908,124.49999237060545)"
                           | _ => ""
                stroke: "#ffffff"
                d: "m40.59846,198.065934l84.075385,-147.131875l84.075385,147.131875l-168.15077,0z"
                stroke-width: 0
                fill: "#ffffff"
            })