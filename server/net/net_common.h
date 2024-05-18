#pragma once

#include <memory>
#include <thread>
#include <mutex>
#include <deque>
#include <optional>
#include <vector>
#include <iostream>
#include <algorithm>
#include <chrono>
#include <cstdint>
#include "SHA256.h"

#ifdef _WIN32
#define _WIN32_WINNT 0x0A00
#endif

#define SQL_QUERY_SIZE 150

#define AIO_STANDALONE
#include <asio.hpp>
#include <asio/ts/buffer.hpp>
#include <asio/ts/internet.hpp>