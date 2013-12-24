/**
 * @author Robert "Chip" Senkbeil
 * @version 1.0
 */

#import <AppKit/NSEvent.h>
#import <stdio.h>
#import <unistd.h>

/**
 * Executes and returns based on the requested modifier checks.
 *
 * Supported arguments are 's', 'c', 'a', and 'i'.
 *
 * s: Check for shift being pressed
 * c: Check for control being pressed
 * a: Check for alternative/option being pressed
 * i: Handle checks individually, meaning that program returns 0 if any of the
 *    specified checks match, rather than all matching
 *
 * Returns 0 if there is a match on a modifier and 1 if there is no match
 */
int main(int argc, char** argv) {
    int checkShift = 0, checkControl = 0, checkAlternate = 0, checkIndividual;
    /* Check for which modifiers to process */ {
        int c;
        while ((c = getopt(argc, argv, "scai")) != -1) {
            switch (c) {
                case 's': {
                    checkShift = 1;
                    break;
                }

                case 'c': {
                    checkControl = 1;
                    break;
                }

                case 'a': {
                    checkAlternate = 1;
                    break;
                }

                case 'i': {
                    checkIndividual = 1;
                    break;
                }

                default: {
                    fprintf(stderr, "Unknown argument: %s\n", argv[optind]);
                    break;
                }
            }
        }
    }

    // Get modifier flags, removing lower 16 bits unrelated to modifiers
    NSUInteger flags = [NSEvent modifierFlags] & 
                       NSDeviceIndependentModifierFlagsMask;

    return !(checkIndividual ? (
            (checkShift && (flags & NSShiftKeyMask)) ||
            (checkControl && (flags & NSControlKeyMask)) ||
            (checkAlternate && (flags & NSAlternateKeyMask))
        ) : (
            (checkShift ? (flags & NSShiftKeyMask) : 1) &&
            (checkControl ? (flags & NSControlKeyMask) : 1) &&
            (checkAlternate ? (flags & NSAlternateKeyMask) : 1)
        ));
}

