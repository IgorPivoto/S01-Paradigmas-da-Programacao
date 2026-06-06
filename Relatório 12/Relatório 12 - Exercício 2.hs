data Item = Item { nome :: String, categoria :: String, preco :: Double }

data StatusCompra = Pendente | Concluida | Cancelada deriving (Eq, Show)

data Compra = Compra { itens :: [Item], statusCompra :: StatusCompra }

totalItens :: [Item] -> Double
totalItens xs = sum (map preco xs)

valorFinal :: Compra -> Double
valorFinal compra
  | statusCompra compra == Cancelada = 0.0
  | total > 200 = total * 0.9
  | otherwise = total
  where total = totalItens (itens compra)

main :: IO ()
main = do
  let compra = Compra [ Item "Espada Mestre" "Arma" 150.0, Item "Escudo" "Defesa" 80.0, Item "Poção de Vida" "Cura" 25.0 ] Concluida

  putStrLn ("Status da compra: " ++ show (statusCompra compra))
  putStrLn ("Total dos itens: R$ " ++ show (totalItens (itens compra)))
  putStrLn ("Valor final: R$ " ++ show (valorFinal compra))
