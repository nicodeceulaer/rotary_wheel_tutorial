class RotaryWheelController < UIViewController

  def viewDidLoad
    @label = UILabel.alloc.initWithFrame(CGRectMake(10, 220, 100, 40))
    @label.backgroundColor   = UIColor.lightGrayColor
    @label.text              = "toedeloe"
    view.addSubview(@label)

    @wheel = RotaryWheel.alloc.initWithFrame(CGRectMake(0, 0, 200, 200), withDelegate: self, withSections: 4)
    view.addSubview(@wheel)
  end
  
  def wheelDidChangeValue new_value
    NSLog "wheelDidChangeValue set label #{@label.text} ==> #{new_value}"
    @label.text = new_value.label
  end
end