data Banda = Banda { nome :: String, genero :: String, cache :: Double }

data StatusEvento = Ativo | Encerrado | Cancelado deriving (Eq, Show)

data Evento = Evento { bandas :: [Banda], statusEvento :: StatusEvento }

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
  | statusEvento evento == Cancelado = 0.0
  | otherwise = totalCaches * 1.2
  where totalCaches = sum (map cache (bandas evento))

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda no evento"
bandaAbertura (Evento (b:_) _) = nome b

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda no evento"
bandaEncerramento (Evento bs _) = nome (last bs)

exibirEvento :: String -> Evento -> IO ()
exibirEvento rotulo evento = do
  putStrLn (rotulo ++ " (" ++ show (statusEvento evento) ++ ")")
  putStrLn ("  Custo total: R$ " ++ show (custoTotalEvento evento))
  putStrLn ("  Abertura: " ++ bandaAbertura evento)
  putStrLn ("  Encerramento: " ++ bandaEncerramento evento)

main :: IO ()
main = do
  let bandas1 = [ Banda "Os Trovões" "Rock" 3000.0, Banda "Luar Azul" "Pop" 2000.0, Banda "Final Boss" "Metal" 5000.0 ]
  let evento1 = Evento bandas1 Ativo
  let evento2 = Evento [ Banda "Saudade FM" "MPB" 1500.0, Banda "Eco Final" "Indie" 1800.0 ] Encerrado
  let evento3 = Evento [ Banda "Fantasma" "Jazz" 2500.0 ] Cancelado

  exibirEvento "Evento 1" evento1
  exibirEvento "Evento 2" evento2
  exibirEvento "Evento 3" evento3
