require 'json'

module ReactHelper
  def react_component(component_name, props = {})
    content_tag(
      :div,
      nil,
      class: 'react-component-target',
      data: {
        react_class: component_name,
        react_props: props.to_json
      }
    )
  end
end
