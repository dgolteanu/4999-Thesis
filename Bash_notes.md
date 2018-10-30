# Bash & Shell scripting
## From bash manual
### Definitions
Control operator: A token that perfroms a control function. It is a newline or one of the following:
* ||: logical OR
* && : logical AND
* ! : logical NOT
* & : run the command in the background
* ; : will run one command after another (regardless of the outcome of the first) i.e. cmd1 ; cmd2
* | : pipe operator passes output of one cmd as input of the next
 * |& is a shorthand to pass the cmd1 output and error to cmd2
* ;; : used to mark the end of a case statement
  * ;& : fall through to the next case
    * ;;& test subsequent cases
* () : used to group commands & launch them in a subshell
* {} : used to group commands
* < : gives input to a command (executes the cmd on the contents of the file)
* <> : same as above but opens the file in read-write
* > : directs the output of a cmd
 * 2> : is the standard error redirect
 * >> : directs output without overwriting, but rather appending

Field: A unit of text that is the result of one of the shell expansions. After expansion, when executing a command, the resulting fields are used as the command name and arguments.

metacharacter: A character that, when unquoted, separates words. A metacharacter is a space, tab, newline, or one of the following characters: | & ; () < >

token: A  sequence  of  characters  considered  a  single  unit  by  the  shell. It  is  either  a word or an operator

word: A sequence of characters treated as a unit by the shell.  Words may not include unquoted metacharacters

## Quoting
Used to disable special characters and prevent parameter expansion. All metacharacters have special meaning & must be quoted

Escape character: \ it prevents the literal value of the next character, except \newline which is treated as a line continuation

Single quote: preserves the literal value. A single quote can't appear between single quotes

Double quotes: preserves the literal value of all characters enclosed except: $ ' \ and ! :when history expansion is enabled. $ and ' retain their special meaning within double quotes. Backslash maintains special meaning when followed by $ ' " \ or newline and is removed from the execution. If the backslash is after a regular character it's unaffected.

## Commands
1. Simple Commands
2. Pipelines: simple commands separated by pipe |
3. List of commands: sequence of multiple pipelines separated by command operators: && and || logicals have equal precedence (left associativity) followed by ; and &
4. Compound commands: shell programming constructs beginning with either a reserved word or control operator & ending with the corresponding. Redirects apply to all commands within the compound.
 * Loops: until command executes as long as the test-cmd is false (exit=1), when the exit becomes 0 for the test-cmd, the consequent-cmds stop evecuting
