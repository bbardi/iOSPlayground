//
//  UnitConverter.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 01.05.2024.
//

import SwiftUI

func fromCelsius(_ dest:String, _ value: Double) -> Double{
    switch(dest){
    case "Celsius":
        return value;
    case "Fahrenheit":
        return value*1.8+32
    case "Kelvin":
        return value+273.15
    default:
        return value
    }
}
func fromFahrenheit(_ dest:String, _ value: Double) -> Double{
    switch(dest){
    case "Celsius":
        return (value-32)/1.8;
    case "Fahrenheit":
        return value
    case "Kelvin":
        return (value-32)/1.8+273.15
    default:
        return value
    }
}
func fromKelvin(_ dest:String, _ value: Double) -> Double{
    switch(dest){
    case "Celsius":
        return value-273.15
    case "Fahrenheit":
        return (value-273.15)*1.8+32
    case "Kelvin":
        return value
    default:
        return value
    }
}

struct UnitConverter: View {
    let units = ["Celsius","Kelvin","Fahrenheit"]
    @State var sourceUnit: String = "Celsius";
    @State var destUnit: String = "Fahrenheit";
    @State var inputValue: Double = 0;
    var output: Double {
        switch sourceUnit {
        case "Celsius":
            fromCelsius(destUnit, inputValue)
        case "Fahrenheit":
            fromFahrenheit(destUnit, inputValue)
        case "Kelvin":
            fromKelvin(destUnit, inputValue)
           
        default:
            0
        }
    }
    var body: some View {
        Form{
            Section{
                Picker("Source", selection: $sourceUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                Picker("Destination", selection: $destUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Enter your value", value: $inputValue, format: .number)
            }
            Section{
                Text("\(output)")
            }
        }.navigationTitle("Unit Converter")
    }
}

#Preview {
    UnitConverter()
}
