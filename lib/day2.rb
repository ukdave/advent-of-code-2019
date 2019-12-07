# frozen_string_literal: true

class Day2
  OPCODES = {
    1 => :add,
    2 => :multiply,
    99 => :terminate,
  }.freeze

  # rubocop:disable Metrics/MethodLength
  def solve program
    memory = program.dup
    pc = 0
    while pc < memory.length
      opcode = memory[pc]
      operation = OPCODES[opcode]
      break if operation == :terminate
      raise "Invalid opcode #{opcode}" unless operation

      send(operation, memory, *memory[pc + 1..pc + 3])
      pc += 4
    end
    memory
  end
  # rubocop:enable Metrics/MethodLength

  private

  def add memory, arg1, arg2, arg3
    memory[arg3] = memory[arg1] + memory[arg2]
  end

  def multiply memory, arg1, arg2, arg3
    memory[arg3] = memory[arg1] * memory[arg2]
  end
end
