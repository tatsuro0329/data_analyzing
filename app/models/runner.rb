class Runner < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '走者なし' },
    { id: 3, name: '走者1塁' },
    { id: 4, name: '走者2塁' },
    { id: 5, name: '走者1･2塁' },
    { id: 6, name: '走者3塁' },
    { id: 7, name: '走者1･3塁' },
    { id: 8, name: '走者2･3塁' },
    { id: 9, name: '走者満塁' }
  ]

end