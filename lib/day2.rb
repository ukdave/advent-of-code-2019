# frozen_string_literal: true

class Day2
  def solve program
    pc = 0
    while pc < program.length
      opcode = program[pc]
      case opcode
      when 1
        program[program[pc + 3]] = program[program[pc + 1]] + program[program[pc + 2]]
      when 2
        program[program[pc + 3]] = program[program[pc + 1]] * program[program[pc + 2]]
      when 99
        break
      else
        raise "Invalid opcode #{opcode}"
      end
      pc += 4
    end
    program
  end
end
