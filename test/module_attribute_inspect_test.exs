defmodule ModuleAttributeInspectTest do
  use ExUnit.Case

  @my_struct_type ModuleAttributeInspect

  test "you can match on the struct as a module attribute" do
    assert %@my_struct_type{} = nil
  end
end
