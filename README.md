# ModuleAttributeInspect

A minimal example repo for a function-clause-error that arises when matching
like so in an ExUnit test

```elixir
@my_struct SomeStruct

assert %@my_struct{} = nil
```

<details><summary>Sample error message...</summary>
<br>

```
17:02:54.348 [error] GenServer #PID<0.143.0> terminating
** (FunctionClauseError) no function clause matching in Code.Identifier.inspect_as_atom/1
    (elixir 1.11.0) lib/code/identifier.ex:135: Code.Identifier.inspect_as_atom({:@, [expanded: ModuleAttributeInspect, line: 7], [{:my_struct_type, [line: 7], nil}]})
    (ex_unit 1.11.0) lib/ex_unit/diff.ex:913: ExUnit.Diff.safe_to_algebra/2
    (ex_unit 1.11.0) lib/ex_unit/diff.ex:1016: ExUnit.Diff.wrap_on_diff/3
    (ex_unit 1.11.0) lib/ex_unit/formatter.ex:407: ExUnit.Formatter.format_sides/6
    (ex_unit 1.11.0) lib/ex_unit/formatter.ex:395: ExUnit.Formatter.format_context/4
    (ex_unit 1.11.0) lib/ex_unit/formatter.ex:160: ExUnit.Formatter.format_exception/6
    (ex_unit 1.11.0) lib/ex_unit/formatter.ex:131: anonymous fn/7 in ExUnit.Formatter.format_test_failure/5
    (elixir 1.11.0) lib/enum.ex:1496: anonymous fn/2 in Enum.map_join/3
    (elixir 1.11.0) lib/enum.ex:3437: Enum.map_intersperse_list/3
    (elixir 1.11.0) lib/enum.ex:1496: Enum.map_join/3
    (ex_unit 1.11.0) lib/ex_unit/formatter.ex:130: ExUnit.Formatter.format_test_failure/5
    (ex_unit 1.11.0) lib/ex_unit/cli_formatter.ex:99: ExUnit.CLIFormatter.handle_cast/2
    (stdlib 3.13.2) gen_server.erl:680: :gen_server.try_dispatch/4
    (stdlib 3.13.2) gen_server.erl:756: :gen_server.handle_msg/6
    (stdlib 3.13.2) proc_lib.erl:226: :proc_lib.init_p_do_apply/3
Last message: {:"$gen_cast", {:test_finished, %ExUnit.Test{case: ModuleAttributeInspectTest, logs: "", module: ModuleAttributeInspectTest, name: :"test you can match on the struct as a module attribute", state: {:failed, [{:error, %ExUnit.AssertionError{args: :ex_unit_no_meaningful_value, context: {:match, []}, doctest: :ex_unit_no_meaningful_value, expr: {:assert, [line: 7], [{:=, [line: 7], [{:%, [line: 7], [{:@, [line: 7], [{:my_struct_type, [line: 7], nil}]}, {:%{}, [line: 7], []}]}, nil]}]}, left: {:%, [line: 7], [{:@, [expanded: ModuleAttributeInspect, line: 7], [{:my_struct_type, [line: 7], nil}]}, {:%{}, [line: 7], []}]}, message: "match (=) failed", right: nil}, [{ModuleAttributeInspectTest, :"test you can match on the struct as a module attribute", 1, [file: 'test/module_attribute_inspect_test.exs', line: 7]}]}]}, tags: %{async: false, case: ModuleAttributeInspectTest, describe: nil, describe_line: nil, file: "/vagrant/code/module_attribute_inspect/test/module_attribute_inspect_test.exs", line: 6, module: ModuleAttributeInspectTest, registered: %{}, test: :"test you can match on the struct as a module attribute", test_type: :test}, time: 1271}}}
State: %{colors: [enabled: true, diff_delete: :red, diff_delete_whitespace: "\e[48;5;88m", diff_insert: :green, diff_insert_whitespace: "\e[48;5;28m"], excluded_counter: 0, failure_counter: 0, invalid_counter: 0, seed: 279316, skipped_counter: 0, slowest: 0, test_counter: %{}, test_timings: [], trace: false, width: 190}

17:02:54.361 [error] Task #PID<0.137.0> started from #PID<0.95.0> terminating
** (stop) exited in: GenServer.stop(#PID<0.143.0>, :normal, :infinity)
    ** (EXIT) exited in: :sys.terminate(#PID<0.143.0>, :normal, :infinity)
        ** (EXIT) an exception was raised:
            ** (FunctionClauseError) no function clause matching in Code.Identifier.inspect_as_atom/1
                (elixir 1.11.0) lib/code/identifier.ex:135: Code.Identifier.inspect_as_atom({:@, [expanded: ModuleAttributeInspect, line: 7], [{:my_struct_type, [line: 7], nil}]})
                (ex_unit 1.11.0) lib/ex_unit/diff.ex:913: ExUnit.Diff.safe_to_algebra/2
                (ex_unit 1.11.0) lib/ex_unit/diff.ex:1016: ExUnit.Diff.wrap_on_diff/3
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:407: ExUnit.Formatter.format_sides/6
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:395: ExUnit.Formatter.format_context/4
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:160: ExUnit.Formatter.format_exception/6
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:131: anonymous fn/7 in ExUnit.Formatter.format_test_failure/5
                (elixir 1.11.0) lib/enum.ex:1496: anonymous fn/2 in Enum.map_join/3
                (elixir 1.11.0) lib/enum.ex:3437: Enum.map_intersperse_list/3
                (elixir 1.11.0) lib/enum.ex:1496: Enum.map_join/3
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:130: ExUnit.Formatter.format_test_failure/5
                (ex_unit 1.11.0) lib/ex_unit/cli_formatter.ex:99: ExUnit.CLIFormatter.handle_cast/2
                (stdlib 3.13.2) gen_server.erl:680: :gen_server.try_dispatch/4
                (stdlib 3.13.2) gen_server.erl:756: :gen_server.handle_msg/6
                (stdlib 3.13.2) proc_lib.erl:226: :proc_lib.init_p_do_apply/3
    (elixir 1.11.0) lib/gen_server.ex:985: GenServer.stop/3
    (ex_unit 1.11.0) lib/ex_unit/event_manager.ex:22: anonymous fn/2 in ExUnit.EventManager.stop/1
    (elixir 1.11.0) lib/enum.ex:2181: Enum."-reduce/3-lists^foldl/2-0-"/3
    (ex_unit 1.11.0) lib/ex_unit/event_manager.ex:21: ExUnit.EventManager.stop/1
    (ex_unit 1.11.0) lib/ex_unit/runner.ex:28: ExUnit.Runner.run/2
    (elixir 1.11.0) lib/task/supervised.ex:90: Task.Supervised.invoke_mfa/2
    (elixir 1.11.0) lib/task/supervised.ex:35: Task.Supervised.reply/5
    (stdlib 3.13.2) proc_lib.erl:226: :proc_lib.init_p_do_apply/3
Function: &ExUnit.run/0
    Args: []
** (EXIT from #PID<0.95.0>) exited in: GenServer.stop(#PID<0.143.0>, :normal, :infinity)
    ** (EXIT) exited in: :sys.terminate(#PID<0.143.0>, :normal, :infinity)
        ** (EXIT) an exception was raised:
            ** (FunctionClauseError) no function clause matching in Code.Identifier.inspect_as_atom/1
                (elixir 1.11.0) lib/code/identifier.ex:135: Code.Identifier.inspect_as_atom({:@, [expanded: ModuleAttributeInspect, line: 7], [{:my_struct_type, [line: 7], nil}]})
                (ex_unit 1.11.0) lib/ex_unit/diff.ex:913: ExUnit.Diff.safe_to_algebra/2
                (ex_unit 1.11.0) lib/ex_unit/diff.ex:1016: ExUnit.Diff.wrap_on_diff/3
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:407: ExUnit.Formatter.format_sides/6
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:395: ExUnit.Formatter.format_context/4
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:160: ExUnit.Formatter.format_exception/6
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:131: anonymous fn/7 in ExUnit.Formatter.format_test_failure/5
                (elixir 1.11.0) lib/enum.ex:1496: anonymous fn/2 in Enum.map_join/3
                (elixir 1.11.0) lib/enum.ex:3437: Enum.map_intersperse_list/3
                (elixir 1.11.0) lib/enum.ex:1496: Enum.map_join/3
                (ex_unit 1.11.0) lib/ex_unit/formatter.ex:130: ExUnit.Formatter.format_test_failure/5
                (ex_unit 1.11.0) lib/ex_unit/cli_formatter.ex:99: ExUnit.CLIFormatter.handle_cast/2
                (stdlib 3.13.2) gen_server.erl:680: :gen_server.try_dispatch/4
                (stdlib 3.13.2) gen_server.erl:756: :gen_server.handle_msg/6
                (stdlib 3.13.2) proc_lib.erl:226: :proc_lib.init_p_do_apply/3
```

</details>

Matching against maps produces a fine mismatch message:

```
# a map
1) test you can match on the struct as a module attribute (ModuleAttributeInspectTest)
     test/module_attribute_inspect_test.exs:6
     match (=) failed
     code:  assert %@my_struct_type{} = MapSet.new()
     left:  %{__struct__: @my_struct_type}
     right: %MapSet{map: %{}, version: 2}
     stacktrace:
       test/module_attribute_inspect_test.exs:7: (test)



Finished in 0.03 seconds
1 test, 1 failure
```

And the message is fine when the module attribute is replaced with the literal
value:

```
1) test you can match on the struct as a module attribute (ModuleAttributeInspectTest)
     test/module_attribute_inspect_test.exs:6
     match (=) failed
     code:  assert %ModuleAttributeInspect{} = nil
     left:  %ModuleAttributeInspect{}
     right: nil
     stacktrace:
       test/module_attribute_inspect_test.exs:7: (test)



Finished in 0.04 seconds
1 test, 1 failure
```

But matching against values which are not maps produces the error. Values that
do produce the error

- atoms, nil and booleans included
- pid
- reference
- numbers
- binaries
- lists (including the empty list and charlists)

Values that do not produce the error

- maps (including structs)
