module BootstrapHelper
  def bootstrap_classes_for_flash(flash_type)
      case flash_type.to_s
      when 'error'
        'alert alert-danger'
      when 'alert'
        'alert alert-warning'
      when 'success'
        'alert alert-success'
      else
        'alert alert-info'
      end
    end

    def bootstrap_alert(flash_type, id: nil, dismiss: true, &blk)
      classes = "#{bootstrap_classes_for_flash(flash_type)} alert-dismissable"

      message = capture do
        yield
      end

      content_tag(:div, id: id, class: classes, role: 'alert') do
        button_options = {
          type: 'button',
          class: 'close',
          data: { dismiss: 'alert' },
          aria: { label: 'Close' }
        }

        if dismiss
          content_tag(:button, button_options) do
            content_tag(:span, "&times;".html_safe, aria: { hidden: true })
          end + message
        else
          message
        end
      end
    end
end
