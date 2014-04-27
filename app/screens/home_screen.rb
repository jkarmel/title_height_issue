class HomeScreen < PM::TableScreen

  def table_data
    [{
      title: "Northwest States",
      title_view: TableSectionCell,
      title_height: 300,
      cells: [
        { title: "Oregon", action: :visit_state, arguments: { state: @oregon }},
        { title: "Washington", action: :visit_state, arguments: { state: @washington }}
      ]
    }]
  end
end

class TableSectionCell < UITableViewCell
  def initWithStyle(style_name, reuseIdentifier:reuseIdentifier)
    super
    setup_cell
    self
  end

  def setup_cell
    self.backgroundColor = UIColor.redColor
  end
end
