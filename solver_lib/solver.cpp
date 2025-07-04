#include "solver.h"

#include <stdexcept>
#include <cmath>

void solve(float a, float b, float c, float& x1, float& x2)
{
    float d = (b * b) - (4 * a * c);

    if (d < 0)
    {
        throw std::logic_error("error: discriminant < 0");
    }

    x1 = (-b - sqrtf(d)) / (2 * a);
    x2 = (-b + sqrtf(d)) / (2 * a);
}
