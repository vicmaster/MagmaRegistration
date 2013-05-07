PDFKit.configure do |config|
  config.default_options = {
    :encoding=>"UTF-8",
    #:page_size     => 'Letter',
    #:margin_top    => '0.0in',
    #:margin_right  => '0.0in',
    #:margin_bottom => '0.0in',
    #:margin_left   => '0.0in',
    #:footer_center => "Pagina [page] de [toPage]",
    #:footer_font_size => 8,
    #:footer_font_name => 'Times New Roman'
    :page_size                => 'Letter',
    :margin_top               => '0.0in',
    :margin_right             => '0.0in',
    :margin_bottom            => '0.3in',
    :margin_left              => '0.0in',
    :footer_center            => "[page]",
    :footer_font_size         => 8,
    :footer_font_name         => 'Times New Roman',
    :lowquality               => true
  }
end
