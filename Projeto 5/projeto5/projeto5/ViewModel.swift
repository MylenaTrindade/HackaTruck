//
//  Model.swift
//  projeto5
//
//  Created by Turma02-2 on 05/06/25.
//

import Foundation
class ViewModule: ObservableObject{
    
    @Published var personagens2 : [Personagens] = []
    
    func fetch(){
        guard let url = URL(string:  "http://127.0.0.1:1880/GetBrancadeNeve")else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data,error == nil else{
                return
            }
            
        do{
            let parsed = try JSONDecoder().decode([Personagens].self,from: data)
            
            DispatchQueue.main.async {
                self?.personagens2 = parsed
            }
        } catch {
            print(error)
        }
    }
    
    task.resume()
    }
}
