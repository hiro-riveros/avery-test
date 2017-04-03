class PublicController < ApplicationController

  def index
    names = ['Jordan', 'Chris', 'Jon', 'Mike', 'Kelly', 'Bob', 'Greg']
    labels = Prawn::Labels.render(names, :type => 'Avery5160') do |pdf, name|
      pdf.text(name)
    end
    send_data labels, filename: 'names.pdf', type: 'application/pdf'
  end
end
