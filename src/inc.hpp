#include <iostream>
#include <filesystem>
#include <fstream>

#include <AES.h>
#include <HTTPRequest.hpp>

#define RAPIDJSON_HAS_STDSTRING 1
#include <rapidjson/document.h>
#include <rapidjson/writer.h>
#include <rapidjson/stringbuffer.h>

#include <string_view>
