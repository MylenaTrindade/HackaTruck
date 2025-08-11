//
//  ViewModule.swift
//  projeto 4
//
//  Created by Turma02-2 on 04/06/25.
//

import Foundation
class ViewModule: ObservableObject{
    
    @Published var personagens = Disney(imageUrl: "")
    
    
    func fetch(){
        guard let url = URL(string:  "https://api.disneyapi.dev/character/7")else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data,error == nil else{
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode(DataD.self,from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed.data
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
