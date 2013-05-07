class PdfsController < ApplicationController

  def generate_pdf
    pdf_kit = create_pdf
    send_data(pdf_kit.to_pdf, :filename => "Attendees-report.pdf", :type => 'application/pdf', :disposition => 'inline')
    @service_pdf = pdf_kit.to_pdf
  end

  private

  def create_pdf
    @attendees = Attendee.all
    @logo_url = "#{Rails.root}/app/assets/images/logo-crowd.jpg"
    pdf_kit = PDFKit.new render_to_string('pdfs/create_pdf', layout: 'pdf', formats: [:html])
    pdf_kit.stylesheets << Rails.application.assets['reset.css'].pathname
    pdf_kit.stylesheets << Rails.application.assets['pdfs.css'].pathname
    return pdf_kit
  end

end
