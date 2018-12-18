# Shared macros

# REPOINFO_HEADS is included from REPOINFO_SRCS
# only when the building environment has ability
# to generate the header file.
# REPOINFO_OBJS is always linked to ctags executable.
REPOINFO_HEADS = main/repoinfo.h
REPOINFO_SRCS  = main/repoinfo.c
REPOINFO_OBJS  = $(REPOINFO_SRCS:.c=.$(OBJEXT))

MIO_HEADS = main/mio.h
MIO_SRCS  = main/mio.c

MAIN_PUBLIC_HEADS =		\
		main/dependency.h\
		main/entry.h	\
		main/gcc-attr.h	\
		main/gvars.h	\
		main/htable.h	\
		main/inline.h	\
		main/keyword.h	\
		main/lregex.h	\
		main/mbcs.h	\
		main/nestlevel.h\
		main/numarray.h	\
		main/objpool.h	\
		main/options.h	\
		main/param.h	\
		main/parse.h	\
		main/promise.h	\
		main/ptrarray.h	\
		main/routines.h	\
		main/strlist.h	\
		main/subparser.h\
		main/tokeninfo.h\
		main/trace.h	\
		main/types.h	\
		main/vstring.h	\
		\
		$(NULL)

MAIN_PRIVATE_HEADS =		\
	main/args_p.h		\
	main/colprint_p.h	\
	main/dependency_p.h	\
	main/entry_p.h		\
	main/error_p.h		\
	main/flags_p.h		\
	main/fmt_p.h		\
	main/interactive_p.h	\
	main/keyword_p.h	\
	main/lregex_p.h		\
	main/mbcs_p.h		\
	main/options_p.h	\
	main/param_p.h		\
	main/parse_p.h		\
	main/parsers_p.h	\
	main/portable-dirent_p.h\
	main/promise_p.h	\
	main/ptag_p.h		\
	main/routines_p.h	\
	main/sort_p.h		\
	main/subparser_p.h	\
	main/writer_p.h		\
		\
		$(NULL)

MAIN_HEADS =			\
	main/ctags.h		\
	main/field.h		\
	main/general.h		\
	main/kind.h		\
	main/lxpath.h		\
	main/main.h		\
	main/read.h		\
	main/selectors.h	\
	main/trashbox.h		\
	main/xtag.h		\
	\
	$(MAIN_PUBLIC_HEADS)    \
	$(MAIN_PRIVATE_HEADS)   \
	\
	$(MIO_HEADS)

MAIN_SRCS =				\
	main/args.c			\
	main/colprint.c			\
	main/dependency.c		\
	main/entry.c			\
	main/entry_private.c		\
	main/error.c			\
	main/field.c			\
	main/flags.c			\
	main/fmt.c			\
	main/htable.c			\
	main/keyword.c			\
	main/kind.c			\
	main/lregex.c			\
	main/lxpath.c			\
	main/main.c			\
	main/mbcs.c			\
	main/nestlevel.c		\
	main/numarray.c			\
	main/objpool.c			\
	main/options.c			\
	main/param.c			\
	main/parse.c			\
	main/portable-scandir.c		\
	main/promise.c			\
	main/ptag.c			\
	main/ptrarray.c			\
	main/read.c			\
	main/routines.c			\
	main/seccomp.c			\
	main/selectors.c		\
	main/sort.c			\
	main/strlist.c			\
	main/trace.c			\
	main/trashbox.c			\
	main/tokeninfo.c		\
	main/vstring.c			\
	main/writer.c			\
	main/writer-etags.c		\
	main/writer-ctags.c		\
	main/writer-json.c		\
	main/writer-xref.c		\
	main/xtag.c			\
	\
	$(REPOINFO_SRCS) \
	$(MIO_SRCS)      \
	\
	$(NULL)

include makefiles/translator_input.mak
TRANSLATED_SRCS = $(TRANSLATOR_INPUT:.ctags=.c)

PARSER_HEADS = \
	parsers/cxx/cxx_debug.h \
	parsers/cxx/cxx_keyword.h \
	parsers/cxx/cxx_parser_internal.h \
	parsers/cxx/cxx_parser.h \
	parsers/cxx/cxx_scope.h \
	parsers/cxx/cxx_subparser.h \
	parsers/cxx/cxx_subparser_internal.h \
	parsers/cxx/cxx_tag.h \
	parsers/cxx/cxx_token.h \
	parsers/cxx/cxx_token_chain.h \
	\
	parsers/cpreprocessor.h \
	parsers/iniconf.h \
	parsers/m4.h \
	parsers/make.h \
	parsers/tcl.h \
	\
	$(NULL)

