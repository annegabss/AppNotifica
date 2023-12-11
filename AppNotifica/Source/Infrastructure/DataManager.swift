//
//  DataManager.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 11/12/23.
//

import Foundation

class DataManager{
    static var shared = DataManager()
    var ocorrencias: [Ocorrencia] = []
    
    init() {
        self.ocorrencias = [
            //            .init(title:"Ocorrencia #1", description: "Descrição", location: "Campus", status: "Não resolvida" ),
            //          .init(title:"Ocorrencia #2", description: "Descrição", location: "Campus", status: "Não resolvida" ),
            //        .init(title:"Ocorrencia #3", description: "Descrição", location: "Campus", status: "Não resolvida" ),
            //      .init(title:"Ocorrencia #4", description: "Descrição", location: "Campus", status: "Não resolvida" )
        ]
        
        
        
        func add(ocorrencia: Ocorrencia){
            ocorrencias.append(ocorrencia)
            if let data = try? JSONEncoder().encode(ocorrencias){
                UserDefaults.standard.setValue(data, forKey: "DATA_OCORRENCIAS")
                //print
            }
        }
        
        func loadData() -> String {
            if let data = UserDefaults.standard.string(forKey: "DATA_OCORRENCIAS"){
                do {
                    let objects = try JSONDecoder().decode([Ocorrencia].self, from: data)
                    return objects
                } catch {
                    print (error)
                }
                return []
            }
        }
    }
}
