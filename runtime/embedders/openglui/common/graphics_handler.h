// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#ifndef EMBEDDERS_OPENGLUI_COMMON_GRAPHICS_HANDLER_H_
#define EMBEDDERS_OPENGLUI_COMMON_GRAPHICS_HANDLER_H_

#include "embedders/openglui/common/isized.h"
#include "embedders/openglui/common/opengl.h"
#include "embedders/openglui/common/support.h"
#include "embedders/openglui/common/timer.h"

class GraphicsHandler : public ISized {
  public:
    GraphicsHandler();

    const int32_t& height() {
      return height_;
    }

    const int32_t& width() {
      return width_;
    }

    void ApplyOrtho(float maxX, float maxY) const;
    void ApplyRotation(float degrees) const;

    virtual int32_t Start();
    virtual void Stop();

    void SwapBuffers() {
      GLSwapBuffers();
    }

    virtual int32_t Update();

    void SetViewport(int left, int top, int width, int height);

    SkCanvas* CreateCanvas();

    void Flush() {
      // TODO(gram): see if we really need this.
      grcontext->flush();
    }

    virtual ~GraphicsHandler() {
    }

  protected:
    SkAutoGraphics ag;
    GrContext* grcontext;
    int32_t width_, height_;
};

extern GraphicsHandler* graphics;

#endif  // EMBEDDERS_OPENGLUI_COMMON_GRAPHICS_HANDLER_H_

