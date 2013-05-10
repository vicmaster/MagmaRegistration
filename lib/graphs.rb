class Graphs

  def initialize
    @graph = LazyHighCharts::HighChart.new('graph')
  end

  def parse_data data
    result = []
    data.each do |element|
      result << {
        name: element[:name],
        y: element[:count]
      }
    end

    result
  end

  def render_graph options={}
    @graph.title options[:text]
    @graph.series(
      type: options[:type],
      name: options[:name],
      data: parse_data(options[:data]),
      size: 200
    )

   @graph
  end

end