data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }

data StatusPedido = Aberto | Entregue | Cancelado deriving (Eq, Show)

data Pedido = Pedido { bebidas :: [Bebida], statusPedido :: StatusPedido }

valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
  | statusPedido pedido == Cancelado = 0.0
  | otherwise = sum (map preco (bebidas pedido))

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido"
primeiraBebida (Pedido (b:_) _) = nome b

main :: IO ()
main = do
  let pedido1 = Pedido [ Bebida "Café Coado" "Quente" 5.0, Bebida "Cappuccino" "Quente" 9.5 ] Entregue
  let pedido2 = Pedido [ Bebida "Suco de Laranja" "Gelado" 7.0 ] Cancelado

  putStrLn ("Pedido 1 (" ++ show (statusPedido pedido1) ++ ")")
  putStrLn ("Primeira bebida: " ++ primeiraBebida pedido1)
  putStrLn ("Valor total: R$ " ++ show (valorTotalPedido pedido1))

  putStrLn ("Pedido 2 (" ++ show (statusPedido pedido2) ++ ")")
  putStrLn ("Primeira bebida: " ++ primeiraBebida pedido2)
  putStrLn ("Valor total: R$ " ++ show (valorTotalPedido pedido2))