PARSER_SRCS =				\
	parsers/ada.c			\
	parsers/ant.c			\
	parsers/asciidoc.c		\
	parsers/asm.c			\
	parsers/asp.c			\
	parsers/autoconf.c		\
	parsers/autoit.c		\
	parsers/automake.c		\
	parsers/awk.c			\
	parsers/basic.c			\
	parsers/beta.c			\
	parsers/c.c			\
	parsers/clojure.c		\
	parsers/css.c			\
	parsers/cobol.c			\
	parsers/cpreprocessor.c		\
	parsers/ctags-aspell.c		\
	parsers/cxx/cxx.c		\
	parsers/cxx/cxx_debug.c		\
	parsers/cxx/cxx_debug_type.c	\
	parsers/cxx/cxx_keyword.c		\
	parsers/cxx/cxx_parser.c		\
	parsers/cxx/cxx_parser_block.c		\
	parsers/cxx/cxx_parser_function.c		\
	parsers/cxx/cxx_parser_lambda.c		\
	parsers/cxx/cxx_parser_namespace.c		\
	parsers/cxx/cxx_parser_template.c		\
	parsers/cxx/cxx_parser_tokenizer.c		\
	parsers/cxx/cxx_parser_typedef.c		\
	parsers/cxx/cxx_parser_using.c		\
	parsers/cxx/cxx_parser_variable.c		\
	parsers/cxx/cxx_subparser.c	\
	parsers/cxx/cxx_qtmoc.c		\
	parsers/cxx/cxx_scope.c		\
	parsers/cxx/cxx_tag.c		\
	parsers/cxx/cxx_token.c		\
	parsers/cxx/cxx_token_chain.c		\
	parsers/diff.c			\
	parsers/dosbatch.c		\
	parsers/dtd.c			\
	parsers/dts.c			\
	parsers/eiffel.c		\
	parsers/erlang.c		\
	parsers/falcon.c		\
	parsers/flex.c			\
	parsers/fortran.c		\
	parsers/fypp.c			\
	parsers/go.c			\
	parsers/html.c			\
	parsers/iniconf.c		\
	parsers/itcl.c			\
	parsers/jprop.c			\
	parsers/jscript.c		\
	parsers/json.c			\
	parsers/ldscript.c		\
	parsers/lisp.c			\
	parsers/lua.c			\
	parsers/m4.c			\
	parsers/make.c			\
	parsers/matlab.c		\
	parsers/myrddin.c		\
	parsers/objc.c			\
	parsers/ocaml.c			\
	parsers/pascal.c		\
	parsers/perl.c			\
	parsers/perl6.c			\
	parsers/php.c			\
	parsers/protobuf.c		\
	parsers/python.c		\
	parsers/pythonloggingconfig.c	\
	parsers/r.c			\
	parsers/rexx.c			\
	parsers/robot.c			\
	parsers/rpmspec.c		\
	parsers/rst.c			\
	parsers/ruby.c			\
	parsers/rust.c			\
	parsers/scheme.c		\
	parsers/sh.c			\
	parsers/slang.c			\
	parsers/sml.c			\
	parsers/sql.c			\
	parsers/systemdunit.c		\
	parsers/tcl.c			\
	parsers/tcloo.c			\
	parsers/tex.c			\
	parsers/ttcn.c			\
	parsers/verilog.c		\
	parsers/vhdl.c			\
	parsers/vim.c			\
	parsers/windres.c		\
	parsers/yacc.c			\
	parsers/yumrepo.c		\
	\
	$(TRANSLATED_SRCS)		\
	\
	$(NULL)

XML_HEADS =
XML_SRCS = \
	 parsers/maven2.c		\
	 parsers/dbusintrospect.c	\
	 parsers/glade.c		\
	 parsers/svg.c			\
	 parsers/plist.c		\
	 parsers/relaxng.c		\
	 parsers/xslt.c			\
	 \
	 $(NULL)

YAML_HEADS = parsers/yaml.h
YAML_SRCS = \
	  parsers/yaml.c		\
	  \
	  parsers/ansibleplaybook.c	\
	  \
	  $(NULL)

DEBUG_HEADS = main/debug.h
DEBUG_SRCS = main/debug.c

ALL_HEADS = $(MAIN_HEADS) $(PARSER_HEADS) $(DEBUG_HEADS)
ALL_SRCS = $(MAIN_SRCS) $(PARSER_SRCS) $(DEBUG_SRCS)

ENVIRONMENT_HEADS =
ENVIRONMENT_SRCS =

REGEX_HEADS = gnu_regex/regex.h
REGEX_SRCS = gnu_regex/regex.c
REGEX_OBJS = $(REGEX_SRCS:.c=.$(OBJEXT))

FNMATCH_HEADS = fnmatch/fnmatch.h
FNMATCH_SRCS = fnmatch/fnmatch.c
FNMATCH_OBJS = $(FNMATCH_SRCS:.c=.$(OBJEXT))

WIN32_HEADS = main/e_msoft.h
WIN32_SRCS = win32/mkstemp/mkstemp.c
WIN32_OBJS = $(WIN32_SRCS:.c=.$(OBJEXT))

QUALIFIER_HEADS = dsl/es-lang-c-stdc99.h \
		 dsl/qualifier.h \
		 \
		 $(MIO_HEADS) \
		 \
		 $(NULL)

QUALIFIER_SRCS = dsl/es-lang-c-stdc99.c \
		 dsl/qualifier.c \
		 \
		 $(MIO_SRCS) \
		 \
		 $(NULL)

QUALIFIER_OBJS = $(QUALIFIER_SRCS:.c=.$(OBJEXT))

ALL_OBJS = \
	$(ALL_SRCS:.c=.$(OBJEXT)) \
	$(LIBOBJS)


READTAGS_SRCS  = \
	       read/readtags.c      \
	       read/readtags-cmd.c  \
	       \
	       $(NULL)
READTAGS_HEADS = read/readtags.h
READTAGS_OBJS  = $(READTAGS_SRCS:.c=.$(OBJEXT))

# vim: ts=8
