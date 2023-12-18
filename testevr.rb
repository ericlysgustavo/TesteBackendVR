describe '#remove_text_after_symbols' do
  it 'remove o texto após qualquer um dos símbolos recebidos' do
    input_string = 'bananas, tomates # e ventiladores'
    symbols_array = ['#', '!']
    expected_output = 'bananas, tomates'

    expect(remove_text_after_symbols(input_string, symbols_array)).to eq(expected_output)
  end

  it 'remove o texto após qualquer um dos símbolos recebidos, mesmo que haja espaços em branco' do
    input_string = 'o rato roeu a roupa $ do rei % de roma           '
    symbols_array = ['%', '!']
    expected_output = 'o rato roeu a roupa $ do rei'

    expect(remove_text_after_symbols(input_string, symbols_array)).to eq(expected_output)
  end

  it 'não remove nada se a string de entrada não contiver os símbolos do array' do
    input_string = 'the quick brown fox & jumped over * the lazy dog'
    symbols_array = ['&', '*', '%', '!']
    expected_output = 'the quick brown fox'

    expect(remove_text_after_symbols(input_string, symbols_array)).to eq(expected_output)
  end
end