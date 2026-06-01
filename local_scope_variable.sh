#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
 local name
 name="Black Hat Bash"
 echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a local variable."
# GLOBAL VARIABLE: Defined outside functions and can be read or modified from anywhere in the entire script.
# LOCAL VARIABLE: Declared with the 'local' keyword inside a function and disappears completely once that function finishes.
# FUNCTION INVOCATION: Triggered simply by writing the function's name on a line, without using parentheses like in other languages.
#Resultado
#[Juan-Pindo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ bash -x local_scope_variable.sh # Runs the script in debug mode to trace how variables change scopes.
#+ PUBLISHER='No Starch Press' # Debug output: initializes a global variable accessible anywhere in the script.
#+ print_name # Debug output: calls the custom function defined in the script.
#+ local name # Debug output: declares a restricted variable that only exists inside this function.
#+ name='Black Hat Bash' # Debug output: assigns a value to the local variable inside the function scope.
#+ echo 'Black Hat Bash by No Starch Press' # Debug output: prepares the print command combining local and global variables.
#Black Hat Bash by No Starch Press # Command output: prints the successfully combined text from the function execution.
#+ echo 'Variable $name will not be printed because it is a local variable.' # Debug output: processes the literal text string containing the variable name.
#Variable $name will not be printed because it is a local variable. # Command output: prints the full text safely because single quotes prevented variable expansion.
