data Servico = Servico { nome :: String, tipo :: String, preco :: Double }

data StatusAtendimento = EmAndamento | Finalizado | Cancelado deriving (Eq, Show)

data Atendimento = Atendimento { servicos :: [Servico], statusAtendimento :: StatusAtendimento }

totalServicos :: [Servico] -> Double
totalServicos xs = sum (map preco xs)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento at
  | statusAtendimento at == Cancelado = 0.0
  | length (servicos at) > 3 = total * 1.25
  | otherwise = total
  where total = totalServicos (servicos at)

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum serviço no atendimento"
primeiroServico (Atendimento (s:_) _) = nome s

exibirAtendimento :: String -> Atendimento -> IO ()
exibirAtendimento rotulo at = do
  putStrLn (rotulo ++ " (" ++ show (statusAtendimento at) ++ ")")
  putStrLn ("Primeiro serviço: " ++ primeiroServico at)
  putStrLn ("Valor final: R$ " ++ show (valorFinalAtendimento at))

main :: IO ()
main = do
  let atendimento1 = Atendimento [ Servico "Banho de Ervas"   "Relaxante" 40.0
                                 , Servico "Massagem"         "Corporal"  60.0
                                 , Servico "Limpeza de Rio"   "Especial" 120.0
                                 , Servico "Aromaterapia"     "Extra"     30.0 ] Finalizado
  let atendimento2 = Atendimento [ Servico "Banho Simples"    "Basico"    25.0
                                 , Servico "Sauna"            "Relaxante" 35.0 ] EmAndamento

  exibirAtendimento "Atendimento 1" atendimento1
  exibirAtendimento "Atendimento 2" atendimento2
