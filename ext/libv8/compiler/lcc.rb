module Libv8
  module Compiler
    class LCC < GenericCompiler
      LCC_VERSION_REGEXP = /^.*?:(.*?):.*?:.*$/
      LCC_TARGET_REGEXP = /^.*?:.*?:.*?:(.*)$/

      def name
        'LCC'
      end

      def compatible?
        false
      end

      private

      def version_regexp
        LCC_VERSION_REGEXP
      end

      def target_regexp
        LCC_TARGET_REGEXP
      end
    end
  end
end
