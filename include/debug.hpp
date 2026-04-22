#ifndef POKERANGER2_DEBUG_HPP
#define POKERANGER2_DEBUG_HPP

#ifdef LOGGING_ENABLED

#define LOG_MESSAGE_MAX_LENGTH 1024

// Prints to the emulator's standard output, with printf formatting
__attribute__((format(printf, 1, 2))) void EmulatorPrintf(const char *text, ...);

// Prints to the emulator's standard output, with printf formatting, but adds a marker prefix and a newline at the end
__attribute__((format(printf, 1, 2))) void EmulatorLog(const char *text, ...);

#else

#define EmulatorPrintf(...)
#define EmulatorLog(...)

#endif // LOGGING_ENABLED

#endif // POKERANGER2_DEBUG_HPP
