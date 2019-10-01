# frozen_string_literal: true

module GraphQL
  class Schema
    class Member
      module ValidatesInput
        def valid_input?(val, ctx)
          validate_input(val, ctx).valid?
        end

        def valid_isolated_input?(v)
          valid_input?(v, GraphQL::Query::NullContext)
        end

        def coerce_isolated_input(v)
          coerce_input(v, GraphQL::Query::NullContext)
        end

        def coerce_isolated_result(v)
          coerce_result(v, GraphQL::Query::NullContext)
        end
      end
    end
  end
end