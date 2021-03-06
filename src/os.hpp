
#ifndef OS_HPP__
#define OS_HPP__

#include <ham/types.h>

class os
{
public:
    static bool unlink(const char *path);

    static ham_u64_t now(void);

    static const char *hostname(void);

    static const char *architecture(void);
};

#endif /* OS_HPP__ */
