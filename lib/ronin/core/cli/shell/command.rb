#
# Copyright (c) 2021 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This file is part of ronin-core.
#
# ronin-core is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# ronin-core is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public License
# along with ronin-core.  If not, see <https://www.gnu.org/licenses/>.
#

module Ronin
  module Core
    module CLI
      class Shell
        class Command

          # The command's name.
          #
          # @return [Symbol]
          attr_reader :name

          # The usage string for the command's arguments.
          #
          # @return [String, nil]
          attr_reader :usage

          # Possible tab completion values for the command's arguments.
          #
          # @return [Array<String>]
          attr_reader :completion

          # The command's one-line summary.
          #
          # @return [String]
          attr_reader :summary

          # The command's multi-line help output.
          #
          # @return [String]
          attr_reader :help

          #
          # Initializes a command value object.
          #
          # @param [Symbol] name
          #   The name of the command.
          #
          # @param [String, nil] usage
          #   The usage string for the command's arguments.
          #
          # @param [Array<String>] completion
          #   Potential tab completion values for the command's arguments.
          #
          # @param [String] summary
          #   A single line summary for the command.
          #
          # @param [String] help
          #   Multi-line help information for the command.
          #
          def initialize(name,usage: nil,
                              completion: [],
                              summary: ,
                              help: summary)
            @name       = name
            @usage      = usage
            @completion = completion
            @summary    = summary
            @help       = help
          end

          #
          # Converts the command to a String.
          #
          # @return [String]
          #   The command name and the optional usage.
          #
          def to_s
            if @usage
              "#{@name} #{@usage}"
            else
              @name.to_s
            end
          end

        end
      end
    end
  end
end
