#ifndef POKERANGER2_COMMON_HPP
#define POKERANGER2_COMMON_HPP

#ifdef __MWERKS__
#define GLUE(a, b)               a##b
#define GLUE2(a, b)              GLUE(a, b)
#define STATIC_ASSERT(cond, msg) typedef char GLUE2(static_assertion_failed, __LINE__)[(cond) ? 1 : -1]
#else
#define STATIC_ASSERT(...)
#endif

#define STATIC_SIZE_ASSERT(sym, size) STATIC_ASSERT(sizeof(sym) == size, "size of " #sym " must be " #size)

#endif // POKERANGER2_COMMON_HPP
